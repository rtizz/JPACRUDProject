# JPACRUDProject

## Description
This custom project utilized a single table within an SQL database to store and query data related to garden crops. Users are able to see existing crops, enter new ones, as well as edit and delete.

## Instructions & Expected Outcomes:
From the home page user has several options. <br>
Within the body of the page the primary menu allows user to search database of all crops, find selective crop, or add crop to database.<br>
Additionally there is a sticky menu bar at the top which allows for user to navigate to the same destinations from anywhere on the site. The search bar was a stretch goal as I was attempting to allow a keyword search to query the database, however need some assistance to troubleshoot.


## Code breakdown:
### Backend
The backend of the program is broken down into two sections.<br>
1. JPAgardening project: Contains initial entities for plant table and is joined to the second via includeFlat in the settings.gradle 
2. Gardening: Holds the Controllers, DOA, DOAImpl, and all JSP/CSS within the src/main/webapp &/ WEB-INF.
This section will succinctly breakdown the Gardening project as it holds the primary logic. <br>

- GardeningController: @Controller, @Autowired, @RequestMapping utilized to act as the mediator between the jsp's and java method. All controllers are routed to through the various X.do paths which correspond to the respective forms. The controllers pass the paramters to the methods which return the required value and is finally routed to the jsp to be displayed.<br>
```java
	@RequestMapping(path="search.do", params="search", method= RequestMethod.GET)
	public String searchPlant(Model model, @RequestParam("search") String keyword) {
		model.addAttribute("keyword", gdao.findByKeywordSearch(keyword));
		return "searchresults";
	}

	//The above routes the search bar from the home page however something was wrong with the logic of the class method (below).

		@Override
	public List<Plant> findByKeywordSearch(String keyword) {
		List<Plant> kwSearch = new ArrayList<>();
//		String kwMod = "%" + keyword + "%";
		String query = "SELECT p FROM Plant p"
				+ " WHERE p.name LIKE " + "%" + ":keyword" + "%" + " OR p.scientificName LIKE " + "%" + ":keyword" + "%" + " OR p.type LIKE :" + "%" + ":keyword" + "%" + " OR" 
				+ " p.pests LIKE " + "%" + ":keyword" + "%" + " OR  p.notes LIKE :" + "%" + ":keyword" + "%";
		kwSearch = em.createQuery(query, Plant.class).getResultList();
		
		return kwSearch;
	}

	//A variety of alterations with the binding was utilized to no success. This is to act as a reminder to staff to potentially reach out should I not get around to asking. 
```
- GardeningDAO: Inteferace holding the method blueprints for the DAO implementation<br>
```java
	Plant findById(int plantId); 
	List<Plant> findAll();
	Plant createPlant(Plant createPlant);
	Plant updatePlant(int id, Plant updatePlant);
	boolean removePlant(int plantId);
	List<Plant> findByKeywordSearch(String keyword);
```
- GardeningDAOImpl: Implements the above interface and provides the logic for the above methods. <br>
- Application properties: Provides the View Resolver for the program as well as database configuration to allow the program to talk with the DB.<br>
- GardeingingApplicationTest: Provides a simple test to verify connectivity to the DB. 

### Frontend
The front end is comprised of various JSPs and CSS documents
- webapp Directory: Contains format.css which is the primary style sheet for all the pages. 
- WEB-INF Directory: Contains remaining JSPs for displaying respective pages based on what is called via the controller.
1. Several of the JSPs are strictly for formatting
```html
<jsp:include page="bootstrapheader.jsp" /> <!--Holds only bootstrap header-->
<link rel="stylesheet" href="../format.css"> <!--Holds all CSS and provides a link for jsp formatting -->
<jsp:include page="nav.jsp" /> <!-- Holds only nav bar configuration-->
<jsp:include page="bootstrapfooter.jsp" /> <!--Holds only bootstrap footer-->
```
***FUTURE NOTE: Consolidate style and formatting files in own subfolder to declutter WEB-INF directory***

## Technologies used
1. Eclipse
2. Java / JPA / JPQL
3. git
4. Spring Boot
5. Gradle
6. MySQL


## Lessons Learned
1. Get better at taking my own advice, I can easily walk someone through troubleshooting steps however when it is my own I completely negate the simplest steps which could save me so much time (i.e. accidentally hardcoding the id #).
2. Do some additional studying on JPQL for multi search criteria and formatting, went down a rabbit hole.
3. Make sure functionality is 100% before attempting style. Got sucked into jsp/css formatting which took me off course.
4. For some reason the database and java werent playing nice with the LocalDate formatting and wasn't able to parse to a string. Work around was to just take in as a string from the form and then convert in java sub logic before passing the object. This required making sure the params were slightly different than getters/setters
```java
	@RequestMapping(path="newplant.do", params= {"plantedAlt", "harvestedAlt"},method= RequestMethod.POST)
	public String createPlant(Plant plant, Model model, @RequestParam("plantedAlt") String planted, @RequestParam("harvestedAlt") String harvested) {
		LocalDate plantedDate = LocalDate.parse(planted);
		LocalDate harvestedDate = LocalDate.parse(harvested);
		plant.setPlanted(plantedDate);
		plant.setHarvested(harvestedDate);
		model.addAttribute("plant", gdao.createPlant(plant));
		return "newplant";
	}
```
5. I need to force myself to do more testing and better understand the relationships. While they SHOULD be the simplest things I easily overlook them as I am focused on the rest of the program
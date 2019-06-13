# RESTaurants API
### Or Wouldst Thou Like to Live Data-liciously
=======================================================
NOTE: You are currently viewing the repo for the API. Please visit the link below for detail on the API.

[Link to Client Repo](https://github.com/agregthomas/restaurant-client)

=======================================================

## Technologies Used
* HTML
  - HTML5 DOM traversal/manipulation methods
  - Semantic elements in index.html
* CSS
  - SASS
  - Bootstrap
* JavaScript
  - jQuery Library
  - GA library (getFormFields!)
  - Handlebars
* Ruby
  - Rails
  - CSV standard library
  - RSpec
* PostgreSQL

=======================================================
## Planning
Planning began with a thorough review of the requirements for building a full-stack application using the prescribed SDK. These requirements were subsequently broken up into high-level categories with mid-level sub-categories:
* **Design**
  * [User Stories](../planning/user-stories.md)
  * [Wireframes](../planning/wireframes.jpg)
  * [Entity Relationship Diagram](../planning/erd.jpg)
* **API Development**
  * Resources and relationships (refer to the [ERD](../planning/erd.jpg) for more details)
  * Use Rails to generate resources, migrate the schema, and model/control/serialize the resources
  * Test using both CURL scripts and automated feature/unit tests
  * Implent user "ownership" of resources back-end authentication before certain commands
* **Front-End Design**
  - UX-minded design (e.g. convenient placement of buttons)
  - Conditional display of features based on ownership of returned resource (e.g. delete and update buttons)
  - Form locking/unlocking on button click

Building the back-end modules was almost entirely facilitated through the magic of Rails and commands like `generate scaffold`. Authentication of resource ownership was implemented using custom controllers and specifying their inheritance on the Resource controllers.

=======================================================
## Remaining Items

### Stretch Goals
* Seed data from personal restaurant list
* Expose all resource fields to user (currently only two)
* Implement Favorites (many-to-many with Restaurants, one-to-many with Users)
* Implement Reviews (many-to-many with Restaurants, one-to-many with Users)
* Search restaurants by query on different fields (use .keyup() listener for dynamic sorting)
* Use lookup tables to govern Category, Neighborhood, etc. and have those values populate dropdown options on the front-end
* Gamify User Profile (e.g. 5 Reviews = Trusted User)

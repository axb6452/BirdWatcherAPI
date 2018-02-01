Functionality

The back end API for the Bird Tracker project, built using Ruby on Rails. Contains the MVC layer performing CRUD operations for the application. Client Repo - https://github.com/axb6452/BirdWatcherClient

Technologies Used:

- Ruby
- Rails Framework

Unsolved Problems:

1) Encountered previous migration issue after deploying master code to heroku. Had to reset heroku database using $ heroku pg:reset DATABASE_URL. Successive migrations on heroku resulted in an accurate schema for the tables in the application.

Planning:

1) Set up Rails API template and Heroku server based on documentation guidelines.
2) Scaffolded sighting layers based on MVP requirements.
3) Created routes to sightings controller crud actions in routes.rb, except new and edit routes.
4) Sightings controller inherits from OpenReadController. OpenReadController skips authentication only for read actions and sets the user to current user for create, update and delete actions, ensuring user ownership for each sightings resource.
5) Changed code in index method of Sightings controller to ensure that JSON data obtained from the sightings tabled is parsed in descending order of id. This ensures that new records created move to the top of the table when displayed in the client application.
6) Changed controller sighting code to use current_user read attr for create, update and delete actions.
7) Changed model sighting code to ensure user ownership.
8) Create sightings table migration contains user_id field as a foreign key contraint that references user table.
9) Ran database migrations on rails, before deploying to heroku, and running heroku database migrations.

Problem solving:

I worked primarily on the MVP. Therefore, I did not encounter too many issues after scaffolding the MVC layers. However, I would reference documentation on the MVC structure when I ran into issues and also use online forums, such as stack overflow to resolve commonplace issues.

Link to ERD:

https://drive.google.com/open?id=1gYBmZfDRFBoBBCje2rJU9zqGxMSAGESQ

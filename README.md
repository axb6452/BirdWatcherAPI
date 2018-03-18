# The Bird Tracker - API

## Application

The back end API of the Bird Tracker project, built using Ruby on Rails. Contains the MVC layer performing CRUD operations on a PostgreSQL database. Client Repo: https://github.com/axb6452/BirdWatcherClient

## Technologies Used:

- Ruby
- Rails Framework
- Heroku cloud hosting application
- PostgreSQL database

## Unsolved Problems:

1) None - Encountered previous migration issue after deploying master code to heroku. Had to reset heroku database using $ heroku pg:reset DATABASE_URL. Successive heroku database migrations were fruitful, resulting in the correct table structure for each resource.

## Planning, Process and Problem Solving:

1) Set up Rails API template and Heroku cloud application based on documentation guidelines.
2) Scaffolded sighting layers based on MVP requirements.
3) Created routes to sightings controller CRUD actions in routes.rb, except new and edit routes.
4) Sightings controller inherits from OpenReadController. OpenReadController skips authentication only for read actions and sets the user to current user for create, update and delete actions, ensuring user ownership for each sightings resource.
5) Changed code in index method of Sightings controller to ensure that JSON data obtained from the sightings table is parsed in descending order of id. This ensures that new records created move to the top of the table when displayed in the client application.
6) Changed controller sighting code to use current_user read attr for create, update and delete actions.
7) Changed model sighting code to ensure user ownership.
8) create_sightings migration contains user_id field as a foreign key constraint that references user table.
9) Ran database migrations on rails, before deploying to heroku, and running heroku database migrations. Restarted heroku application to ensure deployed code is refreshed.

I worked primarily on the MVP. Therefore, I did not encounter too many issues after scaffolding the MVC layers. However, I would reference documentation on the MVC structure when I ran into issues and also use online forums, such as stack overflow to resolve commonplace issues. I posted an issue on the Full Stack project issues queue when I ran into internal server issues during heroku deployment.

### ERD

https://drive.google.com/open?id=1gYBmZfDRFBoBBCje2rJU9zqGxMSAGESQ

### Deployed Paths

Server Deployed Path: https://glacial-woodland-13268.herokuapp.com
Client Deployed Path: https://axb6452.github.io/BirdWatcherClient

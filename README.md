# README

Things you may want to Know:

* Ruby version - `ruby-2.4.1`
 
* System dependencies
 > Suggested to use `postman` chrome extension.
* Database creation
 > Add a `database.yml` file in config folder.
 
* Database initialization
 > run command `rails db:migrate`
 > run command `rails db:seed`

* How to run the test suite
 > TODO: Test suite to be added
* Deployment instructions
 > TODO: Deployment instructions to be added


* Sample Input:
 > {
	"title": "Mr Mark",
	"body": "Inventor of Facebook"
   }

* Sample Output
 > {
    "status": "SUCCESS",
    "message": "Article updated successfully",
    "data": {
        "id": 5,
        "title": "Mr Sadist",
        "body": "article text",
        "created_at": "2017-10-24T07:09:07.000Z",
        "updated_at": "2017-10-24T10:26:08.000Z"
    }
}


* Sample CRUD URLs:

 | Action |URL | Request
 |--------|----|--------
 |Index |localhost:3000/api/v1/articles/ | GET
 |Create |localhost:3000/api/v1/articles/ | POST
 |Show |localhost:3000/api/v1/articles/1 | GET
 |Delete | localhost:3000/api/v1/articles/1 | DELETE
 |Update | localhost:3000/api/v1/articles/1 | PUT 
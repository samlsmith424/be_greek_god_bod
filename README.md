<div align="center">


# GREEK GOD BOD BACK END REPOSITORY


![Screen Shot 2022-05-20 at 7 29 38 AM](https://user-images.githubusercontent.com/87443686/170501795-d4719eb1-d395-4e37-8e42-d8c774bd6f0f.png)


  ## Table of Contents

  ### [Purpose :desktop_computer:](#purpose)
  ### [Calling Endpoints :telephone_receiver:](#calling-endpoints)
  ### [Database :card_file_box:](#database)
  ### [Built With :hammer_and_wrench:](#built-with)




# PURPOSE
  This application is used in conjunction with the [FE respository](https://fe-greek-god-bod.herokuapp.com/) for [Greek God Bod]( https://github.com/GreekGodBod). This repository and [hosted application](https://be-greek-god-bod.herokuapp.com/api/v1/workouts) is the primary server, exposing API endpoints that our FE application calls. Please see below for a list of end points that are exposed plus detailed information about our database schema. 
  
  
     
 # CALLING ENDPOINTS
The follow endpoints can be called individually via URI input in your browser, or individually using [<img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white"/>](https://learning.postman.com/docs/getting-started/introduction/). Our FE application has already established API calls that are triggered automatically via user interaction. 
  
  

 <h2> Retrieve Suggested Workout <h2>
</div>
</div>
<div align="left">
  
  ```ruby  
  GET /api/v1/workouts
  Content-Type: application/json
  Accept: application/json
  ```
   ### Response
  ```json  
{
    "data": {
        "id": 3,
        "name": "killer leg day",
        "user_id": 1,
        "created_at": "2022-05-25T02:18:37.383Z",
        "updated_at": "2022-05-25T02:18:37.383Z",
        "status": "completed",
        "exercises": [
            {
                "id": 11,
                "name": "smith sumo squat",
                "created_at": "2022-05-25T02:18:37.484Z",
                "updated_at": "2022-05-25T02:18:37.484Z",
                "gif": "http://d205bpvrqc9yn1.cloudfront.net/3142.gif",
                "equipment": "smith machine"
            },
            {
                "id": 12,
                "name": "trap bar deadlift",
                "created_at": "2022-05-25T02:18:37.489Z",
                "updated_at": "2022-05-25T02:18:37.489Z",
                "gif": "http://d205bpvrqc9yn1.cloudfront.net/0811.gif",
                "equipment": "trap bar"
            },
            {
                "id": 13,
                "name": "weighted lunge with swing",
                "created_at": "2022-05-25T02:18:37.493Z",
                "updated_at": "2022-05-25T02:18:37.493Z",
                "gif": "http://d205bpvrqc9yn1.cloudfront.net/3644.gif",
                "equipment": "weighted"
            },
            {
                "id": 14,
                "name": "cable assisted inverse leg curl",
                "created_at": "2022-05-25T02:18:37.499Z",
                "updated_at": "2022-05-25T02:18:37.499Z",
                "gif": "http://d205bpvrqc9yn1.cloudfront.net/3235.gif",
                "equipment": "cable"
            },
            {
                "id": 15,
                "name": "lever leg extension",
                "created_at": "2022-05-25T02:18:37.504Z",
                "updated_at": "2022-05-25T02:18:37.504Z",
                "gif": "http://d205bpvrqc9yn1.cloudfront.net/0585.gif",
                "equipment": "leverage machine"
            }
        ]
    }
}
  ```
</div>
<div align="center">
 <h2> Retrieve All Users <h2>
</div>
<div align="left">
 
  ```ruby  
  GET /api/v1/user
  Content-Type: application/json
  Accept: application/json
  ```
   ### Response
  ```json  
[
    {
        "id": 1,
        "name": "user_1",
        "password": *********,
        "created_at": "2022-05-25T22:20:49.361Z",
        "updated_at": "2022-05-25T22:20:49.361Z"
    },
    {
        "id": 2,
        "name": "user_2",
        "password": *********,
        "created_at": "2022-05-25T22:20:49.366Z",
        "updated_at": "2022-05-25T22:20:49.366Z"
    },
    {
        "id": 3,
        "name": "user_3",
        "password": *********,
        "created_at": "2022-05-25T22:20:49.371Z",
        "updated_at": "2022-05-25T22:20:49.371Z"
    },
    {
        "id": 4,
        "name": "user_4",
        "password": *********,
        "created_at": "2022-05-25T22:20:49.376Z",
        "updated_at": "2022-05-25T22:20:49.376Z"
    },
    {
        "id": 5,
        "name": "user_5",
        "password": *********,
        "created_at": "2022-05-25T22:20:49.381Z",
        "updated_at": "2022-05-25T22:20:49.381Z"
    }
]
  ```
</div>
   
<div align="center">
 <h2> Create A Workout <h2>
</div>
<div align="left">
  
  ```ruby  
POST /api/v1/user
Content-Type: application/json
Accept: application/json

{
  "id": 1,
  "name": "Tester",
  "exercises": [
    {
      "bodyPart": "chest",
      "equipment": "assisted",
      "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/1716.gif",
      "id": "1716",
      "name": "assisted seated pectoralis major stretch with stability ball",
      "target": "pectorals",
      "intervals": []
    },
    {
      "bodyPart": "chest",
      "equipment": "leverage-machine",
      "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/1716.gif",
      "id": "0009",
      "name": "assisted chest dip (kneeling)",
      "target": "pectorals",
      "intervals": []
    }
  ]
}
  ```
   ### Response
  ```json  
{
    "data": {
        "id": 15,
        "name": "Tester",
        "user_id": 1,
        "created_at": "2022-05-25T16:51:39.466Z",
        "updated_at": "2022-05-25T16:51:39.466Z",
        "status": "in progress",
        "exercises": [
            {
                "id": 46,
                "name": "assisted seated pectoralis major stretch with stability ball",
                "created_at": "2022-05-25T16:51:39.471Z",
                "updated_at": "2022-05-25T16:51:39.471Z",
                "gif": "http://d205bpvrqc9yn1.cloudfront.net/1716.gif",
                "equipment": "assisted",
                "intervals": []
            },
            {
                "id": 47,
                "name": "assisted chest dip (kneeling)",
                "created_at": "2022-05-25T16:51:39.481Z",
                "updated_at": "2022-05-25T16:51:39.481Z",
                "gif": "http://d205bpvrqc9yn1.cloudfront.net/1716.gif",
                "equipment": "leverage-machine",
                "intervals": []
            }
        ]
    }
}
  ```
</div>
   
<div align="center">
 <h2> Complete A Workout <h2>
</div>
<div align="left">
  
  ```ruby  
PATCH /api/v1/user
Content-Type: application/json
Accept: application/json
{
    "id": 1,
    "name": "Tester",
    "exercises": [
        {
            "equipment": "leverage machine",
            "gif_url": "http://d205bpvrqc9yn1.cloudfront.net/0015.gif",
            "id": 29,
            "intervals": [
                {
                    "workout_exercise_id": 29, 
                    "reps": 12,
                    "weight_lbs": 123
                }
                ],
            "name": "assisted parallel close grip pull-up"
        }
    ]
}
  ```
   ### Response
  ```json  
{
    "message": "Workout Completed"
}
  ```
</div>
   
<div align="center">
 <h2> Post A Message via Action Cable <h2>
</div>
<div align="left">
  
  ```ruby  
POST api/v1/social
Content-Type: application/json
Accept: application/json

body:

{
  "name": "user_1",
  "content": "This is a secret test message"
}

  ```
   ### Response
  ```json  
{
    "id": 21,
    "content": "This is a secret test message",
    "user_id": 1,
    "created_at": "2022-05-25T23:24:45.816Z",
    "updated_at": "2022-05-25T23:24:45.816Z",
    "name": "user_1",
    "social_id": 1
}
  ```
</div>

<div align="center">
  
<div align="center">
 <h2> Retrieve All Messages <h2>
</div>
<div align="left">
  
  ```ruby  
GET api/v1/social
Content-Type: application/json
Accept: application/json
  
  ```
   ### Response
  ```json  
[
    {
        "id": 1,
        "content": "message 1",
        "user_id": 1,
        "created_at": "2022-05-25T22:20:50.405Z",
        "updated_at": "2022-05-25T22:20:50.405Z",
        "name": "user_1",
        "social_id": 1
    },
    {
        "id": 2,
        "content": "message 2",
        "user_id": 2,
        "created_at": "2022-05-25T22:20:50.411Z",
        "updated_at": "2022-05-25T22:20:50.411Z",
        "name": "user_2",
        "social_id": 1
    },
    {
        "id": 3,
        "content": "message 3",
        "user_id": 2,
        "created_at": "2022-05-25T22:20:50.417Z",
        "updated_at": "2022-05-25T22:20:50.417Z",
        "name": "user_2",
        "social_id": 1
    }
 ]
  ```
</div>

<div align="center">


  
# DATABASE

  ![Screen Shot 2022-05-26 at 10 09 25 AM](https://user-images.githubusercontent.com/87443686/170504889-fd491f9d-bfaf-4bd5-bfcb-6447fc141694.png)


  
# BUILT WITH
  ![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)<img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" />  <img src="https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white" /> ![CircleCI](https://img.shields.io/badge/circle%20ci-%23161616.svg?style=for-the-badge&logo=circleci&logoColor=white) <img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=Postman&logoColor=white"/> <img src="https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white" /> <img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white" /> <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white" /> ![Redis](https://img.shields.io/badge/redis-%23DD0031.svg?style=for-the-badge&logo=redis&logoColor=white) ![Heroku](https://img.shields.io/badge/heroku-%23430098.svg?style=for-the-badge&logo=heroku&logoColor=white) <img src="https://img.shields.io/badge/Atom-66595C?style=for-the-badge&logo=Atom&logoColor=white" /> ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
  
#### :gem: Additional Gems :gem:
Capybara |
Fast JSON API |
Faraday |
VCR |
Webmock |
Shoulda Matchers |
SimpleCov |
Figaro | <br><br>


</div>

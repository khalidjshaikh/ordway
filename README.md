# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.1p57

* System dependencies & Configuration Management
Developed on Windows 10 with Ubuntu 18.04.1 LTS.
```
apt install ruby ruby-dev build-essential patch ruby-dev zlib1g-dev liblzma-dev libsqlite3-dev
gem install rails
```

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Run locally instructions
```
git clone https://github.com/khalidjshaikh/ordway.git
cd ordway
bundle
rails s
```
browse to http://localhost:3000

* The question

Please find the code challenge below. Do you believe that you will be able to complete and email to me Tuesday by close of business?  Let me know if you have any questions. 

### Best Available Seat
Write a solution to return the best seat (closest to the front & middle) given a list of open seats. Rows follow alphabetical order with "a" being the first row. Columns follow numerical order from left to right.
```
h = {
  "venue": {
    "layout": {
      "rows": 10,
      "columns": 50
    }
  },
  "seats": {
    "a1": {
      "id": "a1",
      "row": "a",
      "column": 1,
      "status": "AVAILABLE"
    },
    "b5": {
      "id": "b5",
      "row": "b",
      "column": 5,
      "status": "AVAILABLE"
    },
    "h7": {
      "id": "h7",
      "row": "h",
      "column": 7,
      "status": "AVAILABLE"
    }
  }
}
```
Start by a single seat request (not a group of seats together)
Implement an interface (preferable Rails) for testing out the solution
Since we use React. React for the interface would be a great bonus, but it is still optional
The app must be in GitHub with a README.md explaining the app and steps to run it locally

### EXTRA
* How would you modify to accommodate a group of 2 or more seats being requested?
* How could you optimize the process of seat decision?

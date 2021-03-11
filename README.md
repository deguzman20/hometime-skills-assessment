# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# hometime-skills-assessment

# Instruction

* Goto to this url page http://localhost:3000/ and select API payload below and paste the selected API payload in the textarea and press the process button to save to the database

# Service Payload Format 1

```
{
  "reservation":{
    "start_date":"2020-03-12",
    "end_date":"2020-03-16",
    "expected_payout_amount":"3800.00",
    "guest_details":{
      "localized_description":"4 guests",
      "number_of_adults":2,
      "number_of_children":2,
      "number_of_infants":0
    },
    "guest_email":"wayne_woodbridge@bnb.com",
    "guest_first_name":"Wayne",
    "guest_id":1,
    "guest_last_name":"Woodbridge",
    "guest_phone_numbers":[
      "639123456789",
      "639123456789"
    ],
    "listing_security_price_accurate":"500.00",
    "host_currency":"AUD",
    "nights":4,
    "number_of_guests":4,
    "status_type":"accepted",
    "total_paid_amount_accurate":"4500.00"
  }
}```

# Service Payload Format 2

```
{
"start_date": "2020-03-12",
"end_date": "2020-03-16",
"nights": 4,
"guests": 4,
"adults": 2,
"children": 2,
"infants": 0,
"status": "accepted",
"guest": {
"id": 1,
"first_name": "Wayne",
"last_name": "Woodbridge",
"phone": "639123456789",
"email": "wayne_woodbridge@bnb.com"
},
"currency": "AUD",
"payout_price": "3800.00",
"security_price": "500",
"total_price": "4500.00"
}```
.
Feature: verifying booking with adatctin web portal
Scenario Outline: Booking hotels with adactin web portal
Given User is on the adatctin page
When User should login with valid "<username>" and "<password>"
And User should search hotels "<location>","<hotels>","<roomType>","<noOfRooms>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childernsPerRoom>" and click search
And User should book hotel after validation of the requested information "<firstName>","<lastName>","<address>"
      | Creditcardno     | Creditcard Type  | Expiry Month| Expiry Year| Cvv   |     
      | 4686121045211860 | American Express | Jan         |   2022     | 245   |  
      | 4686121045211860 | VISA             | Jan         |   2022     | 245	 |  
      | 4686121045211860 | Master Card      | Jan         |   2022     | 245	 | 
Then Validate whether that user is on "Booking Confirmation" page
Examples: 

|username|password|location|hotels|roomtype|noofrooms|checkInDate|checkOutDate|adultsPerRoom|childernsPerRoom|firstName|lastName|address|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|



Scenario Outline: Booking hotels with adactin web portal
Given User is on the adatctin page
When User should login with valid "<username>" and "<password>"
And User should search hotels "<location>","<hotels>","<roomType>","<noOfRooms>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childernsPerRoom>" and click search
And User should book hotel with empty fields 
Then Validate whether error message displayed as "Please Enter your First Name","Please Enter you Last Name","Please Enter your Address","Please Enter your 16 Digit Credit Card Number","Please Select your Credit Card Type","Please Select your Credit Card Expiry Month","Please Enter your Credit Card CVV Number" page
Examples: 

|username|password|location|hotels|roomType|noOfRooms|checkInDate|checkOutDate|adultsPerRoom|childernsPerRoom|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|

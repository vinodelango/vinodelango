Feature: Validating SearchHotel page
Scenario Outline: Navigation to select hotel
Given User is on the adatctin page
When User should login with valid "<username>" and "<password>"
And User should search hotels with "<location>","<hotels>","<roomtype>","<noOfRrooms>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childernsPerRoom>"
Then Validate that user is on the "Select Hotel" page

Examples: 
|username|password|location|hotels|roomType|noOfRrooms|checkInDate|checkOutDate|adultsPerRoom|childernsPerRoom|
|vinodelango|kingmaker|Melbourne|HotelCreek|1 - One|08/12/2021|09/12/2021|1 - One|1 - One|

Scenario Outline: Validating Search hotel page with mandatory fields
Given User is on the adatctin page
When User should login with valid "<username>" and "<password>"
And User should search hotels with mandatory feilds "<location>","<noOfRooms>","<checkInDate>","<checkOutDate>","<adultsPerRoom>"and click search
Then Validate that user is on the "Select Hotel"page
Examples: 

|username|password|location|noOfRooms|checkInDate|checkOutDate|adultsPerRoom|
|vinodelango|kingmaker|Melbourne|HotelCreek|1 - One|08/12/2021|09/12/2021|1 - One|1 - One|

Scenario Outline: Verifying Date fields 
Given User is on the adatctin page
When User should login with valid "<username>" and "<password>"
And User should verify the dates with invalid booking dates "<checkInDate>","<checkOutDate>" 
Then Validate that error message displayed "Check-In Date shall be before than Check-Out Date","Check-Out Date shall be after than Check-In Date"
Examples: 

|username|password|checkInDate|checkOutDate|
|vinodelango|kingmaker|08/12/2021|09/12/2021|

Scenario Outline: Verifying the Search Hotel with empty fields 
Given User is on the adatctin page
When User should login with valid "<username>" and "<password>"
And User should validate the search with empty fields
Then Validate that error message displayed "Please Select a Location"
Examples: 

|username|password|
|vinodelango|kingmaker|
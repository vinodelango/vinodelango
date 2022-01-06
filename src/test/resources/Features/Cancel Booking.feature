Feature: verifying cancel booking with adatctin web portal

  Scenario Outline: Cancel Booking with the generated orderid
    Given User is on the adatctin page
    When User should login with valid "<username>" and "<password>"
    And User should search hotels "<location>","<hotels>","<roomType>","<noOfRooms>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childernsPerRoom>" and click search
    And User should book hotel after validation of the requested information "<firstName>","<lastName>","<address>"
      | Creditcardno     | Creditcard Type  | Expiry Month| Expiry Year| Cvv   |    
      | 4686121045211860 | American Express | Jan         |   2022     | 245   |  
      | 4686121045211860 | VISA             | Jan         |   2022     | 245	 |  
      | 4686121045211860 | Master Card      | Jan         |   2022     | 245	 | 
    And Validate whether booking is confirmed with the "orderid"
    Then User should cancel booking with the "<orderid>"

    Examples: 
      | username    | password  | location  | hotels         | roomType | noOfRooms | checkInDate | checkOutDate | adultsPerRoom | childernsPerRoom | firstName | lastName  | address     | creditCardno     | creditCardType | expiryMonth | expiryYear | cvv | orderid    |
      | vinodelango | kingmaker | Melbourne | Hotel Sunshine | Double   | 1 - One   | 05/12/2021  | 06/12/2021   | 1 - One       | 1 - One          | vinod     | elangovan | madambakkam | 4616800006561245 | VISA           | February    |       2022 | 245 | 8K88L17J53 |

  Scenario Outline: Cancel booking with the existing orderid
    Given User is on the adatctin page
    When User should login with valid "<username>" and "<password>"
    And User should search the "<orderid>" in Booked Itinerary
    Then User should cancel booking and should display confirmation message  "The booking has been cancelled."

    Examples: 
      | username    | password  | orderid    |
      | vinodelango | kingmaker | 8K88L17J53 |

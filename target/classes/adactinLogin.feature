

Feature: verifying adactin details
Scenario Outline: Booking hotels with adactin web portal
Given user is on the adatctin page
When user should login with valid "<username>" and "<password>"
And user should search hotels "<location>","<hotels>","<roomtype>","<noofrooms>","<checkInDate>","<checkOutDate>","<adultsPerRoom>","<childernsPerRoom>" and click search
And user should select the hotel and click continue
And user shoud enter the "<firstName>","<lastName>","<address>","<creditCardno>","<creditCardType>","<expiryMonth>""<expiryYear>","<cvv>"and should click booknow 
Then user should print the generated orderid

Examples: 

|username|password|location|hotels|roomtype|noofrooms|checkInDate|checkOutDate|adultsPerRoom|childernsPerRoom|firstName|lastName|address|creditCardno|creditCardType|expiryMonth|expiryYear|cvv|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
|vinodelango|kingmaker|Melbourne|Hotel Sunshine|Double|1 - One|05/12/2021|06/12/2021|1 - One|1 - One|vinod|elangovan|madambakkam|4616800006561245|VISA|February|2022|245|
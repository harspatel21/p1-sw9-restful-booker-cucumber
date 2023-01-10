Feature: Testing different request on the restful booker app

  Scenario: As a user I am creating authorization token
    Given RestfulBooker application is running
    When I enter username "admin" and password "password123"
    Then I get authorization token

  Scenario Outline: As a user I am creating booking and verify booking is made
    When When I create a new booking by providing the information firstName "<firstName>" lastName "<lastName>" totalprice "<totalPrice>" depositpaid "<depositPaid>" checkin "<checkIn>"checkout "<checkOut>"additionalneeds "<additionalNeeds>"
    Then I verify that Booking with bookingId is created
    Examples:
      | firstName | lastName | totalPrice | depositPaid | checkIn    | checkOut   | additionalNeeds |
      | Hari      | Aum      | 199        | 99          | 2022-01-16 | 2022-03-13 | Breakfast       |
      | Radha     | Krishana | 299        | 99          | 2022-03-10 | 2022-06-19 | Breakfast       |
      | Krishana  | Balram   | 99         | 99          | 2022-04-25 | 2022-06-28 | Dinner          |
      | Jalaram   | Bapa     | 399        | 99          | 2022-03-22 | 2022-03-25 | Dinner          |
      | Hanuman   | ShreeRam | 499        | 99          | 2022-05-14 | 2022-04-07 | Mainmeal        |

  Scenario Outline:As a user I update a booking with firstName
    When I update a booking with firstName "<firstName>" lastName "<lastName>" totalPrice "<totalPrice>" depositPaid "<depositPaid>" checkIn "<checkIn>" checkOut "<checkOut>" additionalNeeds "<additionalNeeds>"
    Then I verify the response has "<code>" status code
    Examples:

      | firstName | lastName | totalPrice | depositPaid | checkIn    | checkOut   | additionalNeeds | code |
      | Hanuman1  | ShreeRam | 499        | 99          | 2022-05-14 | 2022-04-07 | Mainmeal        | 200  |

  Scenario Outline: As a user I updated partial booking with lastName
    When I update partial booking with firstName "<firstName>" lastName "<lastName>" totalPrice "<totalPrice>" depositPaid "<depositPaid>" checkIn "<checkIn>" checkOut "<checkOut>" additionalNeeds "<additionalNeeds>"
    Then I verify the response has "<code>" status code
    Examples:

      | firstName | lastName | totalPrice | depositPaid | checkIn    | checkOut   | additionalNeeds | code |
      | Hanuman   | ShreeRam1 | 499        | 99          | 2022-05-14 | 2022-04-07 | Mainmeal        | 200  |


  Scenario Outline: As a user I delete the booking
    When I delete the booking with bookingId
    Then I verify the response has "<code>" status code
    Examples:

      | firstName | lastName | totalPrice | depositPaid | checkIn    | checkOut   | additionalNeeds | code |
      | Shankar   | Parvati  | 999        | 899         | 2022-05-14 | 2022-04-07 | Mainmeal        | 200  |





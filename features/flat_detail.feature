Feature: guest looks flat detail
  In order to see flat in detail
  As a guest
  I want to click link 'show' opposite flat item

  Background:
    Given '30' flat items

  Scenario: I look through flat detail
    Given I visit main page
    When I click link 'show'
    Then I see flat detail information
    When I click link 'back'
    Then I see previous page

Feature: guest asks to book the free flat
  In order to be sure, that the flat will be free by my visit
  As a guest
  I want to ask and book it

  Scenario: I select a free flat and ask to book it
    Given I visit main page
    When I show a free flat
    And I click button 'Open booking form'
    And I confirm my choice
    Then there will be created news message

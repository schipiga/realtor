Feature: Guest looks flats list
  In order to be sure, that flats list works
  As a guest
  I want to see and paginate flats

  Scenario: Guest paginates flats
    Given flats list
    When I go to main page
    Then I see flats list
    When I go to last page
    Then I see last list item
    When I go to first page
    Then I see first list item

Feature: Manage people
  In order to track people I want to communicate with
  As a user
  I want to create, retrieve, update and destroy people records

  Scenario: Register new person
    Given I am on the new person page
    When I fill in "Firstname" with "firstname 1"
    And I fill in "Familyname" with "familyname 1"
    And I fill in "Gender" with "gender 1"
    And I select "2017" from "person_dateofbirth_1i"
    And I select "June" from "person_dateofbirth_2i"
    And I select "5" from "person_dateofbirth_3i"
    And I press "Create"
    Then I should see "firstname 1"
    And I should see "familyname 1"
    And I should see "gender 1"
    And I should see "2017-06-05"

Feature: Manage people
  In order to track people I want to communicate with
  As a user
  I want to create, retrieve, update and destroy people records

  Scenario: Register new person
    Given I am on the new person page
    When I fill in "Firstname" with "firstname 1"
    And I fill in "Familyname" with "familyname 1"
    And I fill in "Gender" with "gender 1"
    And I select "2008" from "person_dateofbirth_1i"
    And I select "June" from "person_dateofbirth_2i"
    And I select "5" from "person_dateofbirth_3i"
    And I press "Create"
    Then I should see "firstname 1"
    And I should see "familyname 1"
    And I should see "gender 1"
    And I should see "2008-06-05"

  Scenario: Delete person
    Given the following people:
      |firstname|familyname|gender|dateofbirth|
      |firstname 1|familyname 1|gender 1|1974-01-01|
      |firstname 2|familyname 2|gender 2|1967-04-03|
      |firstname 3|familyname 3|gender 3|1955-06-12|
      |firstname 4|familyname 4|gender 4|1991-05-31|
    When I delete the 3rd person
    Then I should see the following people:
      |Firstname|Familyname|Gender|Dateofbirth|
      |firstname 1|familyname 1|gender 1|1974-01-01|
      |firstname 2|familyname 2|gender 2|1967-04-03|
      |firstname 4|familyname 4|gender 4|1991-05-31|

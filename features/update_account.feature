Feature Tutee can update an account information

  As a current user
  So that I can ensure my profile is up to date
  I want to edit my account information

Background: User has an acocunt
  Given I am on the login page
  And I fill in "username" with "bobburgers@berkeley.edu"
  Then I should be on the user page for "bobburgers@berkeley.edu"
  Then press "Edit Info"
  Then I should be on the update page for "bobburgers@berkeley.edu"

Scenario: update first name successfully
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "First Name" to "Bobby"
  And I press "Save changes"
  Then I should be on the user page for "bobburgers@berkeley.edu"
  And I should see "Information was successfully updated."

Scenario: update last name successfully
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Last Name" to "Hotdogs"
  And I press "Save changes"
  Then I should be on the user page for "bobburgers@berkeley.edu"
  And I should see "Information was successfully updated."

Scenario: update birthdate successfully
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Birthdate" to "1993-06-19"
  And I press "Save changes"
  Then I should be on the user page for "bobburgers@berkeley.edu"
  And I should see "Information was successfully updated."

Scenario: update email successfully
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Email" to "bobhotdogs@berkeley.edu"
  And I press "Save changes"
  Then I should be on the user page for "bobhotdogs@berkeley.edu"
  And I should see "Information was successfully updated."

Scenario: update email successfully
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Email" to "bobburgers@berkeley.edu"
  And I press "Save changes"
  Then I should be on the user page for "bobburgers@berkeley.edu"
  And I should see "Information was successfully updated."

Scenario: update sid successfully
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Student SID" to "987654321"
  And I press "Save changes"
  Then I should be on the user page for "bobburgers@berkeley.edu"
  And I should see "Information was successfully updated."

Scenario: Try to update account with missing first name field
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "First Name" to ""
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "First Name or Last Name left blank."

Scenario: Try to update account with missing last name field
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Last Name" to ""
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "First Name or Last Name left blank."

Scenario: Try to update account with account with digits in first name field
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "First Name" to "Bob123"
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "No digits in first or last name."

Scenario: Try to update account with account with digits in last name field
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Last Name" to "Burgers123"
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "No digits in first or last name."

Scenario: Try to update account with missing birthdate field
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Birthdate" to ""
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "Invalid date or date format, or empty date field."

Scenario: Try to update account with invalid birthdate format
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Birthdate" to "06-19-1992"
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "Invalid date or date format, or empty date field."

Scenario: Try to update account with future birthdate
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Birthdate" to "3030-06-19"
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "Invalid date or date format, or empty date field."


Scenario: Try to update account with missing sid field
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Student SID" to ""
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "SID field cannot be left empty"

Scenario: Try to update account with non berkeley email
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Email" to "bobburgers@gmail.com"
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "Invalid email or missing email, Note: email must with @berkeley.edu."

Scenario: Try to update account with empty email field
  Given I am on the update page for "bobburgers@berkeley.edu"
  And I change "Email" to ""
  And I press "Save changes"
  Then I should be on the update page for "bobburgers@berkeley.edu"
  Then I should see "Invalid email or missing email, Note: email must with @berkeley.edu."

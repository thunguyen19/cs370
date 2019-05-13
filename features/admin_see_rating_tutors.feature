Feature: Update Semester
  As a admin
  I want to update the semester
  So that the semester is updated on every semester

  Background: There exists these info
    Given the following admins exist:
      | id | password            | current_semester | statistics_semester |
      | 1  | secureAdminPassword | Spring2019       | Spring2019          |

    Given the following tutees exist:
      | sid       | first_name  | last_name    | email               | privilege | birthdate  | password  | password_confirmation | confirmed_at        |
      | 123456709 | thu         | nguyen       | thuu.ju@berkeley.edu | No        | 1992-01-01 | topsecret | topsecret             | 2019-05-07 05:07:48 |

    Given the following courses exist:
      | course_num | name  | semester |
      | 1          | CS61A | Sp2019   |

    Given the following requests exist:
      | tutee_id | course_id | subject   |
      | 1        | 1         | recursion |

    Given the following tutors exist:
      | type_of_tutor | grade_level | email              | first_name | last_name |
      | 20 hour TA    | Senior      | oskii@berkeley.edu | ana        | chang     |
      | 20 hour TA    | Junior      | alexa@berkeley.edu | alexa      | chen      |

    Given the following evaluations exist:
      | status     | took_place |
      | Complete   | true       |

    Given "thu" has a meeting with tutor "ana" meeting id "1" request with tutuee id "1" course name "CS61A" and evaluation status "Complete" knowledge "5" helpful "5" clarity "5"

    Given "thu" has a meeting with tutor "alexa" meeting id "2" request with tutuee id "1" course name "CS61A" and evaluation status "Complete" knowledge "5" helpful "5" clarity "5"

    Given "thu" has a meeting with tutor "alexa" meeting id "3" request with tutuee id "1" course name "CS61A" and evaluation status "Complete" knowledge "4" helpful "4" clarity "4"

    And I am on the admin landing page
    When I fill in "password" with "secureAdminPassword"
    And press "Login"
    Then I should be on the admin home page

  Scenario: Admin can see rating tutor
    When I click on "Tutor Ratings" link
    Then I should be on the rating tutors page
    And I can see the tutor name "ana"
    And I can see the composition score of "5.0"

  Scenario: Tutor with multiple evaluations has average score
    When I click on "Tutor Ratings" link
    Then I should be on the rating tutors page
    And I can see the tutor name "alexa"
    And I can see the composition score of "4.5"


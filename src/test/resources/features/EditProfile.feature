Feature: The user should be able to edit profile

  Background:
    Given the user is on the login page


    Scenario: edit profile
      When the user logs in using "<email>" and "<password>"
      And the user navigates to "<add info module>"
      And the user select "status" "Instructor"
      And the user add "company" "<company info>"
      And the user add "website" "<website info>"
      And the user add "location" "<location info>"
      And the user add "skills" "<skills info>"
      And the user add "githubusername" "<github info>"
      And the user add "bio" "<bio info>"
      Then the user enters submit button

  @edit
      Scenario Outline: edit profile with scenario outline
        When the user logs in using "<email>" and "<password>"
        And the user navigates to "<add info module>"
        And the user select "status" "Instructor"
        And the user add "company" "<company info>"
        And the user add "website" "<website info>"
        And the user add "location" "<location info>"
        And the user add "skills" "<skills info>"
        And the user add "githubusername" "<github info>"
        And the user add "bio" "<bio info>"
        Then the user enters submit button
        Examples:
        |email|password|add info module|status|company info|website info|location info|skills info|github info|bio info|
        |eurotech@gmail.com  |Test12345!| Edit Profile| Instructor | euroTech Studyo| https://www.eurotechstudy.com/| Germany| Java,Selenium,Cucumber,Junit,Github| euroTech-sdet| SDET programme|
        |zehra@gmail.com    |12345#| Edit Profile| Junior Developer | euroTech Studyo| https://www.eurotechstudy.com/| London| Java,Selenium,Cucumber,testNG,Github, Jira| euroTech-sdet| Developer programme|

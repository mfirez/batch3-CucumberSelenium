

Feature: Teacher should be able to Navigate to Menus


  Scenario: Navigating to Developers menu
    Given the user is on the login page
    And   the user enters teacher credentials
    And    the user should be able to login
    When   the user navigates to developers menu
    Then    the user should be able to   see the header of the menu


  @AllPost
  Scenario: Navigating to All Posts menu
    Given the user is on the login page
    And   the user enters teacher credentials
    And  the user first sees the text of welcome
    When  the user navigates developers menu
    Then   the user should be able to   see the header of the menu

  @Dashboard @db
  Scenario: Navigating to My Account menu
    Given the user is on the login page
    And  the user enters teacher credentials
    And  the user first sees the text of welcome
    When  the user navigates to My Account menu
    Then  the user should be able to   see the header of the menu
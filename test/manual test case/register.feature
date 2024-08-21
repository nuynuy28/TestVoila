Feature: Account registration
  In order to open voila web
  As a customer lead
  I want to register for an account


Scenario: Create a new account
    Given I am a customer wants to open a new account
    When I choose menu registration
    And I filling in my account information with the following details:      
      | email           | nurulsepta@gmail.com    |      
      | password        | Nuynuy280987            |     
    And I click button Register Account
    And I will see verification confirmation "Enter the verification code we sent to your registered email."
    And I input verification code "782398"
    And I will direct to page onboarding
    And I fill all information identity details as followings:
      | title            | Mrs./Ms.      |      
      | firstname        | Nurul         | 
      | lastname         | Septariani    |  
      | dateofbirth      | 28/09/1987    | 
    And I click button confirmation
    And I click button Save
    Then my account should be created 
    And I am automatically login

    
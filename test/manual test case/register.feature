Feature: Account registration
  In order to open voila web
  As a customer lead
  I want to register for an account


Scenario: Create a new account
    Given I am a customer wants to open a new account
    When I choose menu registration
    And I input email "nurulsepta@gmail.com"    
    And I input password "Nuynuy280987"       
    And I click button Register Account
    And I will see verification confirmation "Enter the verification code we sent to your registered email."
    And I input verification code "782398"
    And I will direct to page onboarding
    And I fill all information identity details as followings:
    And I choose "Mrs./Ms."
    And I input firstname "Nurul"
    And I input lastname "Septariani"
    And I choose "28/09/1987"     
    And I click button confirmation
    And I click button Save
    Then my account should be created 
    And I am automatically login


Scenario: Verifying email with invalid value
    Given I am a customer want to access menu registration
    When  I input invalid email "nurul@gmailcom"
    Then I should see message error 'Please enter a valid email format or phone number.' in the below of field 'email'


   

    
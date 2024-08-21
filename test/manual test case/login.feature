Feature: Account Login
  In order to go to Voila Web
  As a customer lead
  I want to login with registered account


Scenario: Login with registered account
  Given I am a registered customer who wants to login
  When I click button Sign In on the Front Page
  And I input email "nurulsepta@gmail.com"  
  And I input password "Nuynuy280987"
  And I click button Sign In
  Then I will successfully login and direct to Main Page

Scenario: Login with unregistered account
  Given I am an unregistered customer trying to login
  When I click button Sign In on the Front Page
  And I input email "nurul.septa@gmail.com"
  And I click button Sign In
  Then I will direct to page registration


Scenario: Input wrong password
  Given I am a registered customer who wants to login
  When I click button Sign In on the Front Page
  And I input email "nurulsepta@gmail.com"  
  And I input password "nuynuy280988"
  And I click button Sign In
  Then I should see pop up with text 'Your account ID or password is incorrect. Please try again.'



Scenario: Login with invalid email
  Given I am a registered customer who wants to login
  When I click button Sign In on the Front Page
  And I input email "nurulseptagmail.com"
  And I click button Sign In  
  Then I should see pop up with text 'Your account ID or password is incorrect. Please try again.'


Scenario: Login with empty value email
  Given I am a registered customer who wants to login
  When I click button Sign In on the Front Page
  And I empty email ""
  And I click button Sign In  
  Then I should see error message "Please enter email or phone number."


Scenario: Login with empty value password
  Given I am a registered customer who wants to login
  When I click button Sign In on the Front Page
  And I input email "nurulsepta@gmail.com"  
  And I empty password ""
  And I click button Sign In
  Then I should see error message "Please enter your password."


Scenario: Access link Forgot Password
    Given I am customer that already on page login
    When I click forgot password?
    Then I should see new page with text 'Enter your registered email or phone number to reset your password' displayed
    And I should see field 'email' on page Forgot Password
    

Scenario: User forgot Password
   Given I am customer that already on page login
   When I click forgot password?
   And I should see new page with text 'Enter your registered email or phone number to reset your password' displayed
   And I input email "nurulsepta@gmail.com"
   And I see button Forgot Password is enable
   And I click button Forgot Password
   Then I see new pagw with confirmation text "Enter the verification code we sent to your registered email."
   And I input verification code "787009"
   Then I will direct to Reset Password Page

Scenario: User input incorrect verification code
   Given I am customer that already on page login
   When I click forgot password?
   And I should see new page with text 'Enter your registered email or phone number to reset your password' displayed
   And I input email "nurulsepta@gmail.com"
   And I see button Forgot Password is enable
   And I click button Forgot Password
   And I see new pagw with confirmation text "Enter the verification code we sent to your registered email."
   And I input verification code "787009"
   Then i see error message "Incorrect code"



Scenario: User reset password with empty value new password
   Given I am customer that already on Reset Password Page
   When I see field 'newpassword' on page reset password
   And I empty new password value ""
   Then I see message error "Please enter your new password."


Scenario: Verify password doesn't match
   Given I am customer that already on Reset Password Page
   When I see field 'newpassword' on page reset password
   And I input new password "Test1234"
   And I input Retype New Pssword "Yest1234"
   Then I see message "Password does not match."

Scenario: verify retype new password is empty
   Given I am customer that already on Reset Password Page
   When I see field 'newpassword' on page reset password
   And I input new password "Test1234"
   And I empty retype new password ""
   Then I see message "Please retype your new password."


Scenario: Successfully reset password
   Given I am customer that already on Reset Password Page
   When I see field 'newpassword' on page reset password
   And I input new password "Test1234"
   And I input Retype New Pssword "Test1234"
   And I click button Reset Password
   And I will see  messsage successfully reset password
   Then I om page Login





     




  

  
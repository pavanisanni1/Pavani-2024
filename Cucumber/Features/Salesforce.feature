Feature: Salesforce Application 

@TC-login
Scenario: User should login with valid username and password
Given user launchs the application in "Chrome"
Given user is on "LoginPage"
#Then User waits for Element "Username"
Then user enters into the textbox "Username" "pavani@lta.com"
Then user enters into the textbox "Password" "password123"
Then Click on the button "Login"

@TC1
Scenario: Clear Password field
Given user launchs the application in "Chrome"
Given user is on "LoginPage"
Then user enters into the textbox "Username" "pavani@lta.com"
Then user enters into the textbox "Password" ""
Then Click on the button "Login"

@TC2
#execute @TC-login or @TC2
Scenario: User is in homepage
Given user is on "HomePage"
#Then User waits for Element "HomeTab"
Then Click on the button "HomeTab"

@TC3
Scenario: Username should be remembered
Given user launchs the application in "Chrome"
Given user is on "LoginPage"
Then user enters into the textbox "Username" "pavani@lta.com"
Then user enters into the textbox "Password" "password123"
Then user checks "rememberme" checkbox
Then Click on the button "Login"
Given user is on "HomePage"
Then Click on the link "Nav-Label" 
Then Click on the link "Logout"

@TC4A
Scenario: Check forgot password checkbox
Given user launchs the application in "Chrome"
Given user is on "LoginPage"
Then Click on the link "forgotpassword"

@TC4B
Scenario: Wrong password
Given user launchs the application in "Chrome"
Given user is on "LoginPage"
Then user enters into the textbox "Username" "pavani@lta.com"
Then user enters into the textbox "Password" "123"
Then Click on the button "Login"

@TC5
Scenario: User menu dropdown
Given user launchs the application in "Chrome"
Given user is on "LoginPage"
Then user enters into the textbox "Username" "pavani@lta.com"
Then user enters into the textbox "Password" "password123"
Then Click on the button "Login"
Given user is on "HomePage"
Then Click on the link "Nav-Label" 

@TC6
Scenario: Edit contact information
#Execute @TC5 or @TC6
Given user is on "HomePage"
Then Click on the link "MyProfile"
Then Click on the EditProfileLink "EditProfile"
Then Switch to frame with_Title "iframeEditContact"
Then Click on the button "About"
Then user enters into the textbox "Lastname" "Changed-2"
Then Click on the button "SaveAll"
Then close frame return to the main window

Then Click on the link "Post"
Then User waits for Element "iframePostBox"
Then Switch to frame with_Title "iframePostBox"
Then user enters into the textbox "PostBox" "testing testing in cucumber"
Then close frame return to the main window
Then Click on the button "Share"

Then Click on the link "File" 
Then User waits for Element "Upload a file from your computer"
Then Click on the button "Upload a file from your computer"
########Then pass the file address to the "choose file" button#######
Then user enters into the textbox "choose file" "c:\test2.txt"
Then Click on the button "Share"

Then Click on the link "hoverPhoto" to update
Then User waits for Element "updatePhoto"
####Then Click on the link "update" to update the photo######
Then Click on the link "updatePhoto" to update
Then User waits for Element "iframePhotoupload"
Then Switch to frame with_Title "iframePhotoupload"
####Then pass the photo address to the "choose file" button#######
Then user enters into the textbox "choose photo" "c:\cat.jpg"
Then Click on the button "photoSave"
#Then Click on the button "cropPhotoSave"

@TC7
Scenario: My Settings
#Execute @TC5 or @TC7
Given user is on "HomePage"
Then Click on the link "My Settings"
Then User waits for Element "Personal"
Then Click on the link "Personal"
Then Click on the link "LoginHistory"
Then Click on the link "DisplayLayout"
Then Click on the link "CustomizeTabs"
###select from drop down#####
Then Click on the link "CustomApp"
Then Select item "CustomApp" "Salesforce Chatter"
Then Select item "AvailableTabs" "Reports"
Then Click on the button "Add"
Then Click on the link "Email"
Then Click on the link "myEmailSettings"
Then user enters into the textbox "Sendername" "pavaniabc"
Then user enters into the textbox "SenderEmail" "pavani@lta.com"
###click on radio button###
Then Click on the button "Bcc"
Then Click on the button "SaveEmail"
Then Accept Alert
Then Click on the link "CalendarReminders"
Then Click on the link "ActivityReminders"
Then Click on the button "TestReminder"

@TC8
Scenario: Developer Console
#Execute @TC5 or @TC8
Given user is on "HomePage"
Then Click on the link "Developer Console"
Then Close the window

@TC9
Scenario: Logout
#Execute @TC5 or @TC9
Given user is on "HomePage"
Then Click on the link "Logout"

@TC10
Scenario: Accounts Page
#Execute @TC5 or @TC10
Given user is on "AccountPage" 
Then Click on the link "AccountsTab"
Then Click on the link "NewAccount"
Then user enters into the textbox "NewAccName" "Account_changed"
Then Select item "techType" "Technology Partner"
Then Select item "priority" "High"
Then Click on the button "AccSave"

@TC11
#Execute @TC5 or @TC11
Scenario: New View
Given user is on "AccountPage" 
Then Click on the link "AccountsTab"
Then Click on the link "CreateNewView"
Then user enters into the textbox "ViewName" "NewViewName1"
Then user enters into the textbox "UniqueViewName" "New_View_Name1"
Then Click on the button "ViewSave"

@TC12
#Execute @TC5 or @TC12
Scenario: Edit View
Given user is on "AccountPage" 
Then Click on the link "AccountsTab"
Then Select item "ViewEdit" "NewViewName1"
Then Click on the button "EditView"
Then user enters into the textbox "ViewChange" "New_View_Change"
Then Select item "Fields" "Account Name"
Then Select item "Operators" "contains"
Then user enters into the textbox "Value" "a"
Then Click on the link "AvailableFields"
Then Click on the link "AddField"
Then Click on the button "SaveBtn"





Feature: As a Administrator/Supervisor, I want to access widgets in a Consolidated Surveillance View PR-2993


Scenario: I open a web browser and navigate to http://localhost:7003/ where I can view Consolidated Surveillance View widgets
Given I navigate to the http://localhost:7003/
Then I should see "Perceptive Reach"
When I put in "email" field as "TESTER175"
And I put in "password" field as "FeAn#011819"
And I click on check box "checky"
And I click on "Login" button
And I click on "Surveillance View"
Then I should see "VISN Roster" widget
And I should see "VISN"
And I should see "Network Name"
And I should see "Region Served"
And I should see "Patients" 
And I should see "At-Risk Persons" 
When I select VISN Roster "VA New England Health Care System" veteran row in the widget
Then I should see "VISN: 1 VAMC"
When I Select VAMC facility "(V01) (689) VA Connecticut HCS, CT" in facility roster widget
Then I should see "VISN: 1 VAMC: 689"
And I should see "Age Groups Data" widget
And I should see "Gender Distribution Data" widget
And I should see "Military Branch Data" widget
And I should see "Outreach Status Data" widget
And I should see "Top Mid Risk Data" widget

And I click on "Logout" button
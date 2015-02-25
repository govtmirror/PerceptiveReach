Feature: As a Dashboard user, I want to see a Veteran's emergency contact information so that I can contact them to provide outreach and intervention services. 
@PR-1268

Scenario: I open a web browser and use http://localhost:7003/ to delete/close the Emergency Contact Information widget.

  Given I am on http://localhost:7003/
  When I click on Individual view 
  Then I should see the widget with list of Veterans
  When I click on a Veteran's name " Jon Doe"
  Then I see Veteran emergency contact information "Emergency Contact Information"
  When I click on close on the "Emergency Contact Information" widget
  	And I click on save changes
  Then I should not see the widget "Emergency Contact Information" widget
  
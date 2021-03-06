Feature: As a SPC I want customize my widget page
	
	@EditWidgetPR-1165
    Scenario: I open a web browser and use http://localhost:7003/ to see customize National View Widgets page to edit a widget's title

	Given I am on http://localhost:7003/
	When I click on individual view of "Individual View"
	And I click on edit of "Widget 1" 
	And I change the title on pop-up to "Example"
	And I click on "OK" button
	And I click on save button
	Then I should see the widget 1 title change to "Example"
	
		
			
	@DeleteWidgetPR-1165
	
	Scenario: I open a web browser and use http://localhost:7003/ to see customize Widgets page to delete a widget from widgets page
	
	Given I am on http://localhost:7003/
	When I click on delete of widget 1 
	And I click on save changes
	Then I should not see the widget "Widget 1"
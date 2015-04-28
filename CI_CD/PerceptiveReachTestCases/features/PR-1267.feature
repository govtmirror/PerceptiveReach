Feature: As a Dashboard user, I want to see a Veteran's contact information so that I can contact them to provide outreach and intervention services PR-1267 1.1.22

@Contact_information_PR_1267
Scenario: I open a web browser and use http://localhost:7003/ to see the Veteran's contact information
  Given I navigate to the http://localhost:7003/
  When I click on "Individual View" 
  Then I should see "Patient Roster by VAMC" widget
  And I should see "Veteran_109258, Vet109258 undefined"
 
  
  @Detail_information_PR_1267
  Scenario: I open a web browser and use http://localhost:7003/ to see the Veteran's contact information of Name, Last 4 of SSN, Phone, Alternate Phone, Address, City, State and Zip code  
  
  Given I navigate to the http://localhost:7003/
  When I click on "Individual View"
  Then I should see "Patient Roster by VAMC" widget
  Then I should see "Patient Contact" widget
  And I should see "Last 4 of SSN"
  And I should see "Cell Phone"
  And I should see "Work Phone"
  And I should see "Address"
  And I should see "City"
  And I should see "State"
  And I should see "Zip Code"
  
  
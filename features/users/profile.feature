Feature: User Profiles
  As a registered user of the website
  I want manage my user profile
  so I can change my profile info
  
  Scenario: User create a profile with valid data
    Given I am a user with an email "user@test.com" and password "please"
    When I sign in as "user@test.com/please"
    Then I should be signed in
    When I follow "Profile"
    And I fill in "Display name" with "User Name"
    And I fill in "About" with "I'm a cool User"
    And I fill in "Gender" with "Male"
    And I fill in "Location" with "Right Here"
    And I fill in "Website" with "http://cool.i.am"
    #And I fill in "Birthday" with "01/01/2000"
    And I fill in "Picture" with "http://www.flickr.com/photos/user/1234567890"
    And I press "Update Profile"
    Then I should see "Successfully updated profile."

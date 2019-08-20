@cucumber
Feature: Status features

    @status
    Scenario: Change the status
        Given I am on Discord login page
        And I login as user1
        And I click on skip the tutorial
        Then I see that login was successful
        And I Change the status to Do Not Disturb
        And I log out from Discord App
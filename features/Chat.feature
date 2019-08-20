@cucumber
Feature: Chat features

    @chat
    Scenario: Send a Chat Message
        Given I am on Discord login page
        And I login as user1
        And I click on skip the tutorial
        Then I see that login was successful
        And I Start a New Chat with Santa Pastare
        And I Send a Chat Message with text test112
        And I clean the direct message list
        And I log out from Discord App
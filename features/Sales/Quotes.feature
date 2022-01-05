Feature: Quotes

    Scenario: Salespeople should be able to create a Quote with a Job Description
        Given a Salesperson
        And a Job Description
        When a Salesperson wants to sell something needs to create a Quote with a Job Description
        Then save the Quote

    Scenario: Salespeople should be able to update the Job Description
        Given a Salesperson
        And a Quote
        And an updated Job Description
        When a Salesperson edits the Job Description on a Quote
        Then save the Quote

    Scenario: Salespeople should be able to delete a Quote
        Given a Salesperson
        When the Salesperson intends to delete a Quote
        Then delete the Quote

    Scenario: Quotes should be able to have Estimated Parts added to them
        Given a Quote
        When someone wants to add an Estimated Part to a Quote
        Then save that Part to the Quote

    Scenario: Quotes should be able to have Estimated Labor Hours added to them
        Given a Quote
        When someone wants to add some Estimated Labor Hours to a Quote
        Then save the Labor Hours to the Quote

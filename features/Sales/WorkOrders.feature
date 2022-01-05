Feature: Work Orders

    Scenario: Salespeople should be able to create a Work Order with a Job Description
        Given a Salesperson
        And a Job Description
        When a Salesperson wants to sell something needs to create a Work Order with a Job Description
        Then save the Work Order

    Scenario: Salespeople should be able to update the Job Description
        Given a Salesperson
        And a Work Order
        And an updated Job Description
        When a Salesperson edits the Job Description on a Work Order
        Then save the Work Order

    Scenario: Salespeople should be able to delete a Work Order
        Given a Salesperson
        When the Salesperson intends to delete a Work Order
        Then delete the Work Order

    Scenario: Salespeople should be notified when a Parts List is attached to a Work Order
        Given a Salesperson
        And a Work Order they are involved with
        When a Parts List is attached to a Work Order
        Then notify the Salesperson

    Scenario: Salespeople should be notified when a Labor Estimate is attached to a Work Order
        Given a Salesperson
        And a Work Order they are involved with
        When a Labor Estimate is attached to a Work Order
        Then notify the Salesperson

    Scenario: Salespeople should be notified when a Labor Hours are attached to a Work Order
        Given a Salesperson
        And a Work Order they are involved with
        When Labor Hours are attached to the Work Order
        Then notify the Salesperson

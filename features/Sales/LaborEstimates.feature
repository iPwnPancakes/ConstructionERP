Feature: Labor Estimates

    Scenario: Salespeople should be able to attach a Labor Estimate to a Work Order
        Given a Salesperson
        And a Work Order
        When a Salesperson wants to create a Labor Estimate
        Then save the Labor Estimate attached to the associated Work Order

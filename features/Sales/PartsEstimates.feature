Feature: Labor Estimates

    Scenario: Labor Managers should be create a Parts Estimate attached to a Work Order
        Given a Labor Manager
        And a Work Order
        When a Labor Manager wants to create a Parts Estimate
        Then save the Parts Estimate attached to the associated Work Order

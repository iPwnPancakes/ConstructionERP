Feature: Labor Estimates

    Scenario: Inventory Managers should be notified when a Parts Estimate is created
        Given an Inventory Manager
        When a Parts Estimate is created
        Then an Inventory Manager should be notified

    Scenario: Inventory Managers should be able to reserve parts needed for a Parts Estimate
        Given an Inventory Manager
        And a Work Order
        And a Parts Estimate
        When an Inventory Manager wants to reserve a Part to a Work Order as part of a Parts Estimate
        Then attach the part to a Work Order

Feature: Work Orders

    Scenario: Warehouse Managers should be notified when a Work Order is posted
        Given a Warehouse Manager
        And a Construction Manager
        And a posted Work Order
        When the Work Order is posted
        Then a Warehouse Manager should be notified

    Scenario: Warehouse Managers should approve a Work Order
        Given a Warehouse Manager
        And a posted Work Order
        When the Warehouse Manager has verified that all parts are available
        Then the Work Order should be approved

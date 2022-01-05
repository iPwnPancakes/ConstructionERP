Feature: Work Orders

    Scenario: Labor Managers should be notified when an approved Work Order is updated
        Given a Labor Manager
        And an approved Work Order
        When the Work Order is updated
        Then the associated Labor Manager should be notified

    Scenario: Labor Managers should be able to access Work Orders
        Given a Labor Manager
        When the Labor Manager tries to access a Work Order
        Then show the Labor Manager the Work Order

    Scenario: Laborers should be allowed to view a Work Order
        Given a Laborer
        And a Work Order
        When a Laborer tries to access a Work Order they are associated to
        Then show the Laborer the Work Order

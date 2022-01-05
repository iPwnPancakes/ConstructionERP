Feature: Work Orders

    Scenario: Clerks should be notified when a Work Order is approved
        Given a Clerk
        And a posted Work Order
        When the Work Order is approved
        Then the Clerk should be notified

    Scenario: Clerks should be able to create Invoices from approved Work Orders
        Given a Clerk
        And an approved Work Order
        When a Clerk intends to create an Invoice
        Then save a new Invoice attached to the Work Order

    Scenario: Clerks should be able to attach more than one Invoice to a Work Order
        Given a Clerk
        And an approved Work Order
        And an Invoice attached to that Work Order
        When a Clerk needs to create a separate Invoice attached to that same Work Order
        Then save the new Invoice attached to the Work Order

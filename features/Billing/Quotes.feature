Feature: Quotes

    Scenario: Clerks should be notified when a Quote is created
        Given a Clerk
        And a Quote
        When a Quote is created
        Then the Clerk should be notified

    Scenario: Clerks should be able to create Invoices from Quotes
        Given a Clerk
        And a Quote
        When a Clerk wants to create an Invoice from a Quote
        Then save a new Invoice attached to the Quote

    Scenario: Clerks should be able to attach more than one Invoice to a Quote
        Given a Clerk
        And a Quote
        And an Invoice attached to that Quote
        When a Clerk needs to create a separate Invoice attached to that Quote
        Then attach the new Invoice to the Quote

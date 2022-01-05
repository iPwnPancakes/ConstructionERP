Feature: Tickets

    Scenario: Warehouse Managers should be able to create a Ticket from a Quote
        Given a Quote
        And a Warehouse Manager
        When a Warehouse Manager receives a Quote and wants to create a Ticket out of the items from that Quote
        Then save the Ticket
        But only if the Ticket has a Bay associated with the Ticket
        And only if that Bay is not already associated with any other Tickets

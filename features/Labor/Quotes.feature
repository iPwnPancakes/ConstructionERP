Feature: Quotes

    Scenario: Labor Managers should be notified when an approved Quote is updated
        Given a Labor Manager
        And an approved Quote
        When the Quote is updated
        Then the associated Labor Manager should be notified

    Scenario: Labor Managers should be able to access Quotes
        Given a Labor Manager
        When the Labor Manager tries to access a Quote
        Then show the Labor Manager the Quote

    Scenario: Laborers should be allowed to view a Quote
        Given a Laborer
        And a Quote
        When a Laborer tries to access a Quote they are associated to
        Then show the Laborer the Quote

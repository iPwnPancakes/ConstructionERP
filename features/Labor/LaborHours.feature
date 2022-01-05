Feature: Labor Hours

    Scenario: Managers should be able to attach a working list of Labor Hours to a Work Order
        Given a Manager
        And a Work Order
        And a Laborer
        When a Laborer reports their Labor Hours to their Manager
        Then the Manager will update the Labor Hours attached to that Work Order

    Scenario: Managers should be able to finalize a list of Labor Hours
        Given a Manager
        And a Work Order with Labor Hours
        When a Manager has verified a Labor Job is complete
        Then the Manager will finalize the list of Labor Hours

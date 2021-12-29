Feature: Work Orders

    Scenario: Managers should be able to create a Work Order
        Given a Manager
        When the Manager fills out the Work Order form
        Then save the Work Order

    Scenario: Managers should be able to view Work Orders
        Given a Manager
        When the Manager tries to access a Work Order
        Then show the Manager the Work Order

    Scenario: Managers should be able to update a Work Order
        Given a Manager
        When the Manager edits the Work Order form
        Then save the Work Order

    Scenario: Managers should be able to delete a Work Order
        Given a Manager
        When the Manager intends to delete a Work Order
        Then delete the Work Order

    Scenario: Managers should be able to post a Work Order
        Given a Manager
        And a Work Order
        When the Manager wants to post a Work Order
        Then mark the Work Order as posted
        And notify a Warehouse Manager

    Scenario: Managers should NOT be able to approve a Work Order
        Given a Manager
        And a Work Order
        When the Manager tries to approve a Work Order
        Then deny the approval

    Scenario: Managers should be notified when a Work Order is approved
        Given a Manager
        And a Warehouse Manager
        And an approved Work Order
        When a Warehouse Manager approves a Work Order
        Then the associated Manager should be notified

    Scenario: Managers should be notified when an approved Work Order is updated
        Given a Manager
        And an approved Work Order
        When the Work Order is updated
        Then the associated Manager should be notified

    Scenario: Field Techs should be allowed to view a Work Order
        Given a Field Tech
        And a Work Order
        When a Field Tech tries to access a Work Order they are associated to
        Then show the Field Tech the Work Order

    Scenario: Field Techs should NOT be allowed to Create a Work Order
        Given a Field Tech
        When a Field Tech tries to create a Work Order
        Then deny the action

    Scenario: Field Techs should NOT be allowed to Delete a Work Order
        Given a Field Tech
        When a Field Tech tries to delete a Work Order
        Then deny the action

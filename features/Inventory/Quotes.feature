Feature: Quotes

    Scenario: Inventory Managers should be notified when a Quote is created
        Given an Inventory Manager
        When a Quote is created
        Then an Inventory Manager should be notified

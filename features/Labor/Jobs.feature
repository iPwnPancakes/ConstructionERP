Feature: Jobs

    Scenario: Labor Managers should be able to create a Job from a Quote
        Given a Quote
        And a Labor Manager
        When a Labor Manager is ready to create a Job from a Quote
        Then save the Job

    Scenario: Labor Managers should be able to assign one or more Laborers to a Job
        Given a Job
        And a Labor Manager
        When a Labor Manager wants to assign Laborers to a Job
        Then assign Laborers to the Job
        But only if the Laborer is not already assigned to another Job

    Scenario: Laborers should be able to assign Labor Hours worked on a Job
        Given a Job
        And a Laborer
        When a Laborer needs to reflect the time spent on a Job
        Then save the Hours Worked to the Job

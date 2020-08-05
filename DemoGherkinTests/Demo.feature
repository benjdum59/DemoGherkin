Feature: Demo

This feature describes usage of basic Gherkin syntax
For example, features can have descriptions

Scenario: Init
    Given Data initialized
    Then Result should be false
    
Scenario: firstbool false, secondbool false
    Given FirstBool false
    And SecondBool false
    Then Result should be false
    
Scenario: firstbool false, secondbool true
    Given FirstBool false
    And SecondBool true
    Then Result should be false

Scenario: firstbool true, secondbool false
    Given FirstBool true
    And SecondBool false
    Then Result should be false

Scenario: firstbool true, secondbool true
    Given FirstBool true
    And SecondBool true
    Then Result should be true


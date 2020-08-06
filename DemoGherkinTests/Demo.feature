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

Scenario: firstbool false, secondbool false with 1 argument
  Given FirstBool with argument false
    And SecondBool with argument false
   Then Result should be false

Scenario: firstbool false, secondbool true with 1 argument
  Given FirstBool with argument false
    And SecondBool with argument true
   Then Result should be false

Scenario: firstbool true, secondbool false with 1 argument
  Given FirstBool with argument true
    And SecondBool with argument false
   Then Result should be false

Scenario: firstbool true, secondbool true with 1 argument
  Given FirstBool with argument true
    And SecondBool with argument true
   Then Result should be true

Scenario Outline: firstbool false, secondbool false with outline
  Given FirstBool outline <firstbool>
    And  SecondBool outline <secondbool>
   Then Result should be false

  Examples:
    | firstbool | secondbool |
    | false     | false      |

Scenario Outline: firstbool false, secondbool true with outline
  Given FirstBool outline <firstbool>
    And  SecondBool outline <secondbool>
   Then Result should be false

  Examples:
    | firstbool | secondbool |
    | false     | true       |

Scenario Outline: firstbool true, secondbool false with outline
  Given FirstBool outline <firstbool>
    And  SecondBool outline <secondbool>
   Then Result should be false

  Examples:
    | firstbool | secondbool |
    | true      | false      |

Scenario Outline: firstbool true, secondbool true with outline
  Given FirstBool outline <firstbool>
    And  SecondBool outline <secondbool>
   Then Result should be true

  Examples:
    | firstbool | secondbool |
    | true      | true       |

Scenario Outline: false result
  Given FirstBool outline <firstbool>
    And  SecondBool outline <secondbool>
   Then Result should be false

  Examples:
    | firstbool | secondbool |
    | false     | false      |
    | true      | false      |
    | false     | true       |

Scenario Outline: all together
  Given FirstBool outline <firstbool>
    And  SecondBool outline <secondbool>
   Then Result outline should be <result>

  Examples:
    | firstbool | secondbool | result |
    | false     | false      | false  |
    | true      | false      | false  |
    | false     | true       | false  |
    | true      | true       | true   |


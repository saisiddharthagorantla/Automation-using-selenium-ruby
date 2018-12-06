Feature: Exercise One

  Scenario: Verify all values are greater than 0
    Given I launch exercise
    Then All values are greater than 0

  Scenario: Verify total balance is correct based on values
    Given I launch exercise
    When Doing sum of values
    Then Total balance value is equal to sum of values

  Scenario: Verify total balance matches sum of values
    Given I launch exercise
    When Doing sum of values
    Then Total balance 970000 matches sum of values

  Scenario: Verify total count of values is correct
    Given I launch exercise
    When Getting list of values
    Then Total count of values is 6

  Scenario: Verify values are formatted as currencies
    Given I launch exercise
    Then Values are formatted as currencies
Feature: provide a generic holding page for Sam's untold unused domains

  Scenario: Get the madeup.com homepage
    Given I have set the "Host" header to "www.madeup.com"
    And I am on the home page
    Then I should see "madeup.com"
    And I should not see "www.madeup.com"

 Scenario: Get the fake.org homepage
   Given I have set the "Host" header to "www.fake.org"
   And I am on the home page
   Then I should see "fake.org"
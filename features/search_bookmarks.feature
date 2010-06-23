# there's something wrong with the cucumber.sphinx.conf which is generated for bookmarks
# I haven't been able to figure it out yet. the development.sphinx.conf which is created is correct
@wip
Feature: Search Bookmarks
  In order to test search
  As a humble coder
  I have to use cucumber with thinking sphinx

  Scenario: Search bookmarks
    Given I have loaded the fixtures
      And the Sphinx indexes are updated
    When I am on the search bookmarks page
      And I fill in "refine_indirect_tag" with "first"
      And I press "Search bookmarks"
    Then I should see "2 Found"
    When I fill in "refine_tag" with "classic"
      And I press "Search bookmarks"
    Then I should see "1 Found"
    When I am on the search bookmarks page
      And I check "rec"
      And I press "Search bookmarks"
    Then I should see "1 Found"

feature:  Merging two articles together.

  As and admin
  I want to merge two articles together
  So that there are not two article on the same thing

Background:
  Given the blog is set up

 Scenario: A non-admin cannot merge articles. 
  Given I am logged in as a non_admin
  And I am on the edit page
  Then I cannot merge articles

Scenario: When articles are merged, the merged article should contain the text of both previous articles.
  Given I merged somearticle with someother article
  Then the new article should contain the text of somearticle and someother article

Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).
  Given I merged somearticle with someother article
  Then the new article should have and the author from ____ or ____

Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.
  Given I merged somearticle with someother article
  Then the new article should contain the comments from both articles

Scenario: The title of the new article should be the title from either one of the merged articles.
  Given I merged somearticle with someother article
  Then the title of the new article should be the title from ____ or ____

Scenario:
  And I enter the ID of another blog to merge with
  Then the new article should have the text from both articles
  And the new article should have one author
  And the new article should have the comments from both articles
  And the title should be one of the previous article titles


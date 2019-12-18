Scenario: Precondition - signing in
GivenStories: preconditions/precondition.story#{signup}
Given When I sign up as a new user

Scenario: Sign in as just signed up user
Given I am on a page with the URL 'https://trello.com/login'
When I enter `umka_new@gmail.com` in field located `By.xpath(//*[@id="user"])`
When I enter `user12345` in field located `By.xpath(//*[@id="password"])`
When I wait until state of element located `By.xpath(//*[@id="login"])` is enabled
When I click on element located `By.xpath(//*[@id="login"])`
Then the page with the URL containing '/boards' is loaded

Scenario: Verify profile
When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[3]/div/span)`
When I click on element located `By.xpath(//*[@id="layer-manager-popover"]/div/div[3]/nav/ul/li[1]/a/span)`
Then the page title is equal to 'Profile | Trello'
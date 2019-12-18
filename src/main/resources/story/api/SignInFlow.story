Description: Sign in flow

Scenario: Opening registration form page
Given I am on the main application page
When the condition '#{eval("<class>"=="first-board-navigation")}' is true I do
|step
|When I click on element located `By.xpath(/html/body/header/nav/div[2]/a[2])`
|When I enter `@gmail.com` in field located `By.xpath(//*[@id="email"])`
|When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
|When I click on element located `By.xpath(//*[@id="signup"])`
|When I initialize the story variable `testUserEmail` with value `#{generate(Name.firstName)}`
|When I add `${testUserEmail}_new` to field located `By.xpath(//*[@id="email"])`
|When I enter `<username>` in field located `By.xpath(//*[@id="name"])`
|When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
|When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
|When I click on element located `By.xpath(//*[@id="signup"])`
|Then the page with the URL 'https://trello.com/create-first-board' is loaded
Examples:
|username|password |
|Lily    |user12345|






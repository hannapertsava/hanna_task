Description: Registration flow (trello.com)

Scenario: Opening registration form page
Given I am on the main application page
When I click on element located `By.xpath(/html/body/header/nav/div[2]/a[2])`
Then the page with the URL 'https://trello.com/signup' is loaded

Scenario: Sign Up as a new user
Given I am on a page with the URL 'https://trello.com/signup'
When I enter `@gmail.com` in field located `By.xpath(//*[@id="email"])`
When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
When I click on element located `By.xpath(//*[@id="signup"])`
When I initialize the story variable `testUserEmail` with value `#{generate(Name.firstName)}_new`
When I add `${testUserEmail}` to field located `By.xpath(//*[@id="email"])`
When I enter `<username>` in field located `By.xpath(//*[@id="name"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
When I click on element located `By.xpath(//*[@id="signup"])`
Then the page with the URL 'https://trello.com/create-first-board' is loaded
Examples:
|username                   |password |
|#{generate(Name.firstName)}_new|user12345|
|#{generate(Name.firstName)}_new|user67890|



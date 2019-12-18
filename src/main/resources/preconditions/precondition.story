Scenario: When I sign up as a new user
Meta: @signup

Given I am on a page with the URL 'https://trello.com/signup'
When I enter `@gmail.com` in field located `By.xpath(//*[@id="email"])`
When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
When I click on element located `By.xpath(//*[@id="signup"])`
When I add `umka_new` to field located `By.xpath(//*[@id="email"])`
When I enter `Umka_new` in field located `By.xpath(//*[@id="name"])`
When I enter `user12345` in field located `By.xpath(//*[@id="password"])`
When I wait until state of element located `By.xpath(//*[@id="signup"])` is enabled
When I click on element located `By.xpath(//*[@id="signup"])`
When I click on element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div[1]/span[1])`
When I click on element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div[1]/span[2])`
When I click on element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div[1]/span[3])`
When I click on element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div[1]/span[4])`
When I click on element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div[1]/span[5])`
When I click on element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div[2]/div/button)`
Then the page with the URL containing '/welcome-to-trello' is loaded

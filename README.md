#Usage

##Clone this repo

        $ git clone git@github.com:Shashikant86/BehatDemo.git
        $ cd BehatDemo


Now install Behat, Mink, MinkExtension and their dependencies with composer:

      $curl http://getcomposer.org/installer | php
      $php composer.phar install

Download Selenium Server and launch server 

      $ java -jar selenium-server-standalone-2.30.0.jar


Now to launch Behat, just run:

      $./bin/behat

Watch The Test running in the firefox browser. if you want to add more browsers locally with Selenium 2 driver add another param 'browser_name' to behat.yml (default profile)

              default:
                  context:
                    class:  'FeatureContext'
                  extensions:
                       Behat\MinkExtension\Extension:
                         base_url:  'http://saucelabs.com/'
                         javascript_session:  'selenium2'
                         browser_name: safari
                         goutte:              ~
                         selenium2:


## Running Test With PahntomJS Driver 

Install PhantomJS, This will start Web-Driver at port 8643
 Now run Behat with phantomjs profile 

         $ brew install phantomJS
         $ phantomjs --webdriver=8643
         $ .bin/behat -p phantomjs
         
         

##To Run tests on Sauce Labs: 

You need to create account with SauceLabs https://saucelabs.com/signup 
Once registered you will have username and API key. 

Web-Driver (selenium2) Tests: 

update behat.yml and 'sauce' profile. 
Change "wd_host: username:apikey@ondemand.saucelabs.com/wd/hub" with your username and Password. 


And Run 

       $./bin/behat -p sauce

You will see test running on SauceLabs https://saucelabs.com/jobs  


Selenium1 driver Tests: 

update behat.yml and 'sauce-rc' profile. 
"username":         "username",
"access-key":       "apikey", with your username and Password. 


And Run 

         $./bin/behat -p sauce-rc

You will see test running on SauceLabs https://saucelabs.com/jobs  























<?php


class FeatureContext extends Behat\MinkExtension\Context\MinkContext
{
    
   /**
     * @When /^I search for "([^"]*)"$/
     */
    public function iSearchFor($key)
    {
        $this->fillField("s", $key);
        $this->pressButton("Search");

    }

    /**
     * @Given /^I am on blogs page$/
     */
    public function iAmOnBlogsPage()
    {
        $this->visit("/blog");
    }




}

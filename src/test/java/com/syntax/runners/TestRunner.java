package com.syntax.runners;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features= {"src/test/resources/features"}
				,glue= ""
				,plugin= {"pretty"
						,"html:target/cucumber-default-reports"
						,"json:target/cucumber.json"}
				,monochrome=true
				,dryRun=false)



public class TestRunner {

}

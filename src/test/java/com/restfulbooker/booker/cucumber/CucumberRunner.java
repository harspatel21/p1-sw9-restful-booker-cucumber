package com.restfulbooker.booker.cucumber;

/**
 * Created by Jay
 */

import com.restfulbooker.booker.testbase.TestBase;
import cucumber.api.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features = "src/test/java/resources/feature")
public class CucumberRunner extends TestBase {



}

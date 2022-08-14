package stepDefs;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		
		plugin = {"html:target/htm-cucumber","json:target/cucumber.json"}, // to generate report
		
		features= "src/test/java/features",
		tags= {"@Sanity"},
		//tags = {"@F_Login"},
		//tags= {"@Sanity,@Regression"}, to run multiple tags
		//tags= {"@Rapid and @Regression"}, // to run tags having both @Reg and @Rapid
		//tags = {"not @Sanity"}, // to run all the tags except sanity tag
		glue= {"stepDefs"}
				
		)
public class TestRunner {

}

/*@CucumberOptions(

features = "src/test/java/features",
//tags = {"@Sanity"},  to run one single Tag

//tags = {"@Sanity,@Regression"}, //to run multiple tags using OR
//tags = {"@Sanity or @Regression"}, //to run multiple tags using OR

tags = {"@Regression","@Rapid"}, //to run multiple tags using And
//tags = {"@Regression and @Rapid"}, //to run multiple tags using And

glue = {"stepDefs"}

)*/
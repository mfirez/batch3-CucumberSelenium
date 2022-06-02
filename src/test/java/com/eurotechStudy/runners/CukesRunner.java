package com.eurotechStudy.runners;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(

        plugin = {"json:target/cucumber.json",
                "html:target/default-html-reports",
                "de.monochromata.cucumber.report.PrettyReports:target/cucumber",
        "rerun:target/rerun.txt"}, // ikinci ekledigimiz daha basit bir rapor veriyor(target-default-index)
        features = "src/test/resources/features",
        glue = "com/eurotechStudy/step_definitions",
        dryRun = false,
        tags = "@FailedTest"          // before version 4 { "@wip", "@smoke"} and
                                        // before version 5 "@wip,@smoke"  or
                                        // before version 5 {"@smoke" ,"~@wip"}  and not


)


public class CukesRunner {
}

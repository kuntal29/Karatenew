package Features;

import org.junit.Test;
import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(features = { "classpath:features" }, tags = { "@tag1" })
public class TestRunner {

}
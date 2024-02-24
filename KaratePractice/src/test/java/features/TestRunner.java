package features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test()
	Karate getApi() {
		return Karate.run("getapi").relativeTo(getClass());
	}
	
	@Karate.Test()
	Karate postApi() {
		return Karate.run("randomemail").relativeTo(getClass());
	}
	
	@Karate.Test()
	Karate putApi() {
		return Karate.run("putapi").relativeTo(getClass());
	}
	
	@Karate.Test()
	Karate deleteApi() {
		return Karate.run("deleteapi").relativeTo(getClass());
	}
	

}

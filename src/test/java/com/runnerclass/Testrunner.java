package com.runnerclass;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.reports.Reports;

import cucumber.api.CucumberOptions;

import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features="src\\test\\resources\\Features\\adactinLogin.feature",glue= {"com.loginsteps"},monochrome=true,plugin= {"pretty","json:src\\test\\resources\\Reports\\output.json\\cucumber.json"})
public class Testrunner {
@AfterClass
	public static void Afterclass() {
		Reports.generateJvmReport("C:\\Users\\vinod elangovan\\eclipse-workspace\\Cucumber\\src\\test\\resources\\Reports\\output.json\\cucumber.json");
	}
}
	
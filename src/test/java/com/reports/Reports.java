package com.reports;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;



public class Reports {
	public static void generateJvmReport(String jsonfile) {
		File reportdirectory = new File("C:\\Users\\vinod elangovan\\eclipse-workspace\\Cucumber\\src\\test\\resources\\Reports\\output.jason");
	Configuration configuration = new Configuration(reportdirectory,"Adactin automation");
	
	configuration.addClassifications("Browser Name", "chrome");
	configuration.addClassifications("os", "Windows 10");
	configuration.addClassifications("Browser version", "96");
	configuration.addClassifications("Sprint", "30");
	 List<String>jsonfiles =new ArrayList<String>();
	 jsonfiles.add(jsonfile);
	 ReportBuilder builder = new ReportBuilder(jsonfiles,configuration);
	 builder.generateReports();
	
	
	
	
	
	
	}

}

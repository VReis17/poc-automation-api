package br.com.poc.robotframework.api.utils;

public class PropertySet {
	
	public void setSystemProperty(String key, String value) {
		System.getProperties().setProperty(key,value);
		System.setProperty("webdriver.http.factory", "jdk-http-client");
	}

}

package br.com.poc.robotframework.api.dummy;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class BaseDataFactory {
	
	protected Gson gson;
	
	public BaseDataFactory() {
		gson= new GsonBuilder().enableComplexMapKeySerialization().create();
	}

}

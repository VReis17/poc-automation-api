package br.com.poc.robotframework.api.dummy.auth;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

import br.com.poc.robotframework.api.dummy.BaseDataFactory;

public class AuthDataFactory extends BaseDataFactory {

	public AuthDataFactory() {
		super();
	}

	public String getAuthCredentials() throws FileNotFoundException {
		BufferedReader reader = new BufferedReader(new FileReader("resources/data/auth/authCredentials.json"));
		AuthLogin login = gson.fromJson(reader, AuthLogin.class);
		return gson.toJson(login);

	}

	public class AuthLogin {

		private String username;
		private String password;

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

	}

}

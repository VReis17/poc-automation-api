package br.com.poc.robotframework.api.dummy.products.datafactory;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;

import br.com.poc.robotframework.api.dummy.BaseDataFactory;
import br.com.poc.robotframework.api.dummy.products.dto.AddProductDTO;

public class AddProductsDataFactory extends BaseDataFactory {

	public AddProductsDataFactory() {
		super();
	}

	public AddProductDTO getAddProductDTO() throws FileNotFoundException {
		BufferedReader reader = new BufferedReader(new FileReader("resources/data/products/request_addProduct.json"));
		AddProductDTO addProductDTO = gson.fromJson(reader, AddProductDTO.class);
		return addProductDTO;

	}

	public String getPayloadValidAddProduct() throws FileNotFoundException {
		return gson.toJson(getAddProductDTO());
	}
}

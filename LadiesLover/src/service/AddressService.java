package service;

import model.Address;
import model.AddressDAO;

public class AddressService {
	private AddressDAO addressDAO;

	public AddressDAO getAddressDAO() {
		return addressDAO;
	}

	public void setAddressDAO(AddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}
}

package action;

import com.opensymphony.xwork2.ActionSupport;

import model.Address;
import service.AddressService;

public class AddressAction extends ActionSupport {
	private AddressService addressService;

	public AddressService getAddressService() {
		return addressService;
	}

	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}
}

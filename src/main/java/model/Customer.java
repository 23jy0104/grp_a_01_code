package model;

public class Customer {
	private String customerName;
	private String customerPassword;
	private String phoneNumber;
	private String email;
	private String birthDate;
	private String licenceNumber;
	private String licenceDate;
	private String customerAddress;
	private String creditId;
	private String omote;
	private String ura;
	
	public Customer() {
		super();
	}
	
	public Customer(String customerName, String customerPassword, String phoneNumber, String email, String birthDate,
			String licenceNumber, String licenceDate, String customerAddress, String creditId, String omote,
			String ura) {
		super();
		this.customerName = customerName;
		this.customerPassword = customerPassword;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.birthDate = birthDate;
		this.licenceNumber = licenceNumber;
		this.licenceDate = licenceDate;
		this.customerAddress = customerAddress;
		this.creditId = creditId;
		this.omote = omote;
		this.ura = ura;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getLicenceNumber() {
		return licenceNumber;
	}

	public void setLicenceNumber(String licenceNumber) {
		this.licenceNumber = licenceNumber;
	}

	public String getLicenceDate() {
		return licenceDate;
	}

	public void setLicenceDate(String licenceDate) {
		this.licenceDate = licenceDate;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCreditId() {
		return creditId;
	}

	public void setCreditId(String creditId) {
		this.creditId = creditId;
	}

	public String getOmote() {
		return omote;
	}

	public void setOmote(String omote) {
		this.omote = omote;
	}

	public String getUra() {
		return ura;
	}

	public void setUra(String ura) {
		this.ura = ura;
	}
	
}

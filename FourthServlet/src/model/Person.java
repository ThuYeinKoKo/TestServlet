package model;

public class Person {

	private String firstName;//UI
	private String lastName;//UI
	private String dob;//UI
	private String age;
	private String address;//UI
	private String nric;//UI
	
	public Person() {
		// TODO Auto-generated constructor stub
	}

	public Person(String firstName, String lastName, String dob, String age, String address, String nric) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.age = age;
		this.address = address;
		this.nric = nric;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNric() {
		return nric;
	}

	public void setNric(String nric) {
		this.nric = nric;
	}

	@Override
	public String toString() {
		return "Person [firstName=" + firstName + ", lastName=" + lastName + ", dob=" + dob + ", age=" + age
				+ ", address=" + address + ", nric=" + nric + "]";
	}

	
}

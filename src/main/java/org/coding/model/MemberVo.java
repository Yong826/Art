package org.coding.model;



public class MemberVo {
	

	private String id;
	

	private String password;
	

	private String name;
	
	
	private String email;
	
	
<<<<<<< HEAD

=======
	private String profile;
	
	
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
<<<<<<< HEAD

	@Override
	public String toString() {
		return "MemberVo [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + "]";
	}
=======
	
	
	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "MemberVo [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", profile="
				+ profile + "]";
	}

	
>>>>>>> 38dbd94c68f007827ea503873151565d50af3293
	
	
}

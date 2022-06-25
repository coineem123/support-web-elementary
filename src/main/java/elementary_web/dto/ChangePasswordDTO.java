package elementary_web.dto;

public class ChangePasswordDTO {
	private String old_password;
	private String new_password;
	private String again_new_password;

	public ChangePasswordDTO() {

	}

	public String getOld_password() {
		return old_password;
	}

	public void setOld_password(String old_password) {
		this.old_password = old_password;
	}

	public String getNew_password() {
		return new_password;
	}

	public void setNew_password(String new_password) {
		this.new_password = new_password;
	}

	public String getAgain_new_password() {
		return again_new_password;
	}

	public void setAgain_new_password(String again_new_password) {
		this.again_new_password = again_new_password;
	}

}

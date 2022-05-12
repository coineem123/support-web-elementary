package elementary_web.dto;

public class NotificationDTO {

	private int notificationID;
	private String content;
	private boolean isShow;

	public NotificationDTO(int notificationID, String content, boolean isShow) {
		super();
		this.notificationID = notificationID;
		this.content = content;
		this.isShow = isShow;
	}

	public int getNotificationID() {
		return notificationID;
	}

	public void setNotificationID(int notificationID) {
		this.notificationID = notificationID;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boolean isShow() {
		return isShow;
	}

	public void setShow(boolean isShow) {
		this.isShow = isShow;
	}

}

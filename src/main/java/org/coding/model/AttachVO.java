package org.coding.model;

public class AttachVO {

	// 1. 파일이 저장되어 있는 경로
		private String uploadPath;
		// 2. 업로드된 파일명
		private String fileName;
		// 3. uuid 정보
		private String uuid;
		// 4. 업로드된 파일이 이미지 파일인지 아닌지에 대한 정보
		private boolean img;
		// 5. 게시판번호
		private int bno;
		
		
		public String getUploadPath() {
			return uploadPath;
		}
		public void setUploadPath(String uploadPath) {
			this.uploadPath = uploadPath;
		}
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
		public String getUuid() {
			return uuid;
		}
		public void setUuid(String uuid) {
			this.uuid = uuid;
		}
		public boolean isImg() {
			return img;
		}
		public void setImg(boolean img) {
			this.img = img;
		}
		public int getBno() {
			return bno;
		}
		public void setBno(int bno) {
			this.bno = bno;
		}	
		
		@Override
		public String toString() {
			return "AttachFileVO [uploadPath=" + uploadPath + ", fileName=" + fileName + ", uuid=" + uuid + ", img=" + img
					+ ", bno=" + bno + "]";
		}
}

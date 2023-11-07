package services;

public class Param {
private String userid,sts,docid,appId;

public String getUserid() {
	return userid;
}

public String getAppId() {
	return appId;
}

public void setAppId(String appId) {
	this.appId = appId;
}

public void setUserid(String userid) {
	this.userid = userid;
}

public String getSts() {
	return sts;
}

public void setSts(String sts) {
	this.sts = sts;
}

public String getDocid() {
	return docid;
}

public void setDocid(String docid) {
	this.docid = docid;
}

}

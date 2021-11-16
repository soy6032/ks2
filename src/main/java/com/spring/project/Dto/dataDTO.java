package com.spring.project.Dto;

public class dataDTO {	
	//table 'account'
	private int account_idx;
	private String account_authority;
	private String account_id;
	private String account_password;
	private String account_name;
	private String account_tel;
	private String account_email;
	private String account_zipcode;
	private String account_address;
	private String account_address_detail;
	private String account_access_time;
	private String account_delflag;
	private String account_createtime;
	private String account_updatetime;
	//table 'company'
	private int company_idx;
	private String company_name;
	private String company_manager;
	private String company_division;
	private String company_businessnum;
	private String company_sectors;
	private String company_ceo;
	private String company_fax;
	private String company_delflag;
	private String company_createtime;
	private String company_updatetime;
	private String company_mainiteam;
	//table 'estimate'
	private int estimate_idx;
	private int product_idx;
	private String estimate_productpurpose;
	private String estimate_productsize;
	private String estimate_duedate;
	private int estimate_budget1;
	private int estimate_budget2;
	private String estimate_file;
	private String estimate_content;
	private String estimate_state;
	private String estimate_delflag;
	private String estimate_createtime;
	private String estimate_updatetime;
	//table 'estimatehistory'
	private int estimatehistory_idx;
	private String estimatehistory_content;
	private String estimatehistory_file;
	private String estimatehistory_delflag;
	private String estimatehistory_createtime;
	private String estimatehistory_updatetime;
	//table 'notice'
	private int notice_idx;
	private String notice_title;
	private String notice_content;
	private String notice_delflag;
	private String notice_createtime;
	private String notice_updatetime;
	//table 'product'
	private String product_name;
	private String product_category;
	private String product_image;
	private String product_file;
	private String product_content;
	private String product_delflag;
	private String product_createtime;
	private String product_updatetime;
	//table 'question'
	private int question_idx;
	private String question_title;
	private String question_content;
	private String question_file;
	private String question_password;
	private String question_delflag;
	private String question_createtime;
	private String question_updatetime;
	//table 'requestion'
	private int requestion_idx;
	private String requestion_title;
	private String requestion_content;
	private String requestion_file;
	private String requestion_delflag;
	private String requestion_createtime;
	private String requestion_updatetime;
	
	public dataDTO() {}

	

	public dataDTO(int account_idx, String account_authority, String account_id, String account_password,
			String account_name, String account_tel, String account_email, String account_zipcode,
			String account_address, String account_address_detail, String account_access_time, String account_delflag,
			String account_createtime, String account_updatetime, int company_idx, String company_name,
			String company_manager, String company_division, String company_businessnum, String company_sectors,
			String company_ceo, String company_fax, String company_delflag, String company_createtime,
			String company_updatetime, int estimate_idx, int product_idx, String estimate_productpurpose,
			String estimate_productsize, String estimate_duedate, int estimate_budget1, int estimate_budget2,
			String estimate_file, String estimate_content, String estimate_state, String estimate_delflag,
			String estimate_createtime, String estimate_updatetime, int estimatehistory_idx,
			String estimatehistory_content, String estimatehistory_file, String estimatehistory_delflag,
			String estimatehistory_createtime, String estimatehistory_updatetime, int notice_idx, String notice_title,
			String notice_content, String notice_delflag, String notice_createtime, String notice_updatetime,
			String product_name, String product_category, String product_image, String product_file,
			String product_content, String product_delflag, String product_createtime, String product_updatetime,
			int question_idx, String question_title, String question_content, String question_file,
			String question_password, String question_delflag, String question_createtime, String question_updatetime,
			int requestion_idx, String requestion_title, String requestion_content, String requestion_file,
			String requestion_delflag, String requestion_createtime, String requestion_updatetime, String company_mainiteam) {
		super();
		this.account_idx = account_idx;
		this.account_authority = account_authority;
		this.account_id = account_id;
		this.account_password = account_password;
		this.account_name = account_name;
		this.account_tel = account_tel;
		this.account_email = account_email;
		this.account_zipcode = account_zipcode;
		this.account_address = account_address;
		this.account_address_detail = account_address_detail;
		this.account_access_time = account_access_time;
		this.account_delflag = account_delflag;
		this.account_createtime = account_createtime;
		this.account_updatetime = account_updatetime;
		this.company_idx = company_idx;
		this.company_name = company_name;
		this.company_manager = company_manager;
		this.company_division = company_division;
		this.company_businessnum = company_businessnum;
		this.company_sectors = company_sectors;
		this.company_ceo = company_ceo;
		this.company_fax = company_fax;
		this.company_delflag = company_delflag;
		this.company_createtime = company_createtime;
		this.company_updatetime = company_updatetime;
		this.estimate_idx = estimate_idx;
		this.product_idx = product_idx;
		this.estimate_productpurpose = estimate_productpurpose;
		this.estimate_productsize = estimate_productsize;
		this.estimate_duedate = estimate_duedate;
		this.estimate_budget1 = estimate_budget1;
		this.estimate_budget2 = estimate_budget2;
		this.estimate_file = estimate_file;
		this.estimate_content = estimate_content;
		this.estimate_state = estimate_state;
		this.estimate_delflag = estimate_delflag;
		this.estimate_createtime = estimate_createtime;
		this.estimate_updatetime = estimate_updatetime;
		this.estimatehistory_idx = estimatehistory_idx;
		this.estimatehistory_content = estimatehistory_content;
		this.estimatehistory_file = estimatehistory_file;
		this.estimatehistory_delflag = estimatehistory_delflag;
		this.estimatehistory_createtime = estimatehistory_createtime;
		this.estimatehistory_updatetime = estimatehistory_updatetime;
		this.notice_idx = notice_idx;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_delflag = notice_delflag;
		this.notice_createtime = notice_createtime;
		this.notice_updatetime = notice_updatetime;
		this.product_name = product_name;
		this.product_category = product_category;
		this.product_image = product_image;
		this.product_file = product_file;
		this.product_content = product_content;
		this.product_delflag = product_delflag;
		this.product_createtime = product_createtime;
		this.product_updatetime = product_updatetime;
		this.question_idx = question_idx;
		this.question_title = question_title;
		this.question_content = question_content;
		this.question_file = question_file;
		this.question_password = question_password;
		this.question_delflag = question_delflag;
		this.question_createtime = question_createtime;
		this.question_updatetime = question_updatetime;
		this.requestion_idx = requestion_idx;
		this.requestion_title = requestion_title;
		this.requestion_content = requestion_content;
		this.requestion_file = requestion_file;
		this.requestion_delflag = requestion_delflag;
		this.requestion_createtime = requestion_createtime;
		this.requestion_updatetime = requestion_updatetime;
	}



	public int getAccount_idx() {
		return account_idx;
	}

	public void setAccount_idx(int account_idx) {
		this.account_idx = account_idx;
	}

	public String getAccount_authority() {
		return account_authority;
	}

	public void setAccount_authority(String account_authority) {
		this.account_authority = account_authority;
	}

	public String getAccount_id() {
		return account_id;
	}

	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}

	public String getAccount_password() {
		return account_password;
	}

	public void setAccount_password(String account_password) {
		this.account_password = account_password;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	
	public String getAccount_tel() {
		return account_tel;
	}

	public void setAccount_tel(String account_tel) {
		this.account_tel = account_tel;
	}

	public String getAccount_email() {
		return account_email;
	}

	public void setAccount_email(String account_email) {
		this.account_email = account_email;
	}

	public String getAccount_zipcode() {
		return account_zipcode;
	}

	public void setAccount_zipcode(String account_zipcode) {
		this.account_zipcode = account_zipcode;
	}

	public String getAccount_address() {
		return account_address;
	}

	public void setAccount_address(String account_address) {
		this.account_address = account_address;
	}

	public String getAccount_address_detail() {
		return account_address_detail;
	}

	public void setAccount_address_detail(String account_address_detail) {
		this.account_address_detail = account_address_detail;
	}

	public String getAccount_access_time() {
		return account_access_time;
	}

	public void setAccount_access_time(String account_access_time) {
		this.account_access_time = account_access_time;
	}

	public String getAccount_delflag() {
		return account_delflag;
	}

	public void setAccount_delflag(String account_delflag) {
		this.account_delflag = account_delflag;
	}

	public String getAccount_createtime() {
		return account_createtime;
	}

	public void setAccount_createtime(String account_createtime) {
		this.account_createtime = account_createtime;
	}

	public String getAccount_updatetime() {
		return account_updatetime;
	}

	public void setAccount_updatetime(String account_updatetime) {
		this.account_updatetime = account_updatetime;
	}

	public int getCompany_idx() {
		return company_idx;
	}

	public void setCompany_idx(int company_idx) {
		this.company_idx = company_idx;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getCompany_manager() {
		return company_manager;
	}

	public void setCompany_manager(String company_manager) {
		this.company_manager = company_manager;
	}

	public String getCompany_division() {
		return company_division;
	}

	public void setCompany_division(String company_division) {
		this.company_division = company_division;
	}

	public String getCompany_businessnum() {
		return company_businessnum;
	}

	public void setCompany_businessnum(String company_businessnum) {
		this.company_businessnum = company_businessnum;
	}

	public String getCompany_sectors() {
		return company_sectors;
	}

	public void setCompany_sectors(String company_sectors) {
		this.company_sectors = company_sectors;
	}

	public String getCompany_ceo() {
		return company_ceo;
	}

	public void setCompany_ceo(String company_ceo) {
		this.company_ceo = company_ceo;
	}

	public String getCompany_fax() {
		return company_fax;
	}

	public void setCompany_fax(String company_fax) {
		this.company_fax = company_fax;
	}

	public String getCompany_delflag() {
		return company_delflag;
	}

	public void setCompany_delflag(String company_delflag) {
		this.company_delflag = company_delflag;
	}

	public String getCompany_createtime() {
		return company_createtime;
	}

	public void setCompany_createtime(String company_createtime) {
		this.company_createtime = company_createtime;
	}

	public String getCompany_updatetime() {
		return company_updatetime;
	}

	public void setCompany_updatetime(String company_updatetime) {
		this.company_updatetime = company_updatetime;
	}

	public int getEstimate_idx() {
		return estimate_idx;
	}

	public void setEstimate_idx(int estimate_idx) {
		this.estimate_idx = estimate_idx;
	}

	public int getProduct_idx() {
		return product_idx;
	}

	public void setProduct_idx(int product_idx) {
		this.product_idx = product_idx;
	}

	public String getEstimate_productpurpose() {
		return estimate_productpurpose;
	}

	public void setEstimate_productpurpose(String estimate_productpurpose) {
		this.estimate_productpurpose = estimate_productpurpose;
	}

	public String getEstimate_productsize() {
		return estimate_productsize;
	}

	public void setEstimate_productsize(String estimate_productsize) {
		this.estimate_productsize = estimate_productsize;
	}

	public String getEstimate_duedate() {
		return estimate_duedate;
	}

	public void setEstimate_duedate(String estimate_duedate) {
		this.estimate_duedate = estimate_duedate;
	}

	public int getEstimate_budget1() {
		return estimate_budget1;
	}

	public void setEstimate_budget1(int estimate_budget1) {
		this.estimate_budget1 = estimate_budget1;
	}

	public int getEstimate_budget2() {
		return estimate_budget2;
	}

	public void setEstimate_budget2(int estimate_budget2) {
		this.estimate_budget2 = estimate_budget2;
	}

	public String getEstimate_file() {
		return estimate_file;
	}

	public void setEstimate_file(String estimate_file) {
		this.estimate_file = estimate_file;
	}

	public String getEstimate_content() {
		return estimate_content;
	}

	public void setEstimate_content(String estimate_content) {
		this.estimate_content = estimate_content;
	}

	public String getEstimate_state() {
		return estimate_state;
	}

	public void setEstimate_state(String estimate_state) {
		this.estimate_state = estimate_state;
	}

	public String getEstimate_delflag() {
		return estimate_delflag;
	}

	public void setEstimate_delflag(String estimate_delflag) {
		this.estimate_delflag = estimate_delflag;
	}

	public String getEstimate_createtime() {
		return estimate_createtime;
	}

	public void setEstimate_createtime(String estimate_createtime) {
		this.estimate_createtime = estimate_createtime;
	}

	public String getEstimate_updatetime() {
		return estimate_updatetime;
	}

	public void setEstimate_updatetime(String estimate_updatetime) {
		this.estimate_updatetime = estimate_updatetime;
	}

	public int getEstimatehistory_idx() {
		return estimatehistory_idx;
	}

	public void setEstimatehistory_idx(int estimatehistory_idx) {
		this.estimatehistory_idx = estimatehistory_idx;
	}

	public String getEstimatehistory_content() {
		return estimatehistory_content;
	}

	public void setEstimatehistory_content(String estimatehistory_content) {
		this.estimatehistory_content = estimatehistory_content;
	}

	public String getEstimatehistory_file() {
		return estimatehistory_file;
	}

	public void setEstimatehistory_file(String estimatehistory_file) {
		this.estimatehistory_file = estimatehistory_file;
	}

	public String getEstimatehistory_delflag() {
		return estimatehistory_delflag;
	}

	public void setEstimatehistory_delflag(String estimatehistory_delflag) {
		this.estimatehistory_delflag = estimatehistory_delflag;
	}

	public String getEstimatehistory_createtime() {
		return estimatehistory_createtime;
	}

	public void setEstimatehistory_createtime(String estimatehistory_createtime) {
		this.estimatehistory_createtime = estimatehistory_createtime;
	}

	public String getEstimatehistory_updatetime() {
		return estimatehistory_updatetime;
	}

	public void setEstimatehistory_updatetime(String estimatehistory_updatetime) {
		this.estimatehistory_updatetime = estimatehistory_updatetime;
	}

	public int getNotice_idx() {
		return notice_idx;
	}

	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_delflag() {
		return notice_delflag;
	}

	public void setNotice_delflag(String notice_delflag) {
		this.notice_delflag = notice_delflag;
	}

	public String getNotice_createtime() {
		return notice_createtime;
	}

	public void setNotice_createtime(String notice_createtime) {
		this.notice_createtime = notice_createtime;
	}

	public String getNotice_updatetime() {
		return notice_updatetime;
	}

	public void setNotice_updatetime(String notice_updatetime) {
		this.notice_updatetime = notice_updatetime;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	public String getProduct_file() {
		return product_file;
	}

	public void setProduct_file(String product_file) {
		this.product_file = product_file;
	}

	public String getProduct_content() {
		return product_content;
	}

	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}

	public String getProduct_delflag() {
		return product_delflag;
	}

	public void setProduct_delflag(String product_delflag) {
		this.product_delflag = product_delflag;
	}

	public String getProduct_createtime() {
		return product_createtime;
	}

	public void setProduct_createtime(String product_createtime) {
		this.product_createtime = product_createtime;
	}

	public String getProduct_updatetime() {
		return product_updatetime;
	}

	public void setProduct_updatetime(String product_updatetime) {
		this.product_updatetime = product_updatetime;
	}

	public int getQuestion_idx() {
		return question_idx;
	}

	public void setQuestion_idx(int question_idx) {
		this.question_idx = question_idx;
	}

	public String getQuestion_title() {
		return question_title;
	}

	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}

	public String getQuestion_file() {
		return question_file;
	}

	public void setQuestion_file(String question_file) {
		this.question_file = question_file;
	}

	public String getQuestion_password() {
		return question_password;
	}

	public void setQuestion_password(String question_password) {
		this.question_password = question_password;
	}

	public String getQuestion_delflag() {
		return question_delflag;
	}

	public void setQuestion_delflag(String question_delflag) {
		this.question_delflag = question_delflag;
	}

	public String getQuestion_createtime() {
		return question_createtime;
	}

	public void setQuestion_createtime(String question_createtime) {
		this.question_createtime = question_createtime;
	}

	public String getQuestion_updatetime() {
		return question_updatetime;
	}

	public void setQuestion_updatetime(String question_updatetime) {
		this.question_updatetime = question_updatetime;
	}

	public int getRequestion_idx() {
		return requestion_idx;
	}

	public void setRequestion_idx(int requestion_idx) {
		this.requestion_idx = requestion_idx;
	}

	public String getRequestion_title() {
		return requestion_title;
	}

	public void setRequestion_title(String requestion_title) {
		this.requestion_title = requestion_title;
	}

	public String getRequestion_content() {
		return requestion_content;
	}

	public void setRequestion_content(String requestion_content) {
		this.requestion_content = requestion_content;
	}

	public String getRequestion_file() {
		return requestion_file;
	}

	public void setRequestion_file(String requestion_file) {
		this.requestion_file = requestion_file;
	}

	public String getRequestion_delflag() {
		return requestion_delflag;
	}

	public void setRequestion_delflag(String requestion_delflag) {
		this.requestion_delflag = requestion_delflag;
	}

	public String getRequestion_createtime() {
		return requestion_createtime;
	}

	public void setRequestion_createtime(String requestion_createtime) {
		this.requestion_createtime = requestion_createtime;
	}

	public String getRequestion_updatetime() {
		return requestion_updatetime;
	}

	public void setRequestion_updatetime(String requestion_updatetime) {
		this.requestion_updatetime = requestion_updatetime;
	}



	public String getCompany_mainiteam() {
		return company_mainiteam;
	}



	public void setCompany_mainiteam(String company_mainiteam) {
		this.company_mainiteam = company_mainiteam;
	}
}
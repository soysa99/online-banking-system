package models;

public class FundTransactionModel {
	
	private int PayeeId;
	private String NIC;
	private String PayeeAccountNo;
	private String PayeeName;
	private String PayeeNickname;
	private String Bank;
	private String Branch;
	
	
	public FundTransactionModel() {
		super();
	}

	public int getPayeeId() {
		return PayeeId;
	}

	public void setPayeeId(int payeeId) {
		PayeeId = payeeId;
	}

	public String getNIC() {
		return NIC;
	}

	public void setNIC(String nIC) {
		NIC = nIC;
	}

	public String getPayeeAccountNo() {
		return PayeeAccountNo;
	}

	public void setPayeeAccountNo(String payeeAccountNo) {
		PayeeAccountNo = payeeAccountNo;
	}

	public String getPayeeName() {
		return PayeeName;
	}

	public void setPayeeName(String payeeName) {
		PayeeName = payeeName;
	}

	public String getPayeeNickname() {
		return PayeeNickname;
	}

	public void setPayeeNickname(String payeeNickname) {
		PayeeNickname = payeeNickname;
	}

	public String getBank() {
		return Bank;
	}

	public void setBank(String bank) {
		Bank = bank;
	}

	public String getBranch() {
		return Branch;
	}

	public void setBranch(String branch) {
		Branch = branch;
	}

	

	
}

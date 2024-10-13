package models;

public class BillPaymentModel {
	private int PayeeID;
	private String NIC;
	private int BillAccountNo;
	private String PayeeCategory;
	private String ServiceProvider;
	private String Description;
	
	public BillPaymentModel() {
		super();
	}
	public int getPayeeID() {
		return PayeeID;
	}
	public void setPayeeID(int payeeID) {
		PayeeID = payeeID;
	}
	public String getNIC() {
		return NIC;
	}
	public void setNIC(String nIC) {
		NIC = nIC;
	}
	public int getBillAccountNo() {
		return BillAccountNo;
	}
	public void setBillAccountNo(int billAccountNo) {
		BillAccountNo = billAccountNo;
	}
	public String getPayeeCategory() {
		return PayeeCategory;
	}
	public void setPayeeCategory(String payeeCategory) {
		PayeeCategory = payeeCategory;
	}
	public String getServiceProvider() {
		return ServiceProvider;
	}
	public void setServiceProvider(String serviceProvider) {
		ServiceProvider = serviceProvider;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
}

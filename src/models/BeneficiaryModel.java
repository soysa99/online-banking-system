package models;

public class BeneficiaryModel {
    private String beneficiaryId;
    private String beneficiaryAccountNo;
    private String beneficiaryName;
    private String bank;
    private String branch;
    private String beneficiaryNickname;
    private String accountType;
    private String beneficiaryType;

    // Constructors
    public BeneficiaryModel() {}

    public BeneficiaryModel(String beneficiaryId, String beneficiaryAccountNo, String beneficiaryName, String bank,
                            String branch, String beneficiaryNickname, String accountType, String beneficiaryType) {
        this.beneficiaryId = beneficiaryId;
        this.beneficiaryAccountNo = beneficiaryAccountNo;
        this.beneficiaryName = beneficiaryName;
        this.bank = bank;
        this.branch = branch;
        this.beneficiaryNickname = beneficiaryNickname;
        this.accountType = accountType;
        this.beneficiaryType = beneficiaryType;
    }

    // Getters and Setters
    public String getBeneficiaryId() {
        return beneficiaryId;
    }

    public void setBeneficiaryId(String beneficiaryId) {
        this.beneficiaryId = beneficiaryId;
    }

    public String getBeneficiaryAccountNo() {
        return beneficiaryAccountNo;
    }

    public void setBeneficiaryAccountNo(String beneficiaryAccountNo) {
        this.beneficiaryAccountNo = beneficiaryAccountNo;
    }

    public String getBeneficiaryName() {
        return beneficiaryName;
    }

    public void setBeneficiaryName(String beneficiaryName) {
        this.beneficiaryName = beneficiaryName;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getBeneficiaryNickname() {
        return beneficiaryNickname;
    }

    public void setBeneficiaryNickname(String beneficiaryNickname) {
        this.beneficiaryNickname = beneficiaryNickname;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public String getBeneficiaryType() {
        return beneficiaryType;
    }

    public void setBeneficiaryType(String beneficiaryType) {
        this.beneficiaryType = beneficiaryType;
    }
}

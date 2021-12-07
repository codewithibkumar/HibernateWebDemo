package ducat.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class Address {

	@Column(name="Corresspondence_Address")
	private String corr_address;
	@Override
	public String toString() {
		return "Address [corr_address=" + corr_address + ", permanent_address=" + permanent_address + "]";
	}
	private String permanent_address;
	public String getCorr_address() {
		return corr_address;
	}
	public void setCorr_address(String corr_address) {
		this.corr_address = corr_address;
	}
	public String getPermanent_address() {
		return permanent_address;
	}
	public void setPermanent_address(String permanent_address) {
		this.permanent_address = permanent_address;
	}
	
}

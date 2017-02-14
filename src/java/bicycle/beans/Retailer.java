/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bicycle.beans;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Alam
 */
@Entity
@Table(name = "retailer")
@NamedQueries({
    @NamedQuery(name = "Retailer.findAll", query = "SELECT r FROM Retailer r"),
    @NamedQuery(name = "Retailer.findByRetailerID", query = "SELECT r FROM Retailer r WHERE r.retailerID = :retailerID"),
    @NamedQuery(name = "Retailer.findByNameOfRetailer", query = "SELECT r FROM Retailer r WHERE r.nameOfRetailer = :nameOfRetailer"),
    @NamedQuery(name = "Retailer.findByPostalAddress", query = "SELECT r FROM Retailer r WHERE r.postalAddress = :postalAddress"),
    @NamedQuery(name = "Retailer.findByEmailAddress", query = "SELECT r FROM Retailer r WHERE r.emailAddress = :emailAddress"),
    @NamedQuery(name = "Retailer.findByPhoneNumber", query = "SELECT r FROM Retailer r WHERE r.phoneNumber = :phoneNumber")})
public class Retailer implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Retailer_ID")
    private Integer retailerID;
    @Basic(optional = false)
    @Column(name = "Name_Of_Retailer")
    private String nameOfRetailer;
    @Basic(optional = false)
    @Column(name = "Postal_Address")
    private String postalAddress;
    @Basic(optional = false)
    @Column(name = "Email_Address")
    private String emailAddress;
    @Basic(optional = false)
    @Column(name = "Phone_Number")
    private int phoneNumber;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "retailer")
    private List<BicycleDetail> bicycleDetailList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "retailer")
    private List<BicycleOption> bicycleOptionList;

    public Retailer() {
    }

    public Retailer(Integer retailerID) {
        this.retailerID = retailerID;
    }

    public Retailer(Integer retailerID, String nameOfRetailer, String postalAddress, String emailAddress, int phoneNumber) {
        this.retailerID = retailerID;
        this.nameOfRetailer = nameOfRetailer;
        this.postalAddress = postalAddress;
        this.emailAddress = emailAddress;
        this.phoneNumber = phoneNumber;
    }

    public Integer getRetailerID() {
        return retailerID;
    }

    public void setRetailerID(Integer retailerID) {
        this.retailerID = retailerID;
    }

    public String getNameOfRetailer() {
        return nameOfRetailer;
    }

    public void setNameOfRetailer(String nameOfRetailer) {
        this.nameOfRetailer = nameOfRetailer;
    }

    public String getPostalAddress() {
        return postalAddress;
    }

    public void setPostalAddress(String postalAddress) {
        this.postalAddress = postalAddress;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public List<BicycleDetail> getBicycleDetailList() {
        return bicycleDetailList;
    }

    public void setBicycleDetailList(List<BicycleDetail> bicycleDetailList) {
        this.bicycleDetailList = bicycleDetailList;
    }

    public List<BicycleOption> getBicycleOptionList() {
        return bicycleOptionList;
    }

    public void setBicycleOptionList(List<BicycleOption> bicycleOptionList) {
        this.bicycleOptionList = bicycleOptionList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (retailerID != null ? retailerID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Retailer)) {
            return false;
        }
        Retailer other = (Retailer) object;
        if ((this.retailerID == null && other.retailerID != null) || (this.retailerID != null && !this.retailerID.equals(other.retailerID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bicycle.beans.Retailer[retailerID=" + retailerID + "]";
    }

}

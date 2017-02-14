/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bicycle.beans;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Alam
 */
@Entity
@Table(name = "bicycle_option")
@NamedQueries({
    @NamedQuery(name = "BicycleOption.findAll", query = "SELECT b FROM BicycleOption b"),
    @NamedQuery(name = "BicycleOption.findByBicycleOptionID", query = "SELECT b FROM BicycleOption b WHERE b.bicycleOptionID = :bicycleOptionID"),
    @NamedQuery(name = "BicycleOption.findByNameOfOption", query = "SELECT b FROM BicycleOption b WHERE b.nameOfOption = :nameOfOption"),
    @NamedQuery(name = "BicycleOption.findByDeacriptionOfOption", query = "SELECT b FROM BicycleOption b WHERE b.deacriptionOfOption = :deacriptionOfOption"),
    @NamedQuery(name = "BicycleOption.findByPriceOfOption", query = "SELECT b FROM BicycleOption b WHERE b.priceOfOption = :priceOfOption")})
public class BicycleOption implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "Bicycle_Option_ID")
    private Integer bicycleOptionID;
    @Basic(optional = false)
    @Column(name = "Name_Of_Option")
    private String nameOfOption;
    @Basic(optional = false)
    @Column(name = "Deacription_Of_Option")
    private String deacriptionOfOption;
    @Basic(optional = false)
    @Column(name = "Price_Of_Option")
    private int priceOfOption;
    @JoinColumn(name = "Retailer_ID", referencedColumnName = "Retailer_ID")
    @ManyToOne(optional = false)
    private Retailer retailer;

    public BicycleOption() {
    }

    public BicycleOption(Integer bicycleOptionID) {
        this.bicycleOptionID = bicycleOptionID;
    }

    public BicycleOption(Integer bicycleOptionID, String nameOfOption, String deacriptionOfOption, int priceOfOption) {
        this.bicycleOptionID = bicycleOptionID;
        this.nameOfOption = nameOfOption;
        this.deacriptionOfOption = deacriptionOfOption;
        this.priceOfOption = priceOfOption;
    }

    public Integer getBicycleOptionID() {
        return bicycleOptionID;
    }

    public void setBicycleOptionID(Integer bicycleOptionID) {
        this.bicycleOptionID = bicycleOptionID;
    }

    public String getNameOfOption() {
        return nameOfOption;
    }

    public void setNameOfOption(String nameOfOption) {
        this.nameOfOption = nameOfOption;
    }

    public String getDeacriptionOfOption() {
        return deacriptionOfOption;
    }

    public void setDeacriptionOfOption(String deacriptionOfOption) {
        this.deacriptionOfOption = deacriptionOfOption;
    }

    public int getPriceOfOption() {
        return priceOfOption;
    }

    public void setPriceOfOption(int priceOfOption) {
        this.priceOfOption = priceOfOption;
    }

    public Retailer getRetailer() {
        return retailer;
    }

    public void setRetailer(Retailer retailer) {
        this.retailer = retailer;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (bicycleOptionID != null ? bicycleOptionID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BicycleOption)) {
            return false;
        }
        BicycleOption other = (BicycleOption) object;
        if ((this.bicycleOptionID == null && other.bicycleOptionID != null) || (this.bicycleOptionID != null && !this.bicycleOptionID.equals(other.bicycleOptionID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bicycle.beans.BicycleOption[bicycleOptionID=" + bicycleOptionID + "]";
    }

}

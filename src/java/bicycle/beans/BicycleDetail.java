/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bicycle.beans;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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
@Table(name = "bicycle_detail")
@NamedQueries({
    @NamedQuery(name = "BicycleDetail.findAll", query = "SELECT b FROM BicycleDetail b"),
    @NamedQuery(name = "BicycleDetail.findByBicycleDetailID", query = "SELECT b FROM BicycleDetail b WHERE b.bicycleDetailID = :bicycleDetailID"),
    @NamedQuery(name = "BicycleDetail.findByMake", query = "SELECT b FROM BicycleDetail b WHERE b.make = :make"),
    @NamedQuery(name = "BicycleDetail.findByModel", query = "SELECT b FROM BicycleDetail b WHERE b.model = :model"),
    @NamedQuery(name = "BicycleDetail.findByType", query = "SELECT b FROM BicycleDetail b WHERE b.type = :type"),
    @NamedQuery(name = "BicycleDetail.findByFrameSize", query = "SELECT b FROM BicycleDetail b WHERE b.frameSize = :frameSize"),
    @NamedQuery(name = "BicycleDetail.findByWheelSize", query = "SELECT b FROM BicycleDetail b WHERE b.wheelSize = :wheelSize"),
    @NamedQuery(name = "BicycleDetail.findByColour", query = "SELECT b FROM BicycleDetail b WHERE b.colour = :colour"),
    @NamedQuery(name = "BicycleDetail.findByNumberOfGears", query = "SELECT b FROM BicycleDetail b WHERE b.numberOfGears = :numberOfGears"),
    @NamedQuery(name = "BicycleDetail.findByBasicPrice", query = "SELECT b FROM BicycleDetail b WHERE b.basicPrice = :basicPrice")})
public class BicycleDetail implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Bicycle_Detail_ID")
    private Integer bicycleDetailID;
    @Basic(optional = false)
    @Column(name = "Make")
    private String make;
    @Column(name = "Model")
    private String model;
    @Column(name = "Type")
    private String type;
    @Basic(optional = false)
    @Column(name = "Frame_Size")
    private int frameSize;
    @Basic(optional = false)
    @Column(name = "Wheel_Size")
    private int wheelSize;
    @Column(name = "Colour")
    private String colour;
    @Basic(optional = false)
    @Column(name = "Number_Of_Gears")
    private int numberOfGears;
    @Basic(optional = false)
    @Column(name = "Basic_Price")
    private int basicPrice;
    @JoinColumn(name = "Retailer_ID", referencedColumnName = "Retailer_ID")
    @ManyToOne(optional = false)
    private Retailer retailer;

    public BicycleDetail() {
    }

    public BicycleDetail(Integer bicycleDetailID) {
        this.bicycleDetailID = bicycleDetailID;
    }

    public BicycleDetail(Integer bicycleDetailID, String make, int frameSize, int wheelSize, int numberOfGears, int basicPrice) {
        this.bicycleDetailID = bicycleDetailID;
        this.make = make;
        this.frameSize = frameSize;
        this.wheelSize = wheelSize;
        this.numberOfGears = numberOfGears;
        this.basicPrice = basicPrice;
    }

    public Integer getBicycleDetailID() {
        return bicycleDetailID;
    }

    public void setBicycleDetailID(Integer bicycleDetailID) {
        this.bicycleDetailID = bicycleDetailID;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getFrameSize() {
        return frameSize;
    }

    public void setFrameSize(int frameSize) {
        this.frameSize = frameSize;
    }

    public int getWheelSize() {
        return wheelSize;
    }

    public void setWheelSize(int wheelSize) {
        this.wheelSize = wheelSize;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public int getNumberOfGears() {
        return numberOfGears;
    }

    public void setNumberOfGears(int numberOfGears) {
        this.numberOfGears = numberOfGears;
    }

    public int getBasicPrice() {
        return basicPrice;
    }

    public void setBasicPrice(int basicPrice) {
        this.basicPrice = basicPrice;
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
        hash += (bicycleDetailID != null ? bicycleDetailID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BicycleDetail)) {
            return false;
        }
        BicycleDetail other = (BicycleDetail) object;
        if ((this.bicycleDetailID == null && other.bicycleDetailID != null) || (this.bicycleDetailID != null && !this.bicycleDetailID.equals(other.bicycleDetailID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bicycle.beans.BicycleDetail[bicycleDetailID=" + bicycleDetailID + "]";
    }

}

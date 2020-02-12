package in.nit.dao;

import java.util.List;

import in.nit.model.ShipmentType;

public interface IShipmentTypeDao {
    Integer saveShipmentType(ShipmentType ob);
    List<ShipmentType> getAllShipmentType();
}  

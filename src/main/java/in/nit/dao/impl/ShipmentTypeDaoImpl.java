package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IShipmentTypeDao;
import in.nit.model.ShipmentType;
@Repository
public class ShipmentTypeDaoImpl implements IShipmentTypeDao {
    @Autowired
	private HibernateTemplate ht;
    
	public Integer saveShipmentType(ShipmentType ob) {
		
		return (Integer)ht.save(ob);
	}

	
	public List<ShipmentType> getAllShipmentType() {
		
		return ht.loadAll(ShipmentType.class);
	}

}

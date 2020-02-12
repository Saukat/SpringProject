package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.nit.model.ShipmentType;
import in.nit.service.IShipmentTypeService;
@Controller
@RequestMapping("/shipment")
public class ShipmentTypeController {
	
	@Autowired
	private IShipmentTypeService service;
	
	@RequestMapping("/register")//GET
       public String showRegPage() {
    	   return "ShipmentTypeRegister";
       }
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String saveShipment(@ModelAttribute ShipmentType shipmentType,Model model)
			 {
		  Integer id=service.saveShipmentType(shipmentType);
		  
		  String message="ShipmentType '"+id+"' Saved";
		  model.addAttribute("message", message);
		return "ShipmentTypeRegister";
	}
	
	@RequestMapping("/all")//GET
    public String getAllShipmentType(Model model) {
		List<ShipmentType> list=service.getAllShipmentType();
		model.addAttribute("list", list);
 	   return "ShipmentTypeData";
    }
}

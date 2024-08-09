package com.vehicle.challan.servicesImpl;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.vehicle.challan.entity.Challan;
import com.vehicle.challan.entity.Vehicle;
import com.vehicle.challan.repository.ChallanRepository;
import com.vehicle.challan.repository.ChallanRepositoryJPA;
import com.vehicle.challan.repository.VehicleRepository;
import com.vehicle.challan.repositoryImpl.ChallanRepositoryImpl;
import com.vehicle.challan.services.ChallanService;

@Service
public class ChallanServiceImpl implements ChallanService {
	
	@Autowired
	private ChallanRepositoryJPA challanRepositoryJPA;

//	@Autowired
//	private ChallanRepository challanRepository;

	@Autowired
	private VehicleRepository vehicleRepository;

	@Override
	public Challan save(Challan challan) {
		return challanRepositoryJPA.save(challan);
	}

	@Override
	public List<Challan> getAllChallanByVehicleId(String vNumber) {
		Vehicle vehicle = vehicleRepository.findByvNumber(vNumber);
		return challanRepositoryJPA.findByVehicle(vehicle);
	}

	@Override
	public Challan updateChallan(Challan challan) {
//		return challanRepository.updateChallan(challan);
		return null;
	}

	@Override
	public void delete(Long challanId) {
		challanRepositoryJPA.deleteById(challanId);
	}


	@Override
	public void generatePdf(String id) {
		Challan challan = (Challan) challanRepositoryJPA.findAll();
		Document document = new Document();
		try  {   
			PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("C:\\PdfGenrater"));  
			System.out.println("PDF created.");
			document.open();
			document.add(new Paragraph("World Champion"));  
			
			
			
			document.close();  
			writer.close();  
			}   
			catch (DocumentException e)  {  
				e.printStackTrace();  
			}  
		
			catch (FileNotFoundException e)  {  
			e.printStackTrace();  
			}  
			
		
	}
	
	

}

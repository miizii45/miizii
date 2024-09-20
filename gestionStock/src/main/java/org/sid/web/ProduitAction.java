package org.sid.web;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.List;
import org.sid.entities.produits_stock;
import org.sid.service.ICatalogueService;
import org.sid.service.SingletonService;
import org.springframework.beans.factory.annotation.Autowired;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import com.opensymphony.xwork2.ActionSupport;
import org.springframework.web.servlet.ModelAndView;

public class ProduitAction extends ActionSupport{
	 final ModelAndView model = new ModelAndView();
	public produits_stock produit=new produits_stock();
	public List<produits_stock> produits;
	public int code;
	public boolean Mode=false;
	@Autowired
	private ICatalogueService service=SingletonService.getService();
	
	public String index() {
		produits=service.listsProduits();
		return SUCCESS;
	}
	
	public String pdf() {
		
		return SUCCESS;
	}
	
public String pdfa() {
		
		return SUCCESS;
	}
	public String save() {
		if(Mode==false) 
		service.addProduit(produit);
		else
		service.updateProduit(produit);
		produits=service.listsProduits();
		return SUCCESS;
	}
	public String delete() {
		service.deleteProduit(code);
		produits=service.listsProduits();
		return SUCCESS;
	}
	public String edit() {
		Mode=true;
		produit=service.getProduits(code);
		produits=service.listsProduits();
		return SUCCESS;
	}
	
	private void createPdfReport(final List<produits_stock> produits) throws JRException {
        // Fetching the .jrxml file from the resources folder.
        final InputStream stream = this.getClass().getResourceAsStream("/produits_stock.jrxml");
 
        // Compile the Jasper report from .jrxml to .japser
        final JasperReport report = JasperCompileManager.compileReport(stream);
 
        // Fetching the employees from the data source.
        final JRBeanCollectionDataSource source = new JRBeanCollectionDataSource(produits);
 
        // Adding the additional parameters to the pdf.
        final Map<String, Object> parameters = new HashMap<>();
        parameters.put("createdBy", "harrakAhmed.com");
 
        // Filling the report with the employee data and additional parameters information.
        final JasperPrint print = JasperFillManager.fillReport(report, parameters, source);
 
        // Users can change as per their project requrirements or can take it as request input requirement.
        // For simplicity, this tutorial will automatically place the file under the "c:" drive.
        // If users want to download the pdf file on the browser, then they need to use the "Content-Disposition" technique.
        final String filePath = "\\";
        // Export the report to a PDF file.
        JasperExportManager.exportReportToPdfFile(print, filePath + "Employee_report.pdf");
    }
	
	public String viewReport() {
		 System.out.println("Preparing the pdf report via jasper.");
        try {
            createPdfReport(service.listsProduits());
            System.out.println("File successfully saved at the given path.");
        } catch (final Exception e) {
        	System.out.println("Some error has occurred while preparing the employee pdf report.");
            e.printStackTrace();
        }
        // Returning the view name as the index page for ease.
        model.setViewName("welcome");
        return SUCCESS;
    }
	
}

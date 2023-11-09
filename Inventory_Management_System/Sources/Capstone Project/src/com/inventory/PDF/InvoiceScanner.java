package com.inventory.PDF;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;
import org.apache.pdfbox.Loader;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.rendering.ImageType;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.apache.pdfbox.text.PDFTextStripper;

// Method for importing data from PDF
public class InvoiceScanner {
    
    public String getText(File selectedFile)
    {
        System.out.println(selectedFile.getName());
        try{
            String text;
            //Instantiate PDFTextStripper class
            try(PDDocument document = Loader.loadPDF(selectedFile)) {
                //Instantiate PDFTextStripper class
                PDFTextStripper pdfStripper = new PDFTextStripper();
                //Retrieving text from PDF document
                text = pdfStripper.getText(document);
                System.out.print(text.length());
                try {
                    if(text.length() < 5){
                        text = getTextFromScan(document);
                        System.out.print(text.length());
                    }
                }catch (TesseractException e) {
                    e.printStackTrace();
                }
                //Closing the document
            }
            return text;
        }
        catch(IOException e){
            e.printStackTrace();
        }
        return "Oops.";
    }
    
    private String getTextFromScan(PDDocument document) throws IOException, TesseractException {
        // Extract images from file
	PDFRenderer pdfRenderer = new PDFRenderer(document);
	StringBuilder out = new StringBuilder();
		
	Tesseract _tesseract = new Tesseract();
	_tesseract.setDatapath("lib/Tess4J/tessdata");
	_tesseract.setLanguage("eng"); // choose your language
				
	for (int page = 0; page < document.getNumberOfPages(); page++)
	{ 
            BufferedImage bim = pdfRenderer.renderImageWithDPI(page, 300, ImageType.RGB);
            // Create a temp image file
    	    File temp = File.createTempFile("tempfile_" + page, ".png"); 
    	    ImageIO.write(bim, "png", temp);
	        
    	    String result = _tesseract.doOCR(temp);
            out.append(result);
            temp.delete();
            
        }
        return out.toString();
    }
}

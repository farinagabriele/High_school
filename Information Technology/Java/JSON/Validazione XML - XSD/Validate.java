// Packages
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.*;
import org.xml.sax.SAXException;
import java.io.*;

public class Validate {
    public static void validate(String XML, String XSD) throws SAXException, IOException 
    {
        // Creazione schema di validazione
        SchemaFactory factory = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
        File schemaFile = new File(XSD);
        Schema schema = factory.newSchema(schemaFile);

        
        // Validatore
        Validator validator = schema.newValidator();

        // Trasformazione del documento XML in uno stream
        Source source = new StreamSource(XML);

        // Validazione documento XML
        validator.validate(source);
    }

    public static void main(String args[]) throws IOException
    {
        try
        {
            // Chiamata del validatore del documento XML
            Validate.validate("src/prova_xsd/persona.xml", "src/prova_xsd/prova.xsd");
            System.out.println("Documento valido!");
        }
        catch (SAXException exception)
        {
            System.out.println("Attenzione!! Documento non valido!");
            System.out.println(exception.getMessage());
        }
        }
}

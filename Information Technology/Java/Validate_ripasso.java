// Packages
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.*;
import org.xml.sax.SAXException;
import java.io.*;

public class Validate_ripasso {
    public static void validate(String XML, String XSD) throws SAXException, IOException
    {
        // Creazione schema di validazione
        SchemaFactory factory = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
        File schemaFile = new File(XSD);
        Schema schema = factory.newSchema(schemaFile);

        // Creazione validatore dello schema
        Validator validator = schema.newValidator();

        // Trasformazione documento da validare in uno Stream
        Source streamXML = new StreamSource(XML);

        // Validazione del documento
        validator.validate(streamXML);
    }

    public static void main(String args[]) throws IOException
    {
        try
        {
            // Chiamata del validatore del documento XML
            Validate_ripasso.validate("Java/Validazione xml con java/xml_validatiom_project/src/prova_xsd/persona.xml", "Java/Validazione xml con java/xml_validatiom_project/src/prova_xsd/prova.xsd");
            System.out.println("Documento valido!");
        }
        catch (SAXException exception)
        {
            System.out.println("Attenzione!! Documento non valido!");
            System.out.println(exception.getMessage());
        }
        }
}

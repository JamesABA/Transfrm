package com.ba.xslttransform;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import java.io.File;
import java.io.IOException;


public class Xtran {

    public static void main(String[] argv) {

        //zee plan..
        // Transform from unverified XML / XSL
        // Validate output against XSD

        Params params = parseCommandLine(argv);
        if (params == null) {
            System.err.println("Usage: java Xtran -xslt <file> -xml <file> -out <file> [-xsd <file>]");
            System.exit(1);
        }

        System.out.print("\nTransforming <" + params.getsXMLFile() + "> to output file <" + params.getsOutputFile() + ">..");
        transformXML(params);

        if (params.getsSchema() != null) {
            System.out.print("Validating..");
            validateXML(params);
        }

        System.out.println("Done!");


    }

    static boolean transformXML(Params params) {

        try {
            final DocumentBuilder builder =
                    DocumentBuilderFactory.newInstance().newDocumentBuilder();
            final Document document =
                    builder.parse(new File(params.getsXMLFile()));

            final TransformerFactory tFactory =
                    TransformerFactory.newInstance();
            final StreamSource stylesource =
                    new StreamSource(new File(params.getsXSLTFile()));
            final Transformer transformer =
                    tFactory.newTransformer(stylesource);

            final DOMSource source =
                    new DOMSource(document);
            final StreamResult result =
                    new StreamResult(new File(params.getsOutputFile()));

            transformer.transform(source, result);

        } catch (TransformerConfigurationException tce) {
            System.out.println("\n** Transformer Factory error");
            System.out.println("   " + tce.getMessage());
            Throwable x = tce;

            if (tce.getException() != null) {
                x = tce.getException();
            }

            x.printStackTrace();
            return false;
        } catch (TransformerException te) {
            System.out.println("\n** Transformation error");
            System.out.println("   " + te.getMessage());
            Throwable x = te;

            if (te.getException() != null) {
                x = te.getException();
            }

            x.printStackTrace();
            return false;
        } catch (SAXException sxe) {
            Exception x = sxe;

            if (sxe.getException() != null) {
                x = sxe.getException();
            }

            x.printStackTrace();
            return false;
        } catch (ParserConfigurationException pce) {
            pce.printStackTrace();
            return false;
        } catch (IOException ioe) {
            ioe.printStackTrace();
            return false;
        }

        return true;
    }

    static boolean validateXML(Params params) {

        try {

            final SchemaFactory schemaFactory =
                    SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
            final Schema schema =
                    schemaFactory.newSchema(new File(params.getsSchema()));
            final Validator validator =
                    schema.newValidator();

            validator.validate(new StreamSource(new File(params.getsOutputFile())));

        } catch (Exception e) {
            //Could do with proper handling but we're just a console app..
            System.err.println("Error in validation - " + e);

        }

        return true;
    }

    static Params parseCommandLine(String args[]) {

        Params params = new Params();
        int iParam = 0;
        boolean bSkipParam = false;

        for (String arg : args) {

            if (bSkipParam) {
                bSkipParam = false;
                continue;
            }

            switch (arg) {
                case "-xsl":
                case "-xslt":
                    params.setsXSLTFile(args[++iParam]);
                    bSkipParam = true;
                    break;

                case "-xml":
                case "-data":
                    params.setsXMLFile(args[++iParam]);
                    bSkipParam = true;
                    break;

                case "-out":
                case "-output":
                    params.setsOutputFile(args[++iParam]);
                    bSkipParam = true;
                    break;

                case "-xsd":
                case "-schema":
                    params.setsSchema(args[++iParam]);
                    bSkipParam = true;
                    break;

                default:
                    return null;
            }
            if (iParam++ == args.length - 1)
                break;
        }

        if (params.getsXMLFile() == null ||
                params.getsOutputFile() == null ||
                params.getsXSLTFile() == null)
            return null;

        return params;
    }


    static class Params {

        String sXSLTFile;
        String sXMLFile;
        String sOutputFile;
        String sSchema;

        public String getsXSLTFile() {
            return sXSLTFile;
        }

        public void setsXSLTFile(String sXSLTFile) {
            this.sXSLTFile = sXSLTFile;
        }

        public String getsXMLFile() {
            return sXMLFile;
        }

        public void setsXMLFile(String sXMLFile) {
            this.sXMLFile = sXMLFile;
        }

        public String getsOutputFile() {
            return sOutputFile;
        }

        public void setsOutputFile(String sOutputFile) {
            this.sOutputFile = sOutputFile;
        }

        public String getsSchema() {
            return sSchema;
        }

        public void setsSchema(String sSchema) {
            this.sSchema = sSchema;
        }

    }

}

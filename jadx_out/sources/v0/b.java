package v0;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.seamless.xml.SAXParser;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;

/* loaded from: classes3.dex */
public class b extends SAXParser {
    @Override // org.seamless.xml.SAXParser
    public XMLReader create() throws ParserConfigurationException, SAXException {
        try {
            SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            if (getSchemaSources() != null) {
                sAXParserFactoryNewInstance.setSchema(createSchema(getSchemaSources()));
            }
            XMLReader xMLReader = sAXParserFactoryNewInstance.newSAXParser().getXMLReader();
            xMLReader.setErrorHandler(getErrorHandler());
            return xMLReader;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}

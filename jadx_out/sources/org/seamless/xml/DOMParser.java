package org.seamless.xml;

import com.baidu.mobads.sdk.internal.a;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.sax.SAXSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;
import org.seamless.xml.DOM;
import org.w3c.dom.CDATASection;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* loaded from: classes5.dex */
public abstract class DOMParser<D extends DOM> implements ErrorHandler, EntityResolver {
    protected Schema schema;
    protected Source[] schemaSources;
    private static Logger log = Logger.getLogger(DOMParser.class.getName());
    public static final URL XML_SCHEMA_RESOURCE = Thread.currentThread().getContextClassLoader().getResource("org/seamless/schemas/xml.xsd");

    public static abstract class NodeVisitor {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private short nodeType;

        public NodeVisitor(short s2) {
            this.nodeType = s2;
        }

        public boolean isHalted() {
            return false;
        }

        public abstract void visit(Node node);
    }

    public DOMParser() {
        this(null);
    }

    public static void accept(Node node, NodeVisitor nodeVisitor) {
        if (node == null || nodeVisitor.isHalted()) {
            return;
        }
        NodeList childNodes = node.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == nodeVisitor.nodeType) {
                nodeVisitor.visit(nodeItem);
                if (nodeVisitor.isHalted()) {
                    return;
                }
            }
            accept(nodeItem, nodeVisitor);
        }
    }

    public static String escape(String str) {
        return escape(str, false, false);
    }

    public static String stripElements(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("<([a-zA-Z]|/).*?>", "");
    }

    public static String wrap(String str, String str2) {
        return wrap(str, null, str2);
    }

    public abstract D createDOM(Document document);

    public D createDocument() {
        try {
            return (D) createDOM(createFactory(false).newDocumentBuilder().newDocument());
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public DocumentBuilderFactory createFactory(boolean z2) throws ParserConfigurationException, ParserException {
        DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
        try {
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            if (!z2) {
                return documentBuilderFactoryNewInstance;
            }
            documentBuilderFactoryNewInstance.setXIncludeAware(true);
            documentBuilderFactoryNewInstance.setFeature("http://apache.org/xml/features/xinclude/fixup-base-uris", false);
            documentBuilderFactoryNewInstance.setFeature("http://apache.org/xml/features/xinclude/fixup-language", false);
            documentBuilderFactoryNewInstance.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
            documentBuilderFactoryNewInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            documentBuilderFactoryNewInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            documentBuilderFactoryNewInstance.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
            documentBuilderFactoryNewInstance.setXIncludeAware(false);
            documentBuilderFactoryNewInstance.setExpandEntityReferences(false);
            documentBuilderFactoryNewInstance.setSchema(getSchema());
            documentBuilderFactoryNewInstance.setFeature("http://apache.org/xml/features/validation/dynamic", true);
            return documentBuilderFactoryNewInstance;
        } catch (ParserConfigurationException e2) {
            throw new ParserException(e2);
        }
    }

    public Transformer createTransformer(String str, int i2, boolean z2) throws TransformerConfigurationException, TransformerFactoryConfigurationError, ParserException, IllegalArgumentException {
        try {
            TransformerFactory transformerFactoryNewInstance = TransformerFactory.newInstance();
            if (i2 > 0) {
                try {
                    transformerFactoryNewInstance.setAttribute("indent-number", Integer.valueOf(i2));
                } catch (IllegalArgumentException unused) {
                }
            }
            Transformer transformerNewTransformer = transformerFactoryNewInstance.newTransformer();
            transformerNewTransformer.setOutputProperty("omit-xml-declaration", z2 ? "no" : "yes");
            if (z2) {
                try {
                    transformerNewTransformer.setOutputProperty("http://www.oracle.com/xml/is-standalone", "yes");
                } catch (IllegalArgumentException unused2) {
                }
            }
            transformerNewTransformer.setOutputProperty("indent", i2 > 0 ? "yes" : "no");
            if (i2 > 0) {
                transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", Integer.toString(i2));
            }
            transformerNewTransformer.setOutputProperty("method", str);
            return transformerNewTransformer;
        } catch (Exception e2) {
            throw new ParserException(e2);
        }
    }

    public XPath createXPath(NamespaceContext namespaceContext) {
        XPath xPathNewXPath = createXPathFactory().newXPath();
        xPathNewXPath.setNamespaceContext(namespaceContext);
        return xPathNewXPath;
    }

    public XPathFactory createXPathFactory() {
        return XPathFactory.newInstance();
    }

    @Override // org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
        throw new SAXException(new ParserException(sAXParseException));
    }

    @Override // org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        throw new SAXException(new ParserException(sAXParseException));
    }

    public Schema getSchema() {
        if (this.schema == null) {
            try {
                SchemaFactory schemaFactoryNewInstance = SchemaFactory.newInstance("http://www.w3.org/2001/XMLSchema");
                schemaFactoryNewInstance.setResourceResolver(new CatalogResourceResolver(new HashMap<URI, URL>() { // from class: org.seamless.xml.DOMParser.1
                    {
                        put(DOM.XML_SCHEMA_NAMESPACE, DOMParser.XML_SCHEMA_RESOURCE);
                    }
                }));
                Source[] sourceArr = this.schemaSources;
                if (sourceArr != null) {
                    this.schema = schemaFactoryNewInstance.newSchema(sourceArr);
                } else {
                    this.schema = schemaFactoryNewInstance.newSchema();
                }
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
        return this.schema;
    }

    public Object getXPathResult(DOM dom, XPath xPath, String str, QName qName) {
        return getXPathResult(dom.getW3CDocument(), xPath, str, qName);
    }

    public boolean isIgnorableWSNode(Node node) {
        return node.getNodeType() == 3 && node.getTextContent().matches("[\\t\\n\\x0B\\f\\r\\s]+");
    }

    public D parse(URL url) throws ParserException {
        return (D) parse(url, true);
    }

    public String print(DOM dom) throws ParserException {
        return print(dom, 4, true);
    }

    public String printHTML(Document document) throws ParserException {
        return printHTML(document, 4, true, true);
    }

    public void removeIgnorableWSNodes(Element element) throws DOMException {
        Node firstChild = element.getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            if (isIgnorableWSNode(firstChild)) {
                element.removeChild(firstChild);
            } else if (firstChild.getNodeType() == 1) {
                removeIgnorableWSNodes((Element) firstChild);
            }
            firstChild = nextSibling;
        }
    }

    @Override // org.xml.sax.EntityResolver
    public InputSource resolveEntity(String str, String str2) throws SAXException, IOException {
        InputSource inputSource = str2.startsWith("file://") ? new InputSource(new FileInputStream(new File(URI.create(str2)))) : new InputSource(new ByteArrayInputStream(new byte[0]));
        inputSource.setPublicId(str);
        inputSource.setSystemId(str2);
        return inputSource;
    }

    public ParserException unwrapException(Exception exc) {
        return (exc.getCause() == null || !(exc.getCause() instanceof ParserException)) ? new ParserException(exc) : (ParserException) exc.getCause();
    }

    public void validate(URL url) throws SAXException, IOException, ParserException {
        if (url == null) {
            throw new IllegalArgumentException("Can't validate null URL");
        }
        log.fine("Validating XML of URL: " + url);
        validate(new StreamSource(url.toString()));
    }

    @Override // org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) throws SAXException {
        log.warning(sAXParseException.toString());
    }

    public DOMParser(Source[] sourceArr) {
        this.schemaSources = sourceArr;
    }

    public static String escape(String str, boolean z2, boolean z3) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            String str2 = cCharAt != '\"' ? cCharAt != '&' ? cCharAt != '<' ? cCharAt != '>' ? null : "&#62;" : "&#60;" : "&#38;" : "&#34;";
            if (str2 != null) {
                sb.append(str2);
            } else {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        if (z3) {
            Matcher matcher = Pattern.compile("(\\n+)(\\s*)(.*)").matcher(string);
            StringBuffer stringBuffer = new StringBuffer();
            while (matcher.find()) {
                String strGroup = matcher.group(2);
                StringBuilder sb2 = new StringBuilder();
                for (int i3 = 0; i3 < strGroup.length(); i3++) {
                    sb2.append("&#160;");
                }
                matcher.appendReplacement(stringBuffer, "$1" + sb2.toString() + "$3");
            }
            matcher.appendTail(stringBuffer);
            string = stringBuffer.toString();
        }
        return z2 ? string.replaceAll("\n", "<br/>") : string;
    }

    public static String wrap(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(str);
        if (str2 != null) {
            sb.append(" xmlns=\"");
            sb.append(str2);
            sb.append("\"");
        }
        sb.append(">");
        sb.append(str3);
        sb.append("</");
        sb.append(str);
        sb.append(">");
        return sb.toString();
    }

    public Object getXPathResult(DOMElement dOMElement, XPath xPath, String str, QName qName) {
        return getXPathResult(dOMElement.getW3CElement(), xPath, str, qName);
    }

    public D parse(String str) throws ParserException {
        return (D) parse(str, true);
    }

    public String print(DOM dom, int i2) throws ParserException {
        return print(dom, i2, true);
    }

    public String printHTML(Document document, int i2, boolean z2, boolean z3) throws TransformerException, DOMException, TransformerFactoryConfigurationError, ParserException, IllegalArgumentException {
        Document document2 = (Document) document.cloneNode(true);
        accept(document2.getDocumentElement(), new NodeVisitor((short) 4) { // from class: org.seamless.xml.DOMParser.2
            @Override // org.seamless.xml.DOMParser.NodeVisitor
            public void visit(Node node) throws DOMException {
                CDATASection cDATASection = (CDATASection) node;
                cDATASection.getParentNode().setTextContent(cDATASection.getData());
            }
        });
        removeIgnorableWSNodes(document2.getDocumentElement());
        try {
            Transformer transformerCreateTransformer = createTransformer(a.f10882f, i2, z2);
            if (z3) {
                transformerCreateTransformer.setOutputProperty("doctype-public", "-//W3C//DTD HTML 4.01 Transitional//EN");
                transformerCreateTransformer.setOutputProperty("doctype-system", "http://www.w3.org/TR/html4/loose.dtd");
            }
            StringWriter stringWriter = new StringWriter();
            transformerCreateTransformer.transform(new DOMSource(document2), new StreamResult(stringWriter));
            stringWriter.flush();
            return stringWriter.toString().replaceFirst("\\s*<META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">", "").replaceFirst("<html xmlns=\"http://www.w3.org/1999/xhtml\">", "<html>");
        } catch (Exception e2) {
            throw new ParserException(e2);
        }
    }

    public XPath createXPath(XPathFactory xPathFactory, NamespaceContext namespaceContext) {
        XPath xPathNewXPath = xPathFactory.newXPath();
        xPathNewXPath.setNamespaceContext(namespaceContext);
        return xPathNewXPath;
    }

    public Object getXPathResult(Node node, XPath xPath, String str, QName qName) {
        try {
            log.fine("Evaluating xpath query: " + str);
            return xPath.evaluate(str, node, qName);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public D parse(File file) throws ParserException {
        return (D) parse(file, true);
    }

    public String print(DOM dom, boolean z2) throws ParserException {
        return print(dom, 4, z2);
    }

    public D parse(InputStream inputStream) throws ParserException {
        return (D) parse(inputStream, true);
    }

    public String print(DOM dom, int i2, boolean z2) throws ParserException {
        return print(dom.getW3CDocument(), i2, z2);
    }

    public void validate(String str) throws SAXException, IOException, ParserException {
        if (str != null) {
            log.fine("Validating XML string characters: " + str.length());
            validate(new SAXSource(new InputSource(new StringReader(str))));
            return;
        }
        throw new IllegalArgumentException("Can't validate null string");
    }

    public D parse(URL url, boolean z2) throws ParserException {
        if (url != null) {
            try {
                return (D) parse(url.openStream(), z2);
            } catch (Exception e2) {
                throw new ParserException("Parsing URL failed: " + url, e2);
            }
        }
        throw new IllegalArgumentException("Can't parse null URL");
    }

    public String print(Document document, int i2, boolean z2) throws DOMException, ParserException {
        removeIgnorableWSNodes(document.getDocumentElement());
        return print(new DOMSource(document.getDocumentElement()), i2, z2);
    }

    public String print(String str, int i2, boolean z2) throws ParserException {
        return print(new StreamSource(new StringReader(str)), i2, z2);
    }

    public void validate(Document document) throws SAXException, IOException, ParserException {
        validate(new DOMSource(document));
    }

    public D parse(String str, boolean z2) throws ParserException {
        if (str != null) {
            return (D) parse(new InputSource(new StringReader(str)), z2);
        }
        throw new IllegalArgumentException("Can't parse null string");
    }

    public String print(Source source, int i2, boolean z2) throws TransformerException, TransformerFactoryConfigurationError, ParserException, IllegalArgumentException {
        try {
            Transformer transformerCreateTransformer = createTransformer("xml", i2, z2);
            transformerCreateTransformer.setOutputProperty("encoding", "utf-8");
            StringWriter stringWriter = new StringWriter();
            transformerCreateTransformer.transform(source, new StreamResult(stringWriter));
            stringWriter.flush();
            return stringWriter.toString();
        } catch (Exception e2) {
            throw new ParserException(e2);
        }
    }

    public void validate(DOM dom) throws SAXException, IOException, ParserException {
        validate(new DOMSource(dom.getW3CDocument()));
    }

    public void validate(Source source) throws SAXException, IOException, ParserException {
        try {
            Validator validatorNewValidator = getSchema().newValidator();
            validatorNewValidator.setErrorHandler(this);
            validatorNewValidator.validate(source);
        } catch (Exception e2) {
            throw unwrapException(e2);
        }
    }

    public D parse(File file, boolean z2) throws ParserException {
        if (file != null) {
            try {
                return (D) parse(file.toURI().toURL(), z2);
            } catch (Exception e2) {
                throw new ParserException("Parsing file failed: " + file, e2);
            }
        }
        throw new IllegalArgumentException("Can't parse null file");
    }

    public D parse(InputStream inputStream, boolean z2) throws ParserException {
        return (D) parse(new InputSource(inputStream), z2);
    }

    public D parse(InputSource inputSource, boolean z2) throws ParserConfigurationException, SAXException, IOException, ParserException {
        try {
            DocumentBuilder documentBuilderNewDocumentBuilder = createFactory(z2).newDocumentBuilder();
            documentBuilderNewDocumentBuilder.setEntityResolver(this);
            documentBuilderNewDocumentBuilder.setErrorHandler(this);
            Document document = documentBuilderNewDocumentBuilder.parse(inputSource);
            document.normalizeDocument();
            return (D) createDOM(document);
        } catch (Exception e2) {
            throw unwrapException(e2);
        }
    }
}

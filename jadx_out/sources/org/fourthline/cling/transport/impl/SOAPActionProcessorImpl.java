package org.fourthline.cling.transport.impl;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import org.fourthline.cling.model.Constants;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.XMLUtil;
import org.fourthline.cling.model.action.ActionArgumentValue;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.control.ActionMessage;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.model.meta.ActionArgument;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.model.types.InvalidValueException;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/* loaded from: classes5.dex */
public class SOAPActionProcessorImpl implements SOAPActionProcessor, ErrorHandler {
    private static Logger log = Logger.getLogger(SOAPActionProcessor.class.getName());

    public DocumentBuilderFactory createDocumentBuilderFactory() throws FactoryConfigurationError {
        return DocumentBuilderFactory.newInstance();
    }

    public ActionArgumentValue createValue(ActionArgument actionArgument, String str) throws ActionException {
        try {
            return new ActionArgumentValue(actionArgument, str);
        } catch (InvalidValueException e2) {
            throw new ActionException(ErrorCode.ARGUMENT_VALUE_INVALID, "Wrong type or invalid value for '" + actionArgument.getName() + "': " + e2.getMessage(), e2);
        }
    }

    public Node findActionArgumentNode(List<Node> list, ActionArgument actionArgument) {
        for (Node node : list) {
            if (actionArgument.isNameOrAlias(getUnprefixedNodeName(node))) {
                return node;
            }
        }
        return null;
    }

    public List<Node> getMatchingNodes(NodeList nodeList, ActionArgument[] actionArgumentArr) throws ActionException {
        ArrayList arrayList = new ArrayList();
        for (ActionArgument actionArgument : actionArgumentArr) {
            arrayList.add(actionArgument.getName());
            arrayList.addAll(Arrays.asList(actionArgument.getAliases()));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < nodeList.getLength(); i2++) {
            Node nodeItem = nodeList.item(i2);
            if (nodeItem.getNodeType() == 1 && arrayList.contains(getUnprefixedNodeName(nodeItem))) {
                arrayList2.add(nodeItem);
            }
        }
        if (arrayList2.size() >= actionArgumentArr.length) {
            return arrayList2;
        }
        throw new ActionException(ErrorCode.ARGUMENT_VALUE_INVALID, "Invalid number of input or output arguments in XML message, expected " + actionArgumentArr.length + " but found " + arrayList2.size());
    }

    public String getMessageBody(ActionMessage actionMessage) throws UnsupportedDataException {
        if (actionMessage.isBodyNonEmptyString()) {
            return actionMessage.getBodyString().trim();
        }
        throw new UnsupportedDataException("Can't transform null or non-string/zero-length body of: " + actionMessage);
    }

    public String getUnprefixedNodeName(Node node) {
        return node.getPrefix() != null ? node.getNodeName().substring(node.getPrefix().length() + 1) : node.getNodeName();
    }

    public void readActionInputArguments(Element element, ActionInvocation actionInvocation) throws ActionException {
        actionInvocation.setInput(readArgumentValues(element.getChildNodes(), actionInvocation.getAction().getInputArguments()));
    }

    public void readActionOutputArguments(Element element, ActionInvocation actionInvocation) throws ActionException {
        actionInvocation.setOutput(readArgumentValues(element.getChildNodes(), actionInvocation.getAction().getOutputArguments()));
    }

    public Element readActionRequestElement(Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) {
        NodeList childNodes = element.getChildNodes();
        log.fine("Looking for action request element matching namespace:" + actionRequestMessage.getActionNamespace());
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1) {
                String unprefixedNodeName = getUnprefixedNodeName(nodeItem);
                if (unprefixedNodeName.equals(actionInvocation.getAction().getName())) {
                    if (nodeItem.getNamespaceURI() == null || !nodeItem.getNamespaceURI().equals(actionRequestMessage.getActionNamespace())) {
                        throw new UnsupportedDataException("Illegal or missing namespace on action request element: " + nodeItem);
                    }
                    log.fine("Reading action request element: " + unprefixedNodeName);
                    return (Element) nodeItem;
                }
            }
        }
        throw new UnsupportedDataException("Could not read action request element matching namespace: " + actionRequestMessage.getActionNamespace());
    }

    public Element readActionResponseElement(Element element, ActionInvocation actionInvocation) {
        NodeList childNodes = element.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1) {
                if (getUnprefixedNodeName(nodeItem).equals(actionInvocation.getAction().getName() + "Response")) {
                    log.fine("Reading action response element: " + getUnprefixedNodeName(nodeItem));
                    return (Element) nodeItem;
                }
            }
        }
        log.fine("Could not read action response element");
        return null;
    }

    public ActionArgumentValue[] readArgumentValues(NodeList nodeList, ActionArgument[] actionArgumentArr) throws ActionException {
        List<Node> matchingNodes = getMatchingNodes(nodeList, actionArgumentArr);
        ActionArgumentValue[] actionArgumentValueArr = new ActionArgumentValue[actionArgumentArr.length];
        for (int i2 = 0; i2 < actionArgumentArr.length; i2++) {
            ActionArgument actionArgument = actionArgumentArr[i2];
            Node nodeFindActionArgumentNode = findActionArgumentNode(matchingNodes, actionArgument);
            if (nodeFindActionArgumentNode == null) {
                throw new ActionException(ErrorCode.ARGUMENT_VALUE_INVALID, "Could not find argument '" + actionArgument.getName() + "' node");
            }
            log.fine("Reading action argument: " + actionArgument.getName());
            actionArgumentValueArr[i2] = createValue(actionArgument, XMLUtil.getTextContent(nodeFindActionArgumentNode));
        }
        return actionArgumentValueArr;
    }

    @Override // org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void readBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws ParserConfigurationException, SAXException, IOException, FactoryConfigurationError, UnsupportedDataException {
        log.fine("Reading body of " + actionRequestMessage + " for: " + actionInvocation);
        if (log.isLoggable(Level.FINER)) {
            log.finer("===================================== SOAP BODY BEGIN ============================================");
            log.finer(actionRequestMessage.getBodyString());
            log.finer("-===================================== SOAP BODY END ============================================");
        }
        String messageBody = getMessageBody(actionRequestMessage);
        try {
            DocumentBuilderFactory documentBuilderFactoryCreateDocumentBuilderFactory = createDocumentBuilderFactory();
            documentBuilderFactoryCreateDocumentBuilderFactory.setNamespaceAware(true);
            DocumentBuilder documentBuilderNewDocumentBuilder = documentBuilderFactoryCreateDocumentBuilderFactory.newDocumentBuilder();
            documentBuilderNewDocumentBuilder.setErrorHandler(this);
            Document document = documentBuilderNewDocumentBuilder.parse(new InputSource(new StringReader(messageBody)));
            readBodyRequest(document, readBodyElement(document), actionRequestMessage, actionInvocation);
        } catch (Exception e2) {
            throw new UnsupportedDataException("Can't transform message payload: " + e2, e2, messageBody);
        }
    }

    public Element readBodyElement(Document document) {
        Element documentElement = document.getDocumentElement();
        if (documentElement == null || !getUnprefixedNodeName(documentElement).equals("Envelope")) {
            throw new RuntimeException("Response root element was not 'Envelope'");
        }
        NodeList childNodes = documentElement.getChildNodes();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1 && getUnprefixedNodeName(nodeItem).equals("Body")) {
                return (Element) nodeItem;
            }
        }
        throw new RuntimeException("Response envelope did not contain 'Body' child element");
    }

    public ActionException readBodyFailure(Document document, Element element) throws Exception {
        return readFaultElement(element);
    }

    public void readBodyRequest(Document document, Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws Exception {
        readActionInputArguments(readActionRequestElement(element, actionRequestMessage, actionInvocation), actionInvocation);
    }

    public void readBodyResponse(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws Exception {
        readActionOutputArguments(readActionResponseElement(element, actionInvocation), actionInvocation);
    }

    public ActionException readFaultElement(Element element) {
        NodeList childNodes = element.getChildNodes();
        boolean z2 = false;
        String textContent = null;
        String textContent2 = null;
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1 && getUnprefixedNodeName(nodeItem).equals("Fault")) {
                NodeList childNodes2 = nodeItem.getChildNodes();
                for (int i3 = 0; i3 < childNodes2.getLength(); i3++) {
                    Node nodeItem2 = childNodes2.item(i3);
                    if (nodeItem2.getNodeType() == 1 && getUnprefixedNodeName(nodeItem2).equals("detail")) {
                        NodeList childNodes3 = nodeItem2.getChildNodes();
                        for (int i4 = 0; i4 < childNodes3.getLength(); i4++) {
                            Node nodeItem3 = childNodes3.item(i4);
                            if (nodeItem3.getNodeType() == 1 && getUnprefixedNodeName(nodeItem3).equals("UPnPError")) {
                                NodeList childNodes4 = nodeItem3.getChildNodes();
                                for (int i5 = 0; i5 < childNodes4.getLength(); i5++) {
                                    Node nodeItem4 = childNodes4.item(i5);
                                    if (nodeItem4.getNodeType() == 1) {
                                        if (getUnprefixedNodeName(nodeItem4).equals(MediationConstant.KEY_ERROR_CODE)) {
                                            textContent = XMLUtil.getTextContent(nodeItem4);
                                        }
                                        if (getUnprefixedNodeName(nodeItem4).equals("errorDescription")) {
                                            textContent2 = XMLUtil.getTextContent(nodeItem4);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                z2 = true;
            }
        }
        if (textContent == null) {
            if (z2) {
                throw new RuntimeException("Received fault element but no error code");
            }
            return null;
        }
        try {
            int iIntValue = Integer.valueOf(textContent).intValue();
            ErrorCode byCode = ErrorCode.getByCode(iIntValue);
            if (byCode != null) {
                log.fine("Reading fault element: " + byCode.getCode() + " - " + textContent2);
                return new ActionException(byCode, textContent2, false);
            }
            log.fine("Reading fault element: " + iIntValue + " - " + textContent2);
            return new ActionException(iIntValue, textContent2);
        } catch (NumberFormatException unused) {
            throw new RuntimeException("Error code was not a number");
        }
    }

    public String toString(Document document) throws Exception {
        String strDocumentToString = XMLUtil.documentToString(document);
        while (true) {
            if (!strDocumentToString.endsWith("\n") && !strDocumentToString.endsWith("\r")) {
                return strDocumentToString;
            }
            strDocumentToString = strDocumentToString.substring(0, strDocumentToString.length() - 1);
        }
    }

    @Override // org.xml.sax.ErrorHandler
    public void warning(SAXParseException sAXParseException) throws SAXException {
        log.warning(sAXParseException.toString());
    }

    public void writeActionInputArguments(Document document, Element element, ActionInvocation actionInvocation) {
        for (ActionArgument actionArgument : actionInvocation.getAction().getInputArguments()) {
            log.fine("Writing action input argument: " + actionArgument.getName());
            XMLUtil.appendNewElement(document, element, actionArgument.getName(), actionInvocation.getInput(actionArgument) != null ? actionInvocation.getInput(actionArgument).toString() : "");
        }
    }

    public void writeActionOutputArguments(Document document, Element element, ActionInvocation actionInvocation) {
        for (ActionArgument actionArgument : actionInvocation.getAction().getOutputArguments()) {
            log.fine("Writing action output argument: " + actionArgument.getName());
            XMLUtil.appendNewElement(document, element, actionArgument.getName(), actionInvocation.getOutput(actionArgument) != null ? actionInvocation.getOutput(actionArgument).toString() : "");
        }
    }

    public Element writeActionRequestElement(Document document, Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws DOMException {
        log.fine("Writing action request element: " + actionInvocation.getAction().getName());
        Element elementCreateElementNS = document.createElementNS(actionRequestMessage.getActionNamespace(), "u:" + actionInvocation.getAction().getName());
        element.appendChild(elementCreateElementNS);
        return elementCreateElementNS;
    }

    public Element writeActionResponseElement(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws DOMException {
        log.fine("Writing action response element: " + actionInvocation.getAction().getName());
        Element elementCreateElementNS = document.createElementNS(actionResponseMessage.getActionNamespace(), "u:" + actionInvocation.getAction().getName() + "Response");
        element.appendChild(elementCreateElementNS);
        return elementCreateElementNS;
    }

    @Override // org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void writeBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        log.fine("Writing body of " + actionRequestMessage + " for: " + actionInvocation);
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            writeBodyRequest(documentNewDocument, writeBodyElement(documentNewDocument), actionRequestMessage, actionInvocation);
            if (log.isLoggable(Level.FINER)) {
                log.finer("===================================== SOAP BODY BEGIN ============================================");
                log.finer(actionRequestMessage.getBodyString());
                log.finer("-===================================== SOAP BODY END ============================================");
            }
        } catch (Exception e2) {
            throw new UnsupportedDataException("Can't transform message payload: " + e2, e2);
        }
    }

    public Element writeBodyElement(Document document) throws DOMException {
        Element elementCreateElementNS = document.createElementNS(Constants.SOAP_NS_ENVELOPE, "s:Envelope");
        Attr attrCreateAttributeNS = document.createAttributeNS(Constants.SOAP_NS_ENVELOPE, "s:encodingStyle");
        attrCreateAttributeNS.setValue(Constants.SOAP_URI_ENCODING_STYLE);
        elementCreateElementNS.setAttributeNode(attrCreateAttributeNS);
        document.appendChild(elementCreateElementNS);
        Element elementCreateElementNS2 = document.createElementNS(Constants.SOAP_NS_ENVELOPE, "s:Body");
        elementCreateElementNS.appendChild(elementCreateElementNS2);
        return elementCreateElementNS2;
    }

    public void writeBodyFailure(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws Exception {
        writeFaultElement(document, element, actionInvocation);
        actionResponseMessage.setBody(toString(document));
    }

    public void writeBodyRequest(Document document, Element element, ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) throws Exception {
        writeActionInputArguments(document, writeActionRequestElement(document, element, actionRequestMessage, actionInvocation), actionInvocation);
        actionRequestMessage.setBody(toString(document));
    }

    public void writeBodyResponse(Document document, Element element, ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws Exception {
        writeActionOutputArguments(document, writeActionResponseElement(document, element, actionResponseMessage, actionInvocation), actionInvocation);
        actionResponseMessage.setBody(toString(document));
    }

    public void writeFaultElement(Document document, Element element, ActionInvocation actionInvocation) throws DOMException {
        Element elementCreateElementNS = document.createElementNS(Constants.SOAP_NS_ENVELOPE, "s:Fault");
        element.appendChild(elementCreateElementNS);
        XMLUtil.appendNewElement(document, elementCreateElementNS, "faultcode", "s:Client");
        XMLUtil.appendNewElement(document, elementCreateElementNS, "faultstring", "UPnPError");
        Element elementCreateElement = document.createElement("detail");
        elementCreateElementNS.appendChild(elementCreateElement);
        Element elementCreateElementNS2 = document.createElementNS(Constants.NS_UPNP_CONTROL_10, "UPnPError");
        elementCreateElement.appendChild(elementCreateElementNS2);
        int errorCode = actionInvocation.getFailure().getErrorCode();
        String message = actionInvocation.getFailure().getMessage();
        log.fine("Writing fault element: " + errorCode + " - " + message);
        XMLUtil.appendNewElement(document, elementCreateElementNS2, MediationConstant.KEY_ERROR_CODE, Integer.toString(errorCode));
        XMLUtil.appendNewElement(document, elementCreateElementNS2, "errorDescription", message);
    }

    @Override // org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void writeBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws UnsupportedDataException {
        log.fine("Writing body of " + actionResponseMessage + " for: " + actionInvocation);
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            Element elementWriteBodyElement = writeBodyElement(documentNewDocument);
            if (actionInvocation.getFailure() != null) {
                writeBodyFailure(documentNewDocument, elementWriteBodyElement, actionResponseMessage, actionInvocation);
            } else {
                writeBodyResponse(documentNewDocument, elementWriteBodyElement, actionResponseMessage, actionInvocation);
            }
            if (log.isLoggable(Level.FINER)) {
                log.finer("===================================== SOAP BODY BEGIN ============================================");
                log.finer(actionResponseMessage.getBodyString());
                log.finer("-===================================== SOAP BODY END ============================================");
            }
        } catch (Exception e2) {
            throw new UnsupportedDataException("Can't transform message payload: " + e2, e2);
        }
    }

    @Override // org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void readBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) throws ParserConfigurationException, SAXException, IOException, FactoryConfigurationError, UnsupportedDataException {
        log.fine("Reading body of " + actionResponseMessage + " for: " + actionInvocation);
        if (log.isLoggable(Level.FINER)) {
            log.finer("===================================== SOAP BODY BEGIN ============================================");
            log.finer(actionResponseMessage.getBodyString());
            log.finer("-===================================== SOAP BODY END ============================================");
        }
        String messageBody = getMessageBody(actionResponseMessage);
        try {
            DocumentBuilderFactory documentBuilderFactoryCreateDocumentBuilderFactory = createDocumentBuilderFactory();
            documentBuilderFactoryCreateDocumentBuilderFactory.setNamespaceAware(true);
            DocumentBuilder documentBuilderNewDocumentBuilder = documentBuilderFactoryCreateDocumentBuilderFactory.newDocumentBuilder();
            documentBuilderNewDocumentBuilder.setErrorHandler(this);
            Document document = documentBuilderNewDocumentBuilder.parse(new InputSource(new StringReader(messageBody)));
            Element bodyElement = readBodyElement(document);
            ActionException bodyFailure = readBodyFailure(document, bodyElement);
            if (bodyFailure == null) {
                readBodyResponse(document, bodyElement, actionResponseMessage, actionInvocation);
            } else {
                actionInvocation.setFailure(bodyFailure);
            }
        } catch (Exception e2) {
            throw new UnsupportedDataException("Can't transform message payload: " + e2, e2, messageBody);
        }
    }

    @Override // org.xml.sax.ErrorHandler
    public void error(SAXParseException sAXParseException) throws SAXException {
        throw sAXParseException;
    }

    @Override // org.xml.sax.ErrorHandler
    public void fatalError(SAXParseException sAXParseException) throws SAXException {
        throw sAXParseException;
    }
}

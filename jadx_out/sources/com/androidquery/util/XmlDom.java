package com.androidquery.util;

import android.util.Xml;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes.dex */
public class XmlDom {
    private Element root;

    public XmlDom(Element element) {
        this.root = element;
    }

    private static List<XmlDom> convert(NodeList nodeList, String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < nodeList.getLength(); i2++) {
            XmlDom xmlDomConvert = convert(nodeList.item(i2), str, str2, str3);
            if (xmlDomConvert != null) {
                arrayList.add(xmlDomConvert);
            }
        }
        return arrayList;
    }

    private String serialize(Element element, int i2) throws IllegalStateException, IOException, IllegalArgumentException {
        String str;
        try {
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            StringWriter stringWriter = new StringWriter();
            xmlSerializerNewSerializer.setOutput(stringWriter);
            xmlSerializerNewSerializer.startDocument("utf-8", null);
            if (i2 > 0) {
                char[] cArr = new char[i2];
                Arrays.fill(cArr, ' ');
                str = new String(cArr);
            } else {
                str = null;
            }
            serialize(this.root, xmlSerializerNewSerializer, 0, str);
            xmlSerializerNewSerializer.endDocument();
            return stringWriter.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private void writeSpace(XmlSerializer xmlSerializer, int i2, String str) throws Exception {
        if (str != null) {
            xmlSerializer.text("\n");
            for (int i3 = 0; i3 < i2; i3++) {
                xmlSerializer.text(str);
            }
        }
    }

    public String attr(String str) {
        return this.root.getAttribute(str);
    }

    public XmlDom child(String str) {
        return child(str, null, null);
    }

    public List<XmlDom> children(String str) {
        return children(str, null, null);
    }

    public Element getElement() {
        return this.root;
    }

    public XmlDom tag(String str) {
        NodeList elementsByTagName = this.root.getElementsByTagName(str);
        if (elementsByTagName == null || elementsByTagName.getLength() <= 0) {
            return null;
        }
        return new XmlDom((Element) elementsByTagName.item(0));
    }

    public List<XmlDom> tags(String str) {
        return tags(str, null, null);
    }

    public String text(String str) {
        XmlDom xmlDomChild = child(str);
        if (xmlDomChild == null) {
            return null;
        }
        return xmlDomChild.text();
    }

    public String toString() {
        return toString(0);
    }

    public XmlDom child(String str, String str2, String str3) {
        List<XmlDom> listChildren = children(str, str2, str3);
        if (listChildren.size() == 0) {
            return null;
        }
        return listChildren.get(0);
    }

    public List<XmlDom> children(String str, String str2, String str3) {
        return convert(this.root.getChildNodes(), str, str2, str3);
    }

    public List<XmlDom> tags(String str, String str2, String str3) {
        return convert(this.root.getElementsByTagName(str), (String) null, str2, str3);
    }

    public String toString(int i2) {
        return serialize(this.root, i2);
    }

    public XmlDom(String str) throws SAXException {
        this(str.getBytes());
    }

    public String text() {
        NodeList childNodes = this.root.getChildNodes();
        if (childNodes.getLength() == 1) {
            return childNodes.item(0).getNodeValue();
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            sb.append(text(childNodes.item(i2)));
        }
        return sb.toString();
    }

    public XmlDom(byte[] bArr) throws SAXException {
        this(new ByteArrayInputStream(bArr));
    }

    public XmlDom tag(String str, String str2, String str3) {
        List<XmlDom> listTags = tags(str, str2, str3);
        if (listTags.size() == 0) {
            return null;
        }
        return listTags.get(0);
    }

    public XmlDom(InputStream inputStream) throws SAXException {
        try {
            this.root = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(inputStream).getDocumentElement();
        } catch (IOException e2) {
            throw new SAXException(e2);
        } catch (ParserConfigurationException unused) {
        }
    }

    private static XmlDom convert(Node node, String str, String str2, String str3) {
        if (node.getNodeType() != 1) {
            return null;
        }
        Element element = (Element) node;
        if ((str == null || str.equals(element.getTagName())) && ((str2 == null || element.hasAttribute(str2)) && (str3 == null || str3.equals(element.getAttribute(str2))))) {
            return new XmlDom(element);
        }
        return null;
    }

    private String text(Node node) throws DOMException {
        String nodeValue;
        short nodeType = node.getNodeType();
        if (nodeType != 3) {
            nodeValue = nodeType != 4 ? null : node.getNodeValue();
        } else {
            nodeValue = node.getNodeValue();
            if (nodeValue != null) {
                nodeValue = nodeValue.trim();
            }
        }
        return nodeValue == null ? "" : nodeValue;
    }

    private void serialize(Element element, XmlSerializer xmlSerializer, int i2, String str) throws Exception {
        String tagName = element.getTagName();
        writeSpace(xmlSerializer, i2, str);
        xmlSerializer.startTag("", tagName);
        if (element.hasAttributes()) {
            NamedNodeMap attributes = element.getAttributes();
            for (int i3 = 0; i3 < attributes.getLength(); i3++) {
                Attr attr = (Attr) attributes.item(i3);
                xmlSerializer.attribute("", attr.getName(), attr.getValue());
            }
        }
        if (element.hasChildNodes()) {
            NodeList childNodes = element.getChildNodes();
            int i4 = 0;
            for (int i5 = 0; i5 < childNodes.getLength(); i5++) {
                Node nodeItem = childNodes.item(i5);
                short nodeType = nodeItem.getNodeType();
                if (nodeType == 1) {
                    serialize((Element) nodeItem, xmlSerializer, i2 + 1, str);
                    i4++;
                } else if (nodeType == 3) {
                    xmlSerializer.text(text(nodeItem));
                } else if (nodeType == 4) {
                    xmlSerializer.cdsect(text(nodeItem));
                }
            }
            if (i4 > 0) {
                writeSpace(xmlSerializer, i2, str);
            }
        }
        xmlSerializer.endTag("", tagName);
    }
}

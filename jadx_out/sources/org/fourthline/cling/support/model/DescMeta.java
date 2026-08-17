package org.fourthline.cling.support.model;

import java.net.URI;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;

/* loaded from: classes5.dex */
public class DescMeta<M> {
    protected String id;
    protected M metadata;
    protected URI nameSpace;
    protected String type;

    public DescMeta() {
    }

    public Document createMetadataDocument() throws DOMException {
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
            documentNewDocument.appendChild(documentNewDocument.createElementNS(DIDLContent.DESC_WRAPPER_NAMESPACE_URI, "desc-wrapper"));
            return documentNewDocument;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public String getId() {
        return this.id;
    }

    public M getMetadata() {
        return this.metadata;
    }

    public URI getNameSpace() {
        return this.nameSpace;
    }

    public String getType() {
        return this.type;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setMetadata(M m2) {
        this.metadata = m2;
    }

    public void setNameSpace(URI uri) {
        this.nameSpace = uri;
    }

    public void setType(String str) {
        this.type = str;
    }

    public DescMeta(String str, String str2, URI uri, M m2) {
        this.id = str;
        this.type = str2;
        this.nameSpace = uri;
        this.metadata = m2;
    }
}

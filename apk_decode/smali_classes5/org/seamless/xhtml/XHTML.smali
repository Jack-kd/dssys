.class public Lorg/seamless/xhtml/XHTML;
.super Lorg/seamless/xml/DOM;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/xhtml/XHTML$ATTR;,
        Lorg/seamless/xhtml/XHTML$ELEMENT;
    }
.end annotation


# static fields
.field public static final NAMESPACE_URI:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final SCHEMA_RESOURCE:Ljava/lang/String; = "org/seamless/schemas/xhtml1-strict.xsd"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/seamless/xml/DOM;-><init>(Lorg/w3c/dom/Document;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createSchemaSources()[Ljavax/xml/transform/Source;
    .locals 3

    .line 1
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/xhtml/XHTML;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "org/seamless/schemas/xhtml1-strict.xsd"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljavax/xml/transform/Source;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    return-object v1
.end method


# virtual methods
.method public copy()Lorg/seamless/xhtml/XHTML;
    .locals 3

    .line 2
    new-instance v0, Lorg/seamless/xhtml/XHTML;

    invoke-virtual {p0}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lorg/seamless/xhtml/XHTML;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/seamless/xml/DOM;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTML;->copy()Lorg/seamless/xhtml/XHTML;

    move-result-object v0

    return-object v0
.end method

.method public createRoot(Ljavax/xml/xpath/XPath;Lorg/seamless/xhtml/XHTML$ELEMENT;)Lorg/seamless/xhtml/Root;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-super {p0, p2}, Lorg/seamless/xml/DOM;->createRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTML;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xhtml/Root;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xhtml/Root;
    .locals 2

    .line 2
    new-instance v0, Lorg/seamless/xhtml/Root;

    invoke-virtual {p0}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/seamless/xhtml/Root;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public bridge synthetic getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTML;->getRoot(Ljavax/xml/xpath/XPath;)Lorg/seamless/xhtml/Root;

    move-result-object p1

    return-object p1
.end method

.method public getRootElementNamespace()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "http://www.w3.org/1999/xhtml"

    .line 2
    .line 3
    return-object v0
.end method

.class public Lorg/seamless/xhtml/XHTMLParser;
.super Lorg/seamless/xml/DOMParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMParser<",
        "Lorg/seamless/xhtml/XHTML;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/seamless/xhtml/XHTML;->createSchemaSources()[Ljavax/xml/transform/Source;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/seamless/xml/DOMParser;-><init>([Ljavax/xml/transform/Source;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public checkDuplicateIdentifiers(Lorg/seamless/xhtml/XHTML;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v1, Lorg/seamless/xhtml/XHTMLParser$1;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, p0, v2, v0}, Lorg/seamless/xhtml/XHTMLParser$1;-><init>(Lorg/seamless/xhtml/XHTMLParser;SLjava/util/Set;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lorg/seamless/xml/DOMParser;->accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xhtml/XHTML;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lorg/seamless/xhtml/XHTML;

    invoke-direct {v0, p1}, Lorg/seamless/xhtml/XHTML;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTMLParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xhtml/XHTML;

    move-result-object p1

    return-object p1
.end method

.method public varargs createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;
    .locals 5

    .line 1
    new-instance v0, Lorg/seamless/xhtml/XHTMLParser$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/seamless/xhtml/XHTMLParser$2;-><init>(Lorg/seamless/xhtml/XHTMLParser;)V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v3, p1, v2

    .line 11
    .line 12
    const-string v4, "http://www.w3.org/1999/xhtml"

    .line 13
    .line 14
    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v0
.end method

.method public createXPath()Ljavax/xml/xpath/XPath;
    .locals 1

    .line 1
    const-string v0, "h"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-super {p0, v0}, Lorg/seamless/xml/DOMParser;->createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

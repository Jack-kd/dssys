.class public Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;
.super Lorg/seamless/xml/DOMParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMParser<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/seamless/xml/DOMParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createDOM(Lorg/w3c/dom/Document;)Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;
    .locals 1

    .line 2
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method public bridge synthetic createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    move-result-object p1

    return-object p1
.end method

.method public varargs createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;
    .locals 5

    .line 1
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser$1;-><init>(Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;)V

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
    const-string v4, "urn:samsung-com:messagebox-1-0"

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
    const-string v0, "m"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;

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

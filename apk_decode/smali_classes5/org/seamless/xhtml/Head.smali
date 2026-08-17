.class public Lorg/seamless/xhtml/Head;
.super Lorg/seamless/xhtml/XHTMLElement;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/seamless/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getDocumentStyles()[Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    .line 2
    .line 3
    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->style:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lorg/seamless/xhtml/XHTMLElement;

    .line 14
    .line 15
    return-object v0
.end method

.method public getHeadTitle()Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    .line 2
    .line 3
    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->title:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$Builder;->firstChildOrNull(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/seamless/xhtml/XHTMLElement;

    .line 14
    .line 15
    return-object v0
.end method

.method public getLinks()[Lorg/seamless/xhtml/Link;
    .locals 2

    .line 1
    new-instance v0, Lorg/seamless/xhtml/Head$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/Head$1;-><init>(Lorg/seamless/xhtml/Head;Lorg/seamless/xml/DOMElement;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->link:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [Lorg/seamless/xhtml/Link;

    .line 17
    .line 18
    return-object v0
.end method

.method public getMetas()[Lorg/seamless/xhtml/Meta;
    .locals 2

    .line 1
    new-instance v0, Lorg/seamless/xhtml/Head$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/Head$2;-><init>(Lorg/seamless/xhtml/Head;Lorg/seamless/xml/DOMElement;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->meta:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [Lorg/seamless/xhtml/Meta;

    .line 17
    .line 18
    return-object v0
.end method

.method public getScripts()[Lorg/seamless/xhtml/XHTMLElement;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    .line 2
    .line 3
    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->script:Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lorg/seamless/xhtml/XHTMLElement;

    .line 14
    .line 15
    return-object v0
.end method

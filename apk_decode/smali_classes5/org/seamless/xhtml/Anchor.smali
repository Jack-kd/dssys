.class public Lorg/seamless/xhtml/Anchor;
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
.method public getHref()Lorg/seamless/xhtml/Href;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/seamless/xhtml/Href;->fromString(Ljava/lang/String;)Lorg/seamless/xhtml/Href;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->type:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setHref(Ljava/lang/String;)Lorg/seamless/xhtml/Anchor;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lorg/seamless/xhtml/Anchor;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->type:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "(Anchor) "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

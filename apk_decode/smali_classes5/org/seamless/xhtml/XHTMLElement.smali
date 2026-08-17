.class public Lorg/seamless/xhtml/XHTMLElement;
.super Lorg/seamless/xml/DOMElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMElement<",
        "Lorg/seamless/xhtml/XHTMLElement;",
        "Lorg/seamless/xhtml/XHTMLElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final XPATH_PREFIX:Ljava/lang/String; = "h"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createChild(Lorg/seamless/xhtml/XHTML$ELEMENT;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "http://www.w3.org/1999/xhtml"

    .line 6
    .line 7
    invoke-super {p0, p1, v0}, Lorg/seamless/xml/DOMElement;->createChild(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/seamless/xhtml/XHTMLElement;

    .line 12
    .line 13
    return-object p1
.end method

.method public createChildBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$ArrayBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">.ArrayBuilder<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/seamless/xhtml/XHTMLElement$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/seamless/xhtml/XHTMLElement$2;-><init>(Lorg/seamless/xhtml/XHTMLElement;Lorg/seamless/xml/DOMElement;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createParentBuilder(Lorg/seamless/xml/DOMElement;)Lorg/seamless/xml/DOMElement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/seamless/xml/DOMElement;",
            ")",
            "Lorg/seamless/xml/DOMElement<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">.Builder<",
            "Lorg/seamless/xhtml/XHTMLElement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/seamless/xhtml/XHTMLElement$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/seamless/xhtml/XHTMLElement$1;-><init>(Lorg/seamless/xhtml/XHTMLElement;Lorg/seamless/xml/DOMElement;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public findAllAnchors()[Lorg/seamless/xhtml/Anchor;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lorg/seamless/xhtml/XHTMLElement;->findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;

    move-result-object v0

    return-object v0
.end method

.method public findAllAnchors(Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/seamless/xhtml/XHTMLElement;->findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;

    move-result-object p1

    return-object p1
.end method

.method public findAllAnchors(Ljava/lang/String;Ljava/lang/String;)[Lorg/seamless/xhtml/Anchor;
    .locals 6

    .line 3
    sget-object v0, Lorg/seamless/xhtml/XHTML$ELEMENT;->a:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xhtml/XHTMLElement;->findChildrenWithClass(Lorg/seamless/xhtml/XHTML$ELEMENT;Ljava/lang/String;)[Lorg/seamless/xhtml/XHTMLElement;

    move-result-object p2

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 6
    sget-object v4, Lorg/seamless/xhtml/XHTML$ATTR;->href:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {v3, v4}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    :cond_0
    new-instance v4, Lorg/seamless/xhtml/Anchor;

    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getXpath()Ljavax/xml/xpath/XPath;

    move-result-object v5

    invoke-virtual {v3}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lorg/seamless/xhtml/Anchor;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/seamless/xhtml/Anchor;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/seamless/xhtml/Anchor;

    return-object p1
.end method

.method public findChildren(Lorg/seamless/xhtml/XHTML$ELEMENT;)[Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Lorg/seamless/xml/DOMElement;->findChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [Lorg/seamless/xhtml/XHTMLElement;

    .line 10
    .line 11
    return-object p1
.end method

.method public findChildrenWithClass(Lorg/seamless/xhtml/XHTML$ELEMENT;Ljava/lang/String;)[Lorg/seamless/xhtml/XHTMLElement;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTMLElement;->findChildren(Lorg/seamless/xhtml/XHTML$ELEMENT;)[Lorg/seamless/xhtml/XHTMLElement;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_3

    .line 14
    .line 15
    aget-object v4, p1, v3

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {v4}, Lorg/seamless/xhtml/XHTMLElement;->getClasses()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    array-length v6, v5

    .line 28
    move v7, v2

    .line 29
    :goto_1
    if-ge v7, v6, :cond_2

    .line 30
    .line 31
    aget-object v8, v5, v7

    .line 32
    .line 33
    invoke-virtual {v8, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object p1, p0, Lorg/seamless/xml/DOMElement;->CHILD_BUILDER:Lorg/seamless/xml/DOMElement$ArrayBuilder;

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-virtual {p1, p2}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/seamless/xml/DOMElement;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, [Lorg/seamless/xhtml/XHTMLElement;

    .line 64
    .line 65
    return-object p1
.end method

.method public getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/seamless/xml/DOMElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getChildren(Lorg/seamless/xhtml/XHTML$ELEMENT;)[Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Lorg/seamless/xml/DOMElement;->getChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [Lorg/seamless/xhtml/XHTMLElement;

    .line 10
    .line 11
    return-object p1
.end method

.method public getClasses()[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "class"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public getConstant()Lorg/seamless/xhtml/XHTML$ELEMENT;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/seamless/xml/DOMElement;->getElementName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/seamless/xhtml/XHTML$ELEMENT;->valueOf(Ljava/lang/String;)Lorg/seamless/xhtml/XHTML$ELEMENT;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getFirstChild(Lorg/seamless/xhtml/XHTML$ELEMENT;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Lorg/seamless/xml/DOMElement;->getFirstChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/seamless/xhtml/XHTMLElement;

    .line 10
    .line 11
    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

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

.method public getOption(Ljava/lang/String;)Lorg/seamless/xhtml/Option;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/seamless/xhtml/XHTMLElement;->getOptions()[Lorg/seamless/xhtml/Option;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lorg/seamless/xhtml/Option;->getKey()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public getOptions()[Lorg/seamless/xhtml/Option;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->style:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/seamless/xhtml/XHTMLElement;->getAttribute(Lorg/seamless/xhtml/XHTML$ATTR;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/seamless/xhtml/Option;->fromString(Ljava/lang/String;)[Lorg/seamless/xhtml/Option;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->title:Lorg/seamless/xhtml/XHTML$ATTR;

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

.method public prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "h:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lorg/seamless/xml/DOMElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    return-object p0
.end method

.method public setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lorg/seamless/xml/DOMElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    return-object p0
.end method

.method public bridge synthetic setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    move-result-object p1

    return-object p1
.end method

.method public setClasses(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .line 1
    const-string v0, "class"

    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    return-object p0
.end method

.method public setClasses([Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    const-string p1, "class"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/seamless/xml/DOMElement;->setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    return-object p0
.end method

.method public bridge synthetic setContent(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setContent(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    move-result-object p1

    return-object p1
.end method

.method public setId(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;
    .locals 1

    .line 1
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->title:Lorg/seamless/xhtml/XHTML$ATTR;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/seamless/xhtml/XHTMLElement;->setAttribute(Lorg/seamless/xhtml/XHTML$ATTR;Ljava/lang/String;)Lorg/seamless/xhtml/XHTMLElement;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

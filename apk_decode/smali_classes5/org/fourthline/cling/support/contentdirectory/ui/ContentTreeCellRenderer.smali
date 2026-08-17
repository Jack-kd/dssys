.class public Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getContainerClosedIcon()Ljavax/swing/Icon;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainerOpenIcon()Ljavax/swing/Icon;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoIcon()Ljavax/swing/Icon;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemIcon(Lorg/fourthline/cling/support/model/item/Item;Ljava/lang/String;)Ljavax/swing/Icon;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    check-cast p2, Ljavax/swing/tree/DefaultMutableTreeNode;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    instance-of p3, p3, Lorg/fourthline/cling/support/model/container/Container;

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Lorg/fourthline/cling/support/model/container/Container;

    .line 20
    .line 21
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setText(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getContainerOpenIcon()Ljavax/swing/Icon;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getContainerClosedIcon()Ljavax/swing/Icon;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :goto_0
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    instance-of p3, p3, Lorg/fourthline/cling/support/model/item/Item;

    .line 48
    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lorg/fourthline/cling/support/model/item/Item;

    .line 56
    .line 57
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setText(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    invoke-virtual {p3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 p3, 0x0

    .line 76
    :goto_1
    invoke-virtual {p0, p2, p3}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getItemIcon(Lorg/fourthline/cling/support/model/item/Item;Ljava/lang/String;)Ljavax/swing/Icon;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {p2}, Ljavax/swing/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    instance-of p2, p2, Ljava/lang/String;

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->getInfoIcon()Ljavax/swing/Icon;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/fourthline/cling/support/contentdirectory/ui/ContentTreeCellRenderer;->onCreate()V

    .line 100
    .line 101
    .line 102
    return-object p1
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

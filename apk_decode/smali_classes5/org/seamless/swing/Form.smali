.class public Lorg/seamless/swing/Form;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public labelConstraints:Ljava/awt/GridBagConstraints;

.field public lastConstraints:Ljava/awt/GridBagConstraints;

.field public middleConstraints:Ljava/awt/GridBagConstraints;

.field public separatorConstraints:Ljava/awt/GridBagConstraints;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/seamless/swing/Form;->middleConstraints:Ljava/awt/GridBagConstraints;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/seamless/swing/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/seamless/swing/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    .line 12
    .line 13
    new-instance v0, Ljava/awt/GridBagConstraints;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 22
    .line 23
    iget-object v0, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 24
    .line 25
    const/16 v2, 0x12

    .line 26
    .line 27
    iput v2, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 28
    .line 29
    iget-object v0, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 30
    .line 31
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 32
    .line 33
    iput-wide v2, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 34
    .line 35
    iget-object v0, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    iput v2, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 39
    .line 40
    iget-object v0, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 41
    .line 42
    new-instance v3, Ljava/awt/Insets;

    .line 43
    .line 44
    invoke-direct {v3, p1, p1, p1, p1}, Ljava/awt/Insets;-><init>(IIII)V

    .line 45
    .line 46
    .line 47
    iput-object v3, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 48
    .line 49
    iget-object p1, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/awt/GridBagConstraints;->clone()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Ljava/awt/GridBagConstraints;

    .line 56
    .line 57
    iput-object p1, p0, Lorg/seamless/swing/Form;->middleConstraints:Ljava/awt/GridBagConstraints;

    .line 58
    .line 59
    const/4 v0, -0x1

    .line 60
    iput v0, p1, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 61
    .line 62
    iget-object p1, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/awt/GridBagConstraints;->clone()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/awt/GridBagConstraints;

    .line 69
    .line 70
    iput-object p1, p0, Lorg/seamless/swing/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    .line 71
    .line 72
    const-wide/16 v3, 0x0

    .line 73
    .line 74
    iput-wide v3, p1, Ljava/awt/GridBagConstraints;->weightx:D

    .line 75
    .line 76
    iget-object p1, p0, Lorg/seamless/swing/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    iput v0, p1, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 80
    .line 81
    new-instance p1, Ljava/awt/GridBagConstraints;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lorg/seamless/swing/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    .line 87
    .line 88
    iput v1, p1, Ljava/awt/GridBagConstraints;->fill:I

    .line 89
    .line 90
    iget-object p1, p0, Lorg/seamless/swing/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    .line 91
    .line 92
    iput v2, p1, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public addLabel(Ljava/lang/String;Ljava/awt/Container;)Ljavax/swing/JLabel;
    .locals 1

    .line 4
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p1}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p2}, Lorg/seamless/swing/Form;->addLabel(Ljava/awt/Component;Ljava/awt/Container;)V

    return-object v0
.end method

.method public addLabel(Ljava/awt/Component;Ljava/awt/Container;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v0

    check-cast v0, Ljava/awt/GridBagLayout;

    .line 2
    iget-object v1, p0, Lorg/seamless/swing/Form;->labelConstraints:Ljava/awt/GridBagConstraints;

    invoke-virtual {v0, p1, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 3
    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method

.method public addLabelAndLastField(Ljava/lang/String;Ljava/awt/Container;Ljava/awt/Container;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/seamless/swing/Form;->addLabel(Ljava/lang/String;Ljava/awt/Container;)Ljavax/swing/JLabel;

    .line 2
    invoke-virtual {p0, p2, p3}, Lorg/seamless/swing/Form;->addLastField(Ljava/awt/Component;Ljava/awt/Container;)V

    return-void
.end method

.method public addLabelAndLastField(Ljava/lang/String;Ljava/lang/String;Ljava/awt/Container;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p3}, Lorg/seamless/swing/Form;->addLabel(Ljava/lang/String;Ljava/awt/Container;)Ljavax/swing/JLabel;

    .line 4
    new-instance p1, Ljavax/swing/JLabel;

    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/seamless/swing/Form;->addLastField(Ljava/awt/Component;Ljava/awt/Container;)V

    return-void
.end method

.method public addLastField(Ljava/awt/Component;Ljava/awt/Container;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/awt/GridBagLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/seamless/swing/Form;->lastConstraints:Ljava/awt/GridBagConstraints;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public addMiddleField(Ljava/awt/Component;Ljava/awt/Container;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/awt/GridBagLayout;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/seamless/swing/Form;->middleConstraints:Ljava/awt/GridBagConstraints;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public addSeparator(Ljava/awt/Container;)V
    .locals 3

    .line 1
    new-instance v0, Ljavax/swing/JSeparator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljavax/swing/JSeparator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/awt/GridBagLayout;

    .line 11
    .line 12
    iget-object v2, p0, Lorg/seamless/swing/Form;->separatorConstraints:Ljava/awt/GridBagConstraints;

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 18
    .line 19
    .line 20
    return-void
.end method

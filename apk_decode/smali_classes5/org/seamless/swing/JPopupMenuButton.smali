.class public Lorg/seamless/swing/JPopupMenuButton;
.super Ljavax/swing/JButton;
.source "SourceFile"


# instance fields
.field public popup:Ljavax/swing/JPopupMenu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/swing/Icon;Ljavax/swing/JPopupMenu;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 10
    iput-object p3, p0, Lorg/seamless/swing/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    const-wide/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/seamless/swing/JPopupMenuButton;->enableEvents(J)V

    const-wide/16 p1, 0x10

    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/seamless/swing/JPopupMenuButton;->enableEvents(J)V

    .line 13
    new-instance p1, Lorg/seamless/swing/JPopupMenuButton$1;

    invoke-direct {p1, p0}, Lorg/seamless/swing/JPopupMenuButton$1;-><init>(Lorg/seamless/swing/JPopupMenuButton;)V

    invoke-virtual {p0, p1}, Lorg/seamless/swing/JPopupMenuButton;->setModel(Ljavax/swing/ButtonModel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/swing/JPopupMenu;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Lorg/seamless/swing/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    const-wide/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/seamless/swing/JPopupMenuButton;->enableEvents(J)V

    const-wide/16 p1, 0x10

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/seamless/swing/JPopupMenuButton;->enableEvents(J)V

    return-void
.end method

.method public constructor <init>(Ljavax/swing/JPopupMenu;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/swing/JButton;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/seamless/swing/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    const-wide/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/seamless/swing/JPopupMenuButton;->enableEvents(J)V

    const-wide/16 v0, 0x10

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/seamless/swing/JPopupMenuButton;->enableEvents(J)V

    return-void
.end method


# virtual methods
.method public processKeyEvent(Ljava/awt/event/KeyEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x191

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x190

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-void

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lorg/seamless/swing/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, p0, v2, v1}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-super {p0, p1}, Ljavax/swing/JButton;->processKeyEvent(Ljava/awt/event/KeyEvent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public processMouseEvent(Ljava/awt/event/MouseEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ljavax/swing/JButton;->processMouseEvent(Ljava/awt/event/MouseEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getID()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/16 v0, 0x1f5

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lorg/seamless/swing/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, p0, v1, v1}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/16 v0, 0x1f6

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lorg/seamless/swing/JPopupMenuButton;->popup:Ljavax/swing/JPopupMenu;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljavax/swing/JPopupMenu;->setVisible(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

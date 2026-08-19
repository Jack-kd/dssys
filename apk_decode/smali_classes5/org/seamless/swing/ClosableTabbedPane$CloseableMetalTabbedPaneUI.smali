.class Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;
.super Ljavax/swing/plaf/metal/MetalTabbedPaneUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/swing/ClosableTabbedPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseableMetalTabbedPaneUI"
.end annotation


# instance fields
.field private horizontalTextPosition:I

.field final synthetic this$0:Lorg/seamless/swing/ClosableTabbedPane;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/ClosableTabbedPane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    invoke-direct {p0}, Ljavax/swing/plaf/metal/MetalTabbedPaneUI;-><init>()V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->horizontalTextPosition:I

    return-void
.end method

.method public constructor <init>(Lorg/seamless/swing/ClosableTabbedPane;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    invoke-direct {p0}, Ljavax/swing/plaf/metal/MetalTabbedPaneUI;-><init>()V

    .line 4
    iput p2, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->horizontalTextPosition:I

    return-void
.end method


# virtual methods
.method public layoutLabel(ILjava/awt/FontMetrics;ILjava/lang/String;Ljavax/swing/Icon;Ljava/awt/Rectangle;Ljava/awt/Rectangle;Ljava/awt/Rectangle;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v12, p7

    .line 6
    .line 7
    move-object/from16 v13, p8

    .line 8
    .line 9
    move/from16 v15, p9

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput v3, v12, Ljava/awt/Rectangle;->y:I

    .line 13
    .line 14
    iput v3, v12, Ljava/awt/Rectangle;->x:I

    .line 15
    .line 16
    iput v3, v13, Ljava/awt/Rectangle;->y:I

    .line 17
    .line 18
    iput v3, v13, Ljava/awt/Rectangle;->x:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->getTextViewForTab(I)Ljavax/swing/text/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "html"

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v5, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    .line 29
    .line 30
    invoke-virtual {v5, v4, v3}, Ljavax/swing/JTabbedPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v3, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    .line 34
    .line 35
    iget v10, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->horizontalTextPosition:I

    .line 36
    .line 37
    iget v5, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->textIconGap:I

    .line 38
    .line 39
    add-int/lit8 v14, v5, 0x2

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    move-object/from16 v5, p4

    .line 45
    .line 46
    move-object/from16 v6, p5

    .line 47
    .line 48
    move-object/from16 v11, p6

    .line 49
    .line 50
    move-object v1, v4

    .line 51
    move-object/from16 v4, p2

    .line 52
    .line 53
    invoke-static/range {v3 .. v14}, Ljavax/swing/SwingUtilities;->layoutCompoundLabel(Ljavax/swing/JComponent;Ljava/awt/FontMetrics;Ljava/lang/String;Ljavax/swing/Icon;IIIILjava/awt/Rectangle;Ljava/awt/Rectangle;Ljava/awt/Rectangle;I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->tabPane:Ljavax/swing/JTabbedPane;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-virtual {v3, v1, v4}, Ljavax/swing/JTabbedPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move/from16 v1, p1

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v15}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->getTabLabelShiftX(IIZ)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v0, v1, v2, v15}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;->getTabLabelShiftY(IIZ)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget v2, v12, Ljava/awt/Rectangle;->x:I

    .line 73
    .line 74
    add-int/2addr v2, v3

    .line 75
    iput v2, v12, Ljava/awt/Rectangle;->x:I

    .line 76
    .line 77
    iget v2, v12, Ljava/awt/Rectangle;->y:I

    .line 78
    .line 79
    add-int/2addr v2, v1

    .line 80
    iput v2, v12, Ljava/awt/Rectangle;->y:I

    .line 81
    .line 82
    iget v2, v13, Ljava/awt/Rectangle;->x:I

    .line 83
    .line 84
    add-int/2addr v2, v3

    .line 85
    iput v2, v13, Ljava/awt/Rectangle;->x:I

    .line 86
    .line 87
    iget v2, v13, Ljava/awt/Rectangle;->y:I

    .line 88
    .line 89
    add-int/2addr v2, v1

    .line 90
    iput v2, v13, Ljava/awt/Rectangle;->y:I

    .line 91
    .line 92
    return-void
.end method

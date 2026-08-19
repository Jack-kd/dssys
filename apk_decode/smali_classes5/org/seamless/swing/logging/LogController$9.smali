.class Lorg/seamless/swing/logging/LogController$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;->initializeToolBar(Lorg/seamless/swing/logging/LogController$Expiration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogController;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/logging/LogController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$9;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljavax/swing/JComboBox;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/seamless/swing/logging/LogController$Expiration;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$9;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogController$Expiration;->getSeconds()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p1}, Lorg/seamless/swing/logging/LogTableModel;->setMaxAgeSeconds(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

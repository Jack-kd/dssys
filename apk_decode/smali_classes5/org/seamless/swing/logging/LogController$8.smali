.class Lorg/seamless/swing/logging/LogController$8;
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
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$8;->this$0:Lorg/seamless/swing/logging/LogController;

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
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$8;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$8;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 8
    .line 9
    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogTableModel;->isPaused()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogTableModel;->setPaused(Z)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$8;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 23
    .line 24
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogTableModel;->isPaused()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$8;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 35
    .line 36
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$500(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JLabel;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, " (Paused)"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$8;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 47
    .line 48
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$500(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JLabel;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, " (Active)"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

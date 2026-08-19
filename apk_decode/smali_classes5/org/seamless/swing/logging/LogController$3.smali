.class Lorg/seamless/swing/logging/LogController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogController;

.field final synthetic val$message:Lorg/seamless/swing/logging/LogMessage;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/logging/LogController;Lorg/seamless/swing/logging/LogMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/seamless/swing/logging/LogController$3;->val$message:Lorg/seamless/swing/logging/LogMessage;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$3;->val$message:Lorg/seamless/swing/logging/LogMessage;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/seamless/swing/logging/LogTableModel;->pushMessage(Lorg/seamless/swing/logging/LogMessage;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 13
    .line 14
    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogTableModel;->isPaused()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 31
    .line 32
    invoke-static {v1}, Lorg/seamless/swing/logging/LogController;->access$000(Lorg/seamless/swing/logging/LogController;)Ljavax/swing/JTable;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lorg/seamless/swing/logging/LogController$3;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 37
    .line 38
    invoke-static {v2}, Lorg/seamless/swing/logging/LogController;->access$300(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogTableModel;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lorg/seamless/swing/logging/LogTableModel;->getRowCount()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x1

    .line 47
    sub-int/2addr v2, v3

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v1, v2, v4, v3}, Ljavax/swing/JTable;->getCellRect(IIZ)Ljava/awt/Rectangle;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->scrollRectToVisible(Ljava/awt/Rectangle;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

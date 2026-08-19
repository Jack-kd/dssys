.class Lorg/seamless/swing/logging/LogController$1;
.super Lorg/seamless/swing/logging/LogTableCellRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogController;-><init>(Lorg/seamless/swing/Controller;Lorg/seamless/swing/logging/LogController$Expiration;Ljava/util/List;)V
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
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getDebugIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getDebugIcon()Ljavax/swing/ImageIcon;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInfoIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getInfoIcon()Ljavax/swing/ImageIcon;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTraceIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getTraceIcon()Ljavax/swing/ImageIcon;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWarnErrorIcon()Ljavax/swing/ImageIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$1;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getWarnErrorIcon()Ljavax/swing/ImageIcon;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

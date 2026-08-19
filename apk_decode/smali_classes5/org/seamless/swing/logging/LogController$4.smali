.class Lorg/seamless/swing/logging/LogController$4;
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
    iput-object p1, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

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
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$400(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogCategorySelector;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogController;->getParentWindow()Ljava/awt/Frame;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Lorg/seamless/swing/Application;->center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 17
    .line 18
    invoke-static {p1}, Lorg/seamless/swing/logging/LogController;->access$400(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogCategorySelector;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lorg/seamless/swing/logging/LogController$4;->this$0:Lorg/seamless/swing/logging/LogController;

    .line 23
    .line 24
    invoke-static {v0}, Lorg/seamless/swing/logging/LogController;->access$400(Lorg/seamless/swing/logging/LogController;)Lorg/seamless/swing/logging/LogCategorySelector;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lorg/seamless/swing/logging/LogCategorySelector;->isVisible()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    xor-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->setVisible(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

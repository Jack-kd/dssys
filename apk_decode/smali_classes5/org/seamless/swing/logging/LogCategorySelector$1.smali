.class Lorg/seamless/swing/logging/LogCategorySelector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/logging/LogCategorySelector;->addLoggerGroups(Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/logging/LogCategorySelector;

.field final synthetic val$group:Lorg/seamless/swing/logging/LogCategory$Group;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/logging/LogCategorySelector;Lorg/seamless/swing/logging/LogCategory$Group;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->val$group:Lorg/seamless/swing/logging/LogCategory$Group;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public itemStateChanged(Ljava/awt/event/ItemEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/awt/event/ItemEvent;->getStateChange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->val$group:Lorg/seamless/swing/logging/LogCategory$Group;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->disableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/awt/event/ItemEvent;->getStateChange()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 24
    .line 25
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategorySelector$1;->val$group:Lorg/seamless/swing/logging/LogCategory$Group;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->enableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

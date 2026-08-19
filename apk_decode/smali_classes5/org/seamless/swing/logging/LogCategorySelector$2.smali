.class Lorg/seamless/swing/logging/LogCategorySelector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/ActionListener;


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

.field final synthetic val$categoryPanel:Ljavax/swing/JPanel;

.field final synthetic val$logCategory:Lorg/seamless/swing/logging/LogCategory;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/logging/LogCategorySelector;Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$logCategory:Lorg/seamless/swing/logging/LogCategory;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$logCategory:Lorg/seamless/swing/logging/LogCategory;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/seamless/swing/logging/LogCategory;->getGroups()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/seamless/swing/logging/LogCategory$Group;

    .line 22
    .line 23
    iget-object v1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lorg/seamless/swing/logging/LogCategorySelector;->enableLoggerGroup(Lorg/seamless/swing/logging/LogCategory$Group;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljavax/swing/JPanel;->removeAll()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->this$0:Lorg/seamless/swing/logging/LogCategorySelector;

    .line 35
    .line 36
    iget-object v0, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$logCategory:Lorg/seamless/swing/logging/LogCategory;

    .line 37
    .line 38
    iget-object v1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lorg/seamless/swing/logging/LogCategorySelector;->addLoggerGroups(Lorg/seamless/swing/logging/LogCategory;Ljavax/swing/JPanel;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lorg/seamless/swing/logging/LogCategorySelector$2;->val$categoryPanel:Ljavax/swing/JPanel;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljavax/swing/JPanel;->revalidate()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

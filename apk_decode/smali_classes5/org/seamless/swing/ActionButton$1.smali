.class Lorg/seamless/swing/ActionButton$1;
.super Lorg/seamless/swing/DefaultAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/seamless/swing/ActionButton;->enableDefaultEvents(Lorg/seamless/swing/Controller;)Lorg/seamless/swing/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/swing/ActionButton;

.field final synthetic val$controller:Lorg/seamless/swing/Controller;


# direct methods
.method public constructor <init>(Lorg/seamless/swing/ActionButton;Lorg/seamless/swing/Controller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/ActionButton$1;->this$0:Lorg/seamless/swing/ActionButton;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/seamless/swing/ActionButton$1;->val$controller:Lorg/seamless/swing/Controller;

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/seamless/swing/DefaultAction;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/seamless/swing/ActionButton$1;->this$0:Lorg/seamless/swing/ActionButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/seamless/swing/ActionButton;->createDefaultEvent()Lorg/seamless/swing/Event;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/seamless/swing/ActionButton$1;->val$controller:Lorg/seamless/swing/Controller;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lorg/seamless/swing/Controller;->fireEvent(Lorg/seamless/swing/Event;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lorg/seamless/swing/ActionButton$1;->this$0:Lorg/seamless/swing/ActionButton;

    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/seamless/swing/ActionButton;->createDefaultGlobalEvent()Lorg/seamless/swing/Event;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lorg/seamless/swing/ActionButton$1;->val$controller:Lorg/seamless/swing/Controller;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lorg/seamless/swing/Controller;->fireEventGlobal(Lorg/seamless/swing/Event;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

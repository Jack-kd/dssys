.class final Lcom/beizi/fusion/ii$c;
.super Lcom/beizi/fusion/lq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/beizi/fusion/lq;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/ii$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/ii$c;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 6
    sget v0, Lcom/beizi/fusion/ii$g;->a:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget v0, Lcom/beizi/fusion/ii$g;->a:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    :cond_0
    sget v0, Lcom/beizi/fusion/ii$g;->b:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget v0, Lcom/beizi/fusion/ii$g;->b:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/beizi/fusion/ii$g;

    if-eqz v1, :cond_1

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/beizi/fusion/ii$g;->a:I

    if-ne v1, v2, :cond_0

    .line 3
    check-cast v0, Lcom/beizi/fusion/ii$g;

    invoke-virtual {v0}, Lcom/beizi/fusion/ii$g;->g()V

    .line 4
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/beizi/fusion/ii$g;->b:I

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/beizi/fusion/ii$g;

    invoke-virtual {p1}, Lcom/beizi/fusion/ii$g;->e()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/ii$c;->b(Landroid/os/Message;)V

    return-void
.end method

.class Lcom/sigmob/sdk/videoplayer/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/videoplayer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoplayer/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoplayer/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/a$1;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1770

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/a$1;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/a;->a(Lcom/sigmob/sdk/videoplayer/a;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/a$1;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-static {p1}, Lcom/sigmob/sdk/videoplayer/a;->b(Lcom/sigmob/sdk/videoplayer/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/a$1;->a:Lcom/sigmob/sdk/videoplayer/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->a(Lcom/sigmob/sdk/videoplayer/a;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/a$1;->a:Lcom/sigmob/sdk/videoplayer/a;

    sget-object v0, Lcom/sigmob/sdk/videoplayer/d;->c:Lcom/sigmob/sdk/videoplayer/d;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->setState(Lcom/sigmob/sdk/videoplayer/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.class public Lcom/sigmob/sdk/videoplayer/a$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/videoplayer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoplayer/a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoplayer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/a$a;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a$a;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sigmob/sdk/videoplayer/a$a;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getDuration()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sigmob/sdk/videoplayer/a$a;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-static {v4}, Lcom/sigmob/sdk/videoplayer/a;->c(Lcom/sigmob/sdk/videoplayer/a;)Lcom/sigmob/sdk/videoplayer/k;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/sigmob/sdk/videoplayer/a$a;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-static {v4}, Lcom/sigmob/sdk/videoplayer/a;->c(Lcom/sigmob/sdk/videoplayer/a;)Lcom/sigmob/sdk/videoplayer/k;

    move-result-object v4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/sigmob/sdk/videoplayer/k;->a(JJ)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoplayer/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/a$a;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/a$a;->a:Lcom/sigmob/sdk/videoplayer/a;

    iget-object v1, v0, Lcom/sigmob/sdk/videoplayer/a;->e:Lcom/sigmob/sdk/videoplayer/d;

    sget-object v2, Lcom/sigmob/sdk/videoplayer/d;->h:Lcom/sigmob/sdk/videoplayer/d;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sigmob/sdk/videoplayer/d;->i:Lcom/sigmob/sdk/videoplayer/d;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v1, Lcom/sigmob/sdk/videoplayer/m;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoplayer/m;-><init>(Lcom/sigmob/sdk/videoplayer/a$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

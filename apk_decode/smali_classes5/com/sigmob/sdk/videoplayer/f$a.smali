.class public Lcom/sigmob/sdk/videoplayer/f$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/videoplayer/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoplayer/f;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoplayer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/f$a;->a:Lcom/sigmob/sdk/videoplayer/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f$a;->a:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getCurrentPositionWhenPlaying()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f$a;->a:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/f;->getDuration()J

    move-result-wide v5

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    div-long/2addr v0, v7

    long-to-int v2, v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/f$a;->a:Lcom/sigmob/sdk/videoplayer/f;

    invoke-virtual/range {v1 .. v6}, Lcom/sigmob/sdk/videoplayer/f;->a(IJJ)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoplayer/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/f$a;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/f$a;->a:Lcom/sigmob/sdk/videoplayer/f;

    iget v0, v0, Lcom/sigmob/sdk/videoplayer/f;->w:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/videoplayer/o;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoplayer/o;-><init>(Lcom/sigmob/sdk/videoplayer/f$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

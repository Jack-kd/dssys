.class Lcom/sigmob/sdk/videoAd/j$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j;->j(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->r(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "unmute"

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->O(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "sig_image_video_unmute"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->t(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ar;->a(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "mute"

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/base/common/v;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->P(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "sig_image_video_mute"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/j;->t(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/ar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/ar;->a(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    :goto_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$4;->a:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->r(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/sigmob/sdk/videoAd/j;->g(Lcom/sigmob/sdk/videoAd/j;Z)Z

    :cond_1
    return p2
.end method

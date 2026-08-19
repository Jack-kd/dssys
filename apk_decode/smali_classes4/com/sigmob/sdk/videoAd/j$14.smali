.class Lcom/sigmob/sdk/videoAd/j$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/videoplayer/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/j;->d(Landroid/content/Context;I)Lcom/sigmob/sdk/videoplayer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoplayer/a;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/j;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoAd/j;Lcom/sigmob/sdk/videoplayer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 5

    .line 1
    iget-object p3, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p3}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result p3

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p4}, Lcom/sigmob/sdk/videoAd/j;->C(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p4}, Lcom/sigmob/sdk/videoAd/j;->C()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/videoAd/j;->b(Z)V

    :cond_0
    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p4}, Lcom/sigmob/sdk/videoAd/j;->u()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p4, v0}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;Z)V

    :cond_1
    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p4}, Lcom/sigmob/sdk/videoAd/j;->B()I

    move-result p4

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->e(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/d;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->e(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/d;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sigmob/sdk/base/views/d;->setDuration(I)V

    :cond_2
    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p4}, Lcom/sigmob/sdk/videoAd/j;->y(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p4}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-int p4, v1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->z(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/as;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sigmob/sdk/base/views/as;->a(I)V

    :cond_3
    const-wide/16 v1, 0x3e8

    add-long/2addr v1, p1

    int-to-long p3, p3

    cmp-long v1, v1, p3

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/j;->t()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/j;->A()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->n(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    sub-long v1, p3, v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/j;->o(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/w;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/j;->v()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/j;->w()V

    :cond_6
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/i;->a(JJ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/videoAd/d;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v2}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sigmob/sdk/videoAd/j;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/czhj/sdk/common/track/AdTracker;->setTracked()V

    goto :goto_1

    :cond_7
    cmp-long p1, p1, p3

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/sdk/videoAd/j;->a(ZZ)V

    :cond_8
    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoplayer/d;)V
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video player state change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/videoAd/j$7;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->B(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->d()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->A(Lcom/sigmob/sdk/videoAd/j;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->j()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->getErrorCode()I

    move-result p1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "video"

    invoke-static {v5, p1, v2, v3, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/videoAd/j;->a(ZZ)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    const-string v2, "none"

    invoke-static {p1, v2}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/videoAd/j;->a(ZZ)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoplayer/a;->getDuration()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {p1, v2}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;I)I

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->m(Lcom/sigmob/sdk/videoAd/j;)I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDuration()I

    move-result v2

    invoke-static {p1, v2}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;I)I

    :cond_5
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->n(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->o(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/w;

    move-result-object p1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/base/views/w;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->o(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/w;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->p(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/sigmob/sdk/videoAd/j;->a(Lcom/sigmob/sdk/videoAd/j;Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->getVideoWidth()I

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->a:Lcom/sigmob/sdk/videoplayer/a;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->getVideoHeight()I

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/f;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->q(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/f;

    move-result-object p1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/videoAd/f;->a(I)V

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->r(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->s(Lcom/sigmob/sdk/videoAd/j;)Landroid/content/Context;

    move-result-object p1

    const-string v2, "sig_image_video_mute"

    invoke-static {p1, v2}, Lcom/czhj/sdk/common/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/j;->t(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/ar;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/base/views/ar;->a(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->u(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    :cond_8
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/j;->r()Lcom/sigmob/sdk/base/common/v;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/j;->m(Lcom/sigmob/sdk/videoAd/j;)I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {v2}, Lcom/sigmob/sdk/videoAd/j;->v(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/a;->l()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sigmob/sdk/base/common/v;->a(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->w(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->x(Lcom/sigmob/sdk/videoAd/j;)I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->x(Lcom/sigmob/sdk/videoAd/j;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->c(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    const-string v1, "_COMPLETED_"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_VIDEOTIME_"

    invoke-virtual {p1, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->y(Lcom/sigmob/sdk/videoAd/j;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/j;->z(Lcom/sigmob/sdk/videoAd/j;)Lcom/sigmob/sdk/base/views/as;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/j$14;->b:Lcom/sigmob/sdk/videoAd/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/j;->y()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/sigmob/sdk/base/views/as;->a(II)V

    :cond_b
    :goto_0
    return-void
.end method

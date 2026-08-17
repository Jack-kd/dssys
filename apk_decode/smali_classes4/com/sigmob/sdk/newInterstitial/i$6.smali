.class Lcom/sigmob/sdk/newInterstitial/i$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/videoplayer/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/newInterstitial/i;->y()Lcom/sigmob/sdk/videoplayer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/newInterstitial/i;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/newInterstitial/i;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/newInterstitial/i$6;Lcom/sigmob/sdk/videoplayer/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/newInterstitial/i$6;->b(Lcom/sigmob/sdk/videoplayer/d;)V

    return-void
.end method

.method private synthetic b(Lcom/sigmob/sdk/videoplayer/d;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video player state change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/newInterstitial/i$8;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    const-string v0, "video_pause"

    invoke-interface {p1, v0, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_0
    iput-boolean v1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->b:Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->m(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->l(Lcom/sigmob/sdk/newInterstitial/i;)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->d(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    const-string v0, "complete"

    invoke-interface {p1, v0, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->hasEndCard()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->type:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;)V

    return-void

    :cond_2
    :pswitch_4
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->p()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoplayer/a;->getErrorCode()I

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/a;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "video"

    invoke-static {v3, p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    :cond_3
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->p()V

    return-void

    :pswitch_6
    iget-boolean p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->b:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    const/4 v1, 0x2

    iput v1, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->type:I

    :cond_4
    iput-boolean v2, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->b:Z

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->a()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p1

    const-string v1, "video_start"

    invoke-interface {p1, v1, v2}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoplayer/a;->getCurrentPositionWhenPlaying()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->begin_time:I

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoplayer/a;->getDuration()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {p1, v3}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;I)I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->h(Lcom/sigmob/sdk/newInterstitial/i;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDuration()I

    move-result v3

    invoke-static {p1, v3}, Lcom/sigmob/sdk/newInterstitial/i;->a(Lcom/sigmob/sdk/newInterstitial/i;I)I

    :cond_6
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iget-object v3, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v3}, Lcom/sigmob/sdk/newInterstitial/i;->h(Lcom/sigmob/sdk/newInterstitial/i;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->video_time:I

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iput v1, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_first:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iput v1, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->type:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iput v1, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->scene:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iput v1, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_auto_play:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iput v2, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->is_last:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVideoCommon()Lcom/sigmob/sdk/base/models/VideoStatusCommon;

    move-result-object p1

    iput v2, p1, Lcom/sigmob/sdk/base/models/VideoStatusCommon;->end_time:I

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getIsMute()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    move v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Lcom/sigmob/sdk/newInterstitial/i;Z)Z

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->j(Lcom/sigmob/sdk/newInterstitial/i;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoplayer/a;->setMute(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->k(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->j(Lcom/sigmob/sdk/newInterstitial/i;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->setSoundStatus(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p1}, Lcom/sigmob/sdk/newInterstitial/i;->k(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialHeaderView;->showSoundIcon()V

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p3}, Lcom/sigmob/sdk/newInterstitial/i;->i(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/base/common/i;

    move-result-object p3

    iget-object p4, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p4}, Lcom/sigmob/sdk/newInterstitial/i;->h(Lcom/sigmob/sdk/newInterstitial/i;)I

    move-result p4

    int-to-long v0, p4

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/sigmob/sdk/base/common/i;->a(JJ)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/sigmob/sdk/videoAd/d;

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p4}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/newInterstitial/i;->b(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/czhj/sdk/common/track/AdTracker;->setTracked()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {p3}, Lcom/sigmob/sdk/newInterstitial/i;->h(Lcom/sigmob/sdk/newInterstitial/i;)I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-virtual {p1}, Lcom/sigmob/sdk/newInterstitial/i;->p()V

    :cond_1
    return-void
.end method

.method public a(Lcom/sigmob/sdk/videoplayer/d;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/i$6;->a:Lcom/sigmob/sdk/newInterstitial/i;

    invoke-static {v0}, Lcom/sigmob/sdk/newInterstitial/i;->g(Lcom/sigmob/sdk/newInterstitial/i;)Lcom/sigmob/sdk/videoplayer/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sigmob/sdk/newInterstitial/r;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/newInterstitial/r;-><init>(Lcom/sigmob/sdk/newInterstitial/i$6;Lcom/sigmob/sdk/videoplayer/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

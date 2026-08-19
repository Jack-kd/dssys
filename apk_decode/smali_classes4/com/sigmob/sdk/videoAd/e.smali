.class public Lcom/sigmob/sdk/videoAd/e;
.super Lcom/sigmob/sdk/manager/f;

# interfaces
.implements Lcom/sigmob/sdk/videoAd/h;


# static fields
.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x2


# instance fields
.field private v:I

.field private w:Lcom/sigmob/sdk/videoAd/l;

.field private final x:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/manager/f;-><init>()V

    iput-boolean p1, p0, Lcom/sigmob/sdk/videoAd/e;->x:Z

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sigmob/sdk/videoAd/e;->v:I

    return p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/videoAd/e;->v:I

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/e;->w:Lcom/sigmob/sdk/videoAd/l;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "trans_id"

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "server_arrived"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "reward_type"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/e;->w:Lcom/sigmob/sdk/videoAd/l;

    new-instance p3, Lcom/sigmob/windad/rewardVideo/WindRewardInfo;

    const/4 v0, 0x1

    invoke-direct {p3, v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardInfo;-><init>(ZLjava/util/HashMap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/sigmob/sdk/videoAd/l;->onVideoAdRewarded(Lcom/sigmob/windad/rewardVideo/WindRewardInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/videoAd/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/videoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private t(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 8

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRvCallBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/czhj/sdk/common/track/AdTracker;

    sget-object v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    const-string v3, "reward_server"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/czhj/sdk/common/track/AdTracker;-><init>(Lcom/czhj/sdk/common/track/AdTracker$MessageType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTrackingRetryNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/czhj/sdk/common/track/AdTracker;->setRetryNum(Ljava/lang/Integer;)V

    new-instance v7, Lcom/sigmob/sdk/videoAd/e$1;

    invoke-direct {v7, p0}, Lcom/sigmob/sdk/videoAd/e$1;-><init>(Lcom/sigmob/sdk/videoAd/e;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    const-string v0, "0"

    invoke-direct {p0, p1, v0, v0}, Lcom/sigmob/sdk/videoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/videoAd/l;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/e;->w:Lcom/sigmob/sdk/videoAd/l;

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_0
    sget-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v7, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-virtual {p0, v7, p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/windad/WindAdError;Lcom/sigmob/sdk/videoAd/m;)V

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v4

    iget-object p2, p0, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v6

    const-string v3, "play"

    iget-object v5, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/windad/WindAdError;)V

    const-string p1, "onVideoPlayFail() called"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/common/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_1
    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    return-void
.end method

.method public o()Lcom/sigmob/sdk/mraid/i;
    .locals 2

    new-instance v0, Lcom/sigmob/sdk/videoAd/g;

    iget-boolean v1, p0, Lcom/sigmob/sdk/videoAd/e;->x:Z

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/videoAd/g;-><init>(Lcom/sigmob/sdk/base/common/p;Z)V

    return-object v0
.end method

.method public p(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/manager/b;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onVideoComplete"

    invoke-static {v0, v2, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/videoAd/e;->v:I

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/manager/f;->r:Lcom/sigmob/sdk/videoAd/m;

    iget-object v1, p0, Lcom/sigmob/sdk/manager/f;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/videoAd/m;->onVideoAdPlayComplete(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoAd/e;->t(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/videoAd/e;->v:I

    return-void
.end method

.method public q(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 2
    const-string p1, "onVideoPlay() called"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/videoAd/e;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "0"

    const-string v1, "1"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/sigmob/sdk/videoAd/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public r(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 2
    const-string p1, "onVideoSkip() called"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sigmob/sdk/manager/f;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoAd/e;->w:Lcom/sigmob/sdk/videoAd/l;

    return-void
.end method

.method public s(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/manager/f;->o(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

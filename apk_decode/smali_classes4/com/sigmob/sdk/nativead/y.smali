.class public Lcom/sigmob/sdk/nativead/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/network/f$a;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2


# instance fields
.field private final g:Landroid/os/Handler;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/sigmob/sdk/nativead/aa;

.field private final j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

.field private k:Z

.field private final l:I


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/natives/WindNativeAdRequest;Lcom/sigmob/sdk/nativead/aa;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/nativead/y$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sigmob/sdk/nativead/y$1;-><init>(Lcom/sigmob/sdk/nativead/y;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/y;->g:Landroid/os/Handler;

    const/16 v0, 0x5001

    iput v0, p0, Lcom/sigmob/sdk/nativead/y;->l:I

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/y;->i:Lcom/sigmob/sdk/nativead/aa;

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 1

    .line 3
    new-instance v0, Lcom/sigmob/sdk/nativead/ag;

    invoke-direct {v0, p1}, Lcom/sigmob/sdk/nativead/ag;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method

.method private synthetic a(ILjava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->i:Lcom/sigmob/sdk/nativead/aa;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0, p2}, Lcom/sigmob/sdk/nativead/aa;->onNativeAdLoaded(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-interface {v0, p1, p3}, Lcom/sigmob/sdk/nativead/aa;->onNativeAdLoadFail(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/y;ILjava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/nativead/y;->a(ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/y;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/windad/natives/WindNativeAdData;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/y;->k:Z

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->g:Landroid/os/Handler;

    const/16 v1, 0x5001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->g:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/nativead/Y;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sigmob/sdk/nativead/Y;-><init>(Lcom/sigmob/sdk/nativead/y;ILjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2

    .line 12
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ad_count"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/nativead/y;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/sigmob/sdk/nativead/y;->k:Z

    return p0
.end method

.method public static synthetic b(Lcom/sigmob/sdk/nativead/y;)Landroid/os/Handler;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/nativead/y;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic b(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/nativead/y;->k:Z

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object v2

    new-instance v3, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v4, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-direct {v3, v4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Lcom/sigmob/windad/WindAdRequest;)V

    invoke-virtual {v3, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setBidToken(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setBidFloor(Ljava/lang/Integer;)V

    invoke-virtual {v3, p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setCurrency(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setAd_count(I)V

    invoke-virtual {v3, p5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setTraceId(Ljava/lang/String;)V

    iget p2, v2, Lcom/sigmob/sdk/base/common/z;->a:I

    add-int/2addr p2, v0

    iput p2, v2, Lcom/sigmob/sdk/base/common/z;->a:I

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/aa;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/aa;

    move-result-object p2

    iget p3, p2, Lcom/sigmob/sdk/base/common/aa;->a:I

    add-int/2addr p3, v0

    iput p3, p2, Lcom/sigmob/sdk/base/common/aa;->a:I

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-ge p1, v0, :cond_0

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NATIVE_ADCOUNT:Lcom/sigmob/windad/WindAdError;

    :goto_0
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p5

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p5, p1}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-wide v4, v2, Lcom/sigmob/sdk/base/common/z;->g:J

    const-wide/16 v6, 0x0

    cmp-long p5, v4, v6

    if-lez p5, :cond_4

    iget p5, v2, Lcom/sigmob/sdk/base/common/z;->d:I

    int-to-long v6, p5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p5, v4, v6

    if-lez p5, :cond_4

    iget p5, v2, Lcom/sigmob/sdk/base/common/z;->f:I

    invoke-static {v1, p5, p1}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_1

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_NO_AD:Lcom/sigmob/windad/WindAdError;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    move v0, p4

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setLoad_id(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sigmob/sdk/nativead/y;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v5

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sigmob/sdk/base/common/h;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, v0, v3}, Lcom/sigmob/sdk/nativead/y;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    iget v0, v2, Lcom/sigmob/sdk/base/common/z;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v2, Lcom/sigmob/sdk/base/common/z;->b:I

    iget v0, p2, Lcom/sigmob/sdk/base/common/aa;->b:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p2, Lcom/sigmob/sdk/base/common/aa;->b:I

    invoke-direct {p0, p5, p4, p3}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;ILjava/lang/String;)V

    :goto_2
    move v0, p4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/y;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/o;->A()J

    move-result-wide p3

    const/16 p5, 0x5001

    invoke-virtual {p1, p5, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, v2, Lcom/sigmob/sdk/base/common/z;->g:J

    invoke-static {v3, p0}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/network/f$a;)V

    :goto_3
    invoke-static {v1, v2}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;)V

    invoke-static {v1, p2}, Lcom/sigmob/sdk/base/common/aa;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/aa;)V

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ecpm:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 1

    .line 5
    const-string p3, "respond"

    const-string v0, "0"

    invoke-static {p3, v0, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const/4 p3, 0x0

    invoke-direct {p0, p3, p1, p2}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 6

    .line 7
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v0, "ready"

    const/4 v1, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_NO_AD:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v8, Lcom/sigmob/sdk/nativead/Z;

    invoke-direct {v8, p1}, Lcom/sigmob/sdk/nativead/Z;-><init>(Ljava/util/List;)V

    const-string v3, "respond"

    const-string v4, "1"

    const/4 v6, 0x0

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/common/ad$a;)V

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object p2

    if-eqz p2, :cond_2

    iget v2, p2, Lcom/sigmob/sdk/base/common/z;->e:I

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdCount()I

    move-result p1

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    iget v3, p2, Lcom/sigmob/sdk/base/common/z;->f:I

    invoke-static {v2, v3, p1}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_NO_AD:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;ILjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/aa;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/aa;

    move-result-object p1

    iget v2, p2, Lcom/sigmob/sdk/base/common/z;->b:I

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p2, Lcom/sigmob/sdk/base/common/z;->b:I

    iget v2, p1, Lcom/sigmob/sdk/base/common/aa;->b:I

    iget-object v3, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Lcom/sigmob/sdk/base/common/aa;->b:I

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;)V

    iget-object p2, p0, Lcom/sigmob/sdk/nativead/y;->j:Lcom/sigmob/windad/natives/WindNativeAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/sigmob/sdk/base/common/aa;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/aa;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p2, v0

    :goto_1
    iget-object v2, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    iget-object v2, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0, v2}, Lcom/sigmob/sdk/nativead/y;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/windad/natives/WindNativeAdData;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sigmob/sdk/base/common/h;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, p2, v7}, Lcom/sigmob/sdk/nativead/y;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->currency:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/y;->h:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v1
.end method

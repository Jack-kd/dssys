.class public Lcom/sigmob/windad/natives/WindNativeUnifiedAd;
.super Lcom/sigmob/sdk/base/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;
    }
.end annotation


# instance fields
.field private a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/sigmob/sdk/nativead/y;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/natives/WindNativeAdRequest;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/base/m;-><init>(Lcom/sigmob/windad/WindAdRequest;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/nativead/y;

    new-instance v1, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$1;-><init>(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/sigmob/windad/natives/WindNativeAdRequest;)V

    invoke-direct {v0, p1, v1}, Lcom/sigmob/sdk/nativead/y;-><init>(Lcom/sigmob/windad/natives/WindNativeAdRequest;Lcom/sigmob/sdk/nativead/aa;)V

    iput-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->c:Lcom/sigmob/sdk/nativead/y;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "error"

    invoke-static {v2, v1, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;->SigmobError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->commit()V

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method private a(I)Z
    .locals 8

    .line 6
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/manager/b;->j()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v2, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->c:Lcom/sigmob/sdk/nativead/y;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->getBid_token()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->getBidFloor()I

    move-result v5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->h()Ljava/lang/String;

    move-result-object v6

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sigmob/sdk/nativead/y;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lcom/sigmob/sdk/base/m;->a(Lcom/sigmob/sdk/base/common/z;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " catch throwable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;->onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return v1
.end method

.method public static synthetic b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/czhj/sdk/common/models/AdStatus;)Lcom/czhj/sdk/common/models/AdStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    return-object p1
.end method

.method public static synthetic b(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    return-object p0
.end method

.method private synthetic b(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 4
    sget-object v0, Lcom/czhj/sdk/common/models/AdStatus;->AdStatusNone:Lcom/czhj/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/base/m;->h:Lcom/czhj/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoAdLoadFail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;->onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/m;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/sigmob/windad/WindAdError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/windad/WindAdError;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/natives/a;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/natives/a;-><init>(Lcom/sigmob/windad/natives/WindNativeUnifiedAd;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->c:Lcom/sigmob/sdk/nativead/y;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/nativead/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->c:Lcom/sigmob/sdk/nativead/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/y;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/sigmob/sdk/manager/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "native ad %s is Destroy"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    return-void
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->c:Lcom/sigmob/sdk/nativead/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/y;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->c:Lcom/sigmob/sdk/nativead/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/nativead/y;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAd()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/sigmob/sdk/base/m;->loadAd()Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getAdCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(I)Z
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/sigmob/sdk/base/m;->loadAd()Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getAdCount()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/WindAdRequest;->setAdCount(I)V

    invoke-direct {p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public loadAd(Ljava/lang/String;)Z
    .locals 0

    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/m;->loadAd(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/m;->l:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getAdCount()I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public loadAd(Ljava/lang/String;I)Z
    .locals 0

    .line 4
    :try_start_0
    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/m;->loadAd(Ljava/lang/String;)Z

    invoke-direct {p0, p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setNativeAdLoadListener(Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->a:Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;

    return-void
.end method

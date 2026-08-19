.class public final Lcom/kwad/components/ad/reward/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jP:J

.field private vK:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;


# direct methods
.method public constructor <init>(JLcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/kwad/components/ad/reward/g/c;->jP:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/kwad/components/ad/reward/g/c;->vK:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/util/List;)V
    .locals 12
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v2, Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;->LOAD_SUCCESS_BEFORE:Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;

    iget-wide v3, p0, Lcom/kwad/components/ad/reward/g/c;->jP:J

    const/4 v5, 0x0

    const/4 v0, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/monitor/a;JLcom/kwad/sdk/g/a;)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    array-length v0, p1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 4
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/kwad/components/core/t/f;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataLoadTraceElement:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/g/c;->vK:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, p2}, Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;->onRewardVideoResult(Ljava/util/List;)V

    .line 7
    :cond_1
    sget-object v8, Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;->LOAD_SUCCESS:Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;

    iget-wide v9, p0, Lcom/kwad/components/ad/reward/g/c;->jP:J

    const/4 v11, 0x0

    const/4 v6, 0x1

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/monitor/a;JLcom/kwad/sdk/g/a;)V

    return-void
.end method

.method public final b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/util/List;J)V
    .locals 7
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsRewardVideoAd;",
            ">;J)V"
        }
    .end annotation

    .line 8
    sget-object v3, Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;->LOAD_CACHE_SUCCESS_BEFORE:Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;

    iget-wide v4, p0, Lcom/kwad/components/ad/reward/g/c;->jP:J

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/monitor/a;JLcom/kwad/sdk/g/a;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 10
    array-length v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    if-eqz p1, :cond_0

    .line 11
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/kwad/components/core/t/f;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataCacheTraceElement:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eI(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    move-result v0

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p3

    .line 14
    invoke-static {v0, v3, v4, v1}, Lcom/kwad/sdk/commercial/convert/d;->a(IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/reward/g/c;->vK:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v0, p2}, Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;->onRewardVideoAdLoad(Ljava/util/List;)V

    .line 18
    :cond_2
    sget-object v3, Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;->LOAD_CACHE_SUCCESS:Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;

    iget-wide v4, p0, Lcom/kwad/components/ad/reward/g/c;->jP:J

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/monitor/a;JLcom/kwad/sdk/g/a;)V

    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/g/c;->vK:Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/KsLoadManager$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v3, Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;->LOAD_ERROR:Lcom/kwad/components/ad/reward/monitor/RewardLoadCallbackType;

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/kwad/components/ad/reward/g/c;->jP:J

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/monitor/a;JLcom/kwad/sdk/g/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

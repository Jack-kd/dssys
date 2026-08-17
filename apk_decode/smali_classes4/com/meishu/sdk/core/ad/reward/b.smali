.class public Lcom/meishu/sdk/core/ad/reward/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/reward/a;


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

.field public volatile b:Z

.field public volatile c:Z

.field public volatile d:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdError()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->d:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->b:Z

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->b:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 17
    .line 18
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, "SDK IS NOT INITED \uff01"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "\u6240\u6709\u5e7f\u544a\u4f4d\u52a0\u8f7d\u5931\u8d25"

    .line 28
    .line 29
    :goto_0
    iget-boolean v2, p0, Lcom/meishu/sdk/core/ad/reward/b;->c:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Lcom/meishu/sdk/core/utils/AdErrorInfo;

    .line 34
    .line 35
    sget v3, Lcom/meishu/sdk/core/utils/AdErrorInfo;->RENDER_ERROR:I

    .line 36
    .line 37
    const v4, 0x895443

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v3, v4, v1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;-><init>(IILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v2, Lcom/meishu/sdk/core/utils/AdErrorInfo;

    .line 45
    .line 46
    sget v3, Lcom/meishu/sdk/core/utils/AdErrorInfo;->LOAD_ERROR:I

    .line 47
    .line 48
    sget-object v4, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->AD_LOAD_ERROR:Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-direct {v2, v3, v4, v1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;-><init>(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-interface {v0, v2}, Lcom/meishu/sdk/core/ad/IAdEventListener;->onAdError(Lcom/meishu/sdk/core/utils/AdErrorInfo;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public onAdExposure()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 2
    .line 3
    return-void
.end method

.method public onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V
    .locals 0

    return-void
.end method

.method public onAdReady(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->c:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/IAdEventListener;->onAdReady(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->d:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->d:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 17
    .line 18
    new-instance v1, Lcom/meishu/sdk/core/utils/AdErrorInfo;

    .line 19
    .line 20
    sget v2, Lcom/meishu/sdk/core/utils/AdErrorInfo;->RENDER_ERROR:I

    .line 21
    .line 22
    invoke-direct {v1, v2, p2, p1}, Lcom/meishu/sdk/core/utils/AdErrorInfo;-><init>(IILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAdEventListener;->onAdError(Lcom/meishu/sdk/core/utils/AdErrorInfo;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;->onReward(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoCached(Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/reward/b;->a:Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;->onVideoCached(Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

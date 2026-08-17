.class Lcom/anythink/supplement/a/SRewardAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/interstitial/api/ATInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/supplement/a/SRewardAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;


# direct methods
.method public constructor <init>(Lcom/anythink/supplement/a/SRewardAdapter$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$600(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$700(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onInterstitialAdClose(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$800(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$900(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1000(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1100(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onInterstitialAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/supplement/a/SRewardAdapter;->access$400(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/supplement/a/SRewardAdapter;->access$500(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public onInterstitialAdLoaded()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/supplement/a/SRewardAdapter;->access$100(Lcom/anythink/supplement/a/SRewardAdapter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter;->mInterstitialAd:Lcom/anythink/interstitial/api/ATInterstitial;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/anythink/interstitial/api/ATInterstitial;->checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->getATTopAdInfo()Lcom/anythink/core/api/ATAdInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdInfo;->getEcpm()D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iget-object v2, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ""

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    sget-object v4, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-static {v0, v1, v3, v5, v4}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v2, v0, v5}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/anythink/supplement/a/SRewardAdapter;->access$200(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/anythink/supplement/a/SRewardAdapter;->access$300(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x0

    .line 90
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 91
    .line 92
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    :catchall_0
    :cond_1
    return-void
.end method

.method public onInterstitialAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    return-void
.end method

.method public onInterstitialAdVideoEnd(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1400(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1500(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onInterstitialAdVideoError(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1600(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1700(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getFullErrorInfo()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onInterstitialAdVideoStart(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1200(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/supplement/a/SRewardAdapter$1$1;->this$1:Lcom/anythink/supplement/a/SRewardAdapter$1;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/anythink/supplement/a/SRewardAdapter$1;->this$0:Lcom/anythink/supplement/a/SRewardAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/anythink/supplement/a/SRewardAdapter;->access$1300(Lcom/anythink/supplement/a/SRewardAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

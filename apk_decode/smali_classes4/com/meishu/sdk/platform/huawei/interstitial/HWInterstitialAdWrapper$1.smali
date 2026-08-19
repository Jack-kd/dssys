.class Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;
.super Lcom/huawei/hms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/ads/AdListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v0, "HWInterstitialAdWrapper"

    .line 26
    .line 27
    const-string v1, "send onAdClicked"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onAdFailed(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdFailed: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HWInterstitialAdWrapper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/meishu/sdk/platform/huawei/HWPlatformError;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "\u52a0\u8f7d\u51fa\u9519"

    .line 32
    .line 33
    invoke-direct {v0, v2, p1, v1}, Lcom/meishu/sdk/platform/huawei/HWPlatformError;-><init>(Ljava/lang/String;ILcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    const-string v0, "HWInterstitialAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdImpression: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdLeave()V
    .locals 2

    .line 1
    const-string v0, "HWInterstitialAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdLeave: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/huawei/hms/ads/InterstitialAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/huawei/hms/ads/InterstitialAd;->getBiddingInfo()Lcom/huawei/hms/ads/BiddingInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/huawei/hms/ads/BiddingInfo;->getPrice()Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/high16 v1, 0x42c80000    # 100.0f

    .line 28
    .line 29
    mul-float/2addr v0, v1

    .line 30
    float-to-int v0, v0

    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 50
    .line 51
    new-instance v1, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/huawei/hms/ads/InterstitialAd;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v1, v0, v2}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;-><init>(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;Lcom/huawei/hms/ads/InterstitialAd;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$102(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAdWrapper;)Lcom/meishu/sdk/platform/huawei/interstitial/HWInterstitialAd;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

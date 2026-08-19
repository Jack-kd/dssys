.class Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/ads/splash/listener/SplashLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->loadBiddingAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdFailed(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/huawei/HWPlatformError;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "\u52a0\u8f7d\u51fa\u9519,code="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, p1, v2}, Lcom/meishu/sdk/platform/huawei/HWPlatformError;-><init>(Ljava/lang/String;ILcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/huawei/hms/ads/splash/SplashAd;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v0, v2}, Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/huawei/hms/ads/splash/SplashAd;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$002(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/huawei/hms/ads/splash/SplashAd;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/huawei/hms/ads/splash/SplashAd;->getBiddingInfo()Lcom/huawei/hms/ads/BiddingInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/huawei/hms/ads/BiddingInfo;->getPrice()Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/high16 v1, 0x42c80000    # 100.0f

    .line 42
    .line 43
    mul-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$100(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/huawei/hms/ads/splash/SplashAd;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/huawei/hms/ads/splash/SplashAd;->getSplashView()Lcom/huawei/hms/ads/splash/SplashView;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/huawei/hms/ads/splash/SplashView;->setAdDisplayListener(Lcom/huawei/hms/ads/splash/SplashAdDisplayListener;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_1
    :goto_1
    return-void
.end method

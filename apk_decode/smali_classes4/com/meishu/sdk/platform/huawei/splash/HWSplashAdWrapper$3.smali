.class Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;
.super Lcom/huawei/hms/ads/splash/SplashView$SplashAdLoadListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->loadNormalAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

.field public final synthetic val$splashView:Lcom/huawei/hms/ads/splash/SplashView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/huawei/hms/ads/splash/SplashView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->val$splashView:Lcom/huawei/hms/ads/splash/SplashView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/huawei/hms/ads/splash/SplashView$SplashAdLoadListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdDismissed()V
    .locals 4

    .line 1
    const-string v0, "HWSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdDismissed: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$502(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$400(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Landroid/os/Handler;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$2;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$2;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0x320

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdFailedToLoad: "

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
    const-string v1, "HWSplashAdWrapper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/meishu/sdk/platform/huawei/HWPlatformError;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

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
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$600(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

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

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$302(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;)Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3$1;-><init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;->setOnAdShowListener(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd$IAdShowListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->val$splashView:Lcom/huawei/hms/ads/splash/SplashView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$300(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWSplashAd;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method

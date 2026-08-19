.class Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$CSJSplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->loadNewAd(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSplashLoadFail(Lcom/bytedance/sdk/openadsdk/CSJAdError;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getMsg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v0, v1, p1, v2}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onSplashLoadSuccess()V
    .locals 0

    .line 1
    return-void
.end method

.method public onSplashLoadSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 1

    .line 2
    const-string p1, "load csj succ,thread="

    invoke-static {p1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CSJTTAdNativeWrapper"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSplashRenderFail(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;Lcom/bytedance/sdk/openadsdk/CSJAdError;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance p1, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getMsg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getCode()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p1, v0, p2, v1}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onSplashRenderSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;-><init>(Lcom/meishu/sdk/core/loader/d;Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->getAdContainer()Landroid/view/ViewGroup;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/splash/c;->setAdContainer(Landroid/view/ViewGroup;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->getSplashView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8$1;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;Lcom/meishu/sdk/platform/csj/splash/CsjNewSplashAd;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->setSplashAdListener(Lcom/bytedance/sdk/openadsdk/CSJSplashAd$SplashAdListener;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$8;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

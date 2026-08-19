.class Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->loadNativeAd()V
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onFeedAdLoad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 15
    .line 16
    new-instance v0, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;-><init>(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 24
    .line 25
    invoke-static {v1, p1, v0}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$100(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/meishu/sdk/platform/csj/splash/CSJNativeSplashAd;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$200(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$300(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 43
    .line 44
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper$2;->this$0:Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;->access$400(Lcom/meishu/sdk/platform/csj/splash/CSJTTAdNativeWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

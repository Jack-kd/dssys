.class Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/SplashAd$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

.field public final synthetic val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    const-string v0, "MimoSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;)Lcom/meishu/sdk/core/loader/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 1
    const-string v0, "MimoSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdDismissed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onAdLoadFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "MimoSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdLoadFailed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/meishu/sdk/platform/mimo/MimoPlatformError;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/mimo/MimoPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;->access$100(Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    const-string v0, "MimoSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdLoaded"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public onAdRenderFailed()V
    .locals 3

    .line 1
    const-string v0, "MimoSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdRenderFailed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 34
    .line 35
    const-string v1, "miAdRenderFailed"

    .line 36
    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    const-string v0, "MimoSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onAdShow"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAdWrapper$1;->val$mimoSplashAd:Lcom/meishu/sdk/platform/mimo/splash/MimoSplashAd;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.class Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->onNativeAdLoad(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

.field public final synthetic val$ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->val$ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;-><init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->val$ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/kwad/sdk/api/KsNativeAd;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3$1;->this$1:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/d;

    .line 51
    .line 52
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

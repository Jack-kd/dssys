.class Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isReportExposure:Z

.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->isReportExposure:Z

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/n;->changeReRequestCount()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/e;->closeTopCountDownView()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/o;->reRequest()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/j;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object p1

    iget-boolean p1, p1, Lcom/fl/saas/j;->k0:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/e;->closeTopCountDownView()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->closeInterstitial()V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->click()V

    :goto_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/e;->onClickedEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1, p2}, Lcom/fl/saas/o;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->isReportExposure:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->isReportExposure:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/e;->onShowEvent()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->startCountdown()Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    :cond_0
    return-void
.end method

.method public onAdVideoEnd(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    return-void
.end method

.method public onAdVideoProgress(Lcom/fl/saas/adx/api/mixNative/NativeAdView;J)V
    .locals 0

    return-void
.end method

.method public onAdVideoStart(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    return-void
.end method

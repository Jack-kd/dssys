.class Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityShow(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;

    invoke-direct {v0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getCATView()Landroid/view/View;

    move-result-object p1

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setCtaView([Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->getClicks()[Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$900(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$600(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->release()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->onLoaded(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;)V

    return-void
.end method

.method public onLoaded(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;)V
    .locals 1

    .line 2
    sget p1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/e;->onLoadedEvent()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$700(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$800(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

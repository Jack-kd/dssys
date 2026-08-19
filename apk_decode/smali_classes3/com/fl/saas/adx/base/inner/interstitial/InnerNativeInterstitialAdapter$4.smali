.class Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/D0;


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

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickedEvent()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->click()V

    :cond_0
    return-void
.end method

.method public onLoadedEvent()V
    .locals 0

    return-void
.end method

.method public onShowEvent()V
    .locals 0

    return-void
.end method

.method public reportRequestShow()V
    .locals 0

    return-void
.end method

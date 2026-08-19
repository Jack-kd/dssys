.class Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;


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

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 4

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {v0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v0

    iget v0, v0, Lcom/fl/saas/j;->p:I

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {v1}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v1

    iget-object v1, v1, Lcom/fl/saas/j;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {v2}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    iget-object v2, v2, Lcom/fl/saas/j;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    invoke-virtual {v3}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v3

    iget v3, v3, Lcom/fl/saas/j;->k:I

    invoke-static {v0, v1, v2, v3}, Lcom/fl/saas/adx/base/bean/AdInfo;->create(ILjava/lang/String;Ljava/lang/String;I)Lcom/fl/saas/adx/base/bean/AdInfo;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/fl/saas/adx/base/bean/AdInfo;

    invoke-direct {v0}, Lcom/fl/saas/adx/base/bean/AdInfo;-><init>()V

    return-object v0
.end method

.method public getSource()Lcom/fl/saas/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter$2;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InnerNativeInterstitialAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

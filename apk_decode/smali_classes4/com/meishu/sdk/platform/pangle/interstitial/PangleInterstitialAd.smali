.class public Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;
.super Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;
.source "SourceFile"


# instance fields
.field private interstitialAd:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;-><init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;->interstitialAd:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public showAd(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;->interstitialAd:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;->show(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

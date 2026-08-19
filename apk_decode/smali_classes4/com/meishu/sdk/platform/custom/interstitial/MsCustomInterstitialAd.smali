.class public abstract Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;)V
    .locals 1

    .line 1
    const-string v0, "CUSTOM"

    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;-><init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAdapter;

    return-void
.end method


# virtual methods
.method public showAd()V
    .locals 0

    return-void
.end method

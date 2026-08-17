.class public Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MimoInterstitialAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

.field private isClick:Z

.field private lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

.field private lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

.field private nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/mimo/sdk/InterstitialAd;Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;)V
    .locals 1

    .line 1
    const-string v0, "MIMO"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;-><init>(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/miui/zeus/mimo/sdk/InterstitialAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->isClick:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->isClick:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public setClick()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->isClick:Z

    .line 3
    .line 4
    return-void
.end method

.method public showAd()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 6
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a(Lcom/meishu/sdk/meishu_ad/lifecycle/d;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->adWrapper:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAdLoader;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$1;

    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$1;-><init>(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/mimo/sdk/InterstitialAd;->show(Landroid/app/Activity;Lcom/miui/zeus/mimo/sdk/InterstitialAd$InterstitialAdInteractionListener;)V

    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 2

    .line 9
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->getEnableInterstitialAutoClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleHelper:Lcom/meishu/sdk/meishu_ad/lifecycle/c;

    .line 13
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->b:Landroid/app/Activity;

    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->lifecycleListener:Lcom/meishu/sdk/meishu_ad/lifecycle/d;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/lifecycle/c;->a(Lcom/meishu/sdk/meishu_ad/lifecycle/d;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->nativeInterstitialAd:Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    new-instance v1, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;

    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$2;-><init>(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/zeus/mimo/sdk/InterstitialAd;->show(Landroid/app/Activity;Lcom/miui/zeus/mimo/sdk/InterstitialAd$InterstitialAdInteractionListener;)V

    return-void
.end method

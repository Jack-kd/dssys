.class public Lcom/meishu/sdk/platform/ms/interstitial/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/interstitial/a;


# instance fields
.field public a:Lcom/meishu/sdk/core/ad/interstitial/b;

.field public b:Lcom/meishu/sdk/platform/ms/interstitial/b;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/interstitial/b;Lcom/meishu/sdk/core/ad/interstitial/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->b:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->a:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onADLoaded(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->a:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;

    .line 8
    .line 9
    invoke-direct {v1, p1, v0}, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;-><init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Lcom/meishu/sdk/core/ad/interstitial/b;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->a:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->b:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->b:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 16
    .line 17
    check-cast v0, Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->a:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v1, p1, v2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/a;->a:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 50
    .line 51
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

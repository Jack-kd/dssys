.class Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATBannerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdExposure()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-string p1, "unknown error"

    .line 22
    .line 23
    :goto_1
    sget-object v1, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onClosed()V
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onReceived(Landroid/view/View;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->a(Lcom/anythink/network/funlink/FunlinkATBannerAdapter;)Lcom/fl/saas/adx/api/FLBanner;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->a(Lcom/anythink/network/funlink/FunlinkATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 26
    .line 27
    iget-boolean v2, p1, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->a:Z

    .line 28
    .line 29
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->a(Lcom/anythink/network/funlink/FunlinkATBannerAdapter;)Lcom/fl/saas/adx/api/FLBanner;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->a(Lcom/anythink/network/funlink/FunlinkATBannerAdapter;)Lcom/fl/saas/adx/api/FLBanner;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    int-to-long v4, p1

    .line 44
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 45
    .line 46
    iget-object v6, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATBannerAdapter;->b(Lcom/anythink/network/funlink/FunlinkATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const/4 p1, 0x0

    .line 53
    new-array v8, p1, [Lcom/anythink/core/api/BaseAd;

    .line 54
    .line 55
    invoke-virtual/range {v1 .. v8}, Lcom/anythink/network/funlink/FunlinkATInitManager;->handleAdCacheLoadedCallback(ZLjava/lang/Object;JLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;[Lcom/anythink/core/api/BaseAd;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATBannerAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATBannerAdapter;

    .line 60
    .line 61
    const-string v0, ""

    .line 62
    .line 63
    const-string v1, "bannerView is null"

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

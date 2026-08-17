.class Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediaExtraInfo()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 13
    .line 14
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 19
    .line 20
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v0, v3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 36
    .line 37
    iget-boolean v3, v0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Z

    .line 38
    .line 39
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->k(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    .line 50
    .line 51
    iget-object v7, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    new-array v8, v0, [Lcom/anythink/core/api/BaseAd;

    .line 55
    .line 56
    move-object v5, p1

    .line 57
    invoke-virtual/range {v2 .. v8}, Lcom/anythink/network/toutiao/TTATInitManager;->notifyAdDataLoad(ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/TTClientBidding;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;[Lcom/anythink/core/api/BaseAd;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onFullScreenVideoCached()V
    .locals 0

    .line 1
    return-void
.end method

.method public onFullScreenVideoCached(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    .line 3
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    iget-boolean v0, p1, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->g:Z

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->b(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->a(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    iget-object v2, v2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/TTClientBidding;Lcom/anythink/core/api/ATBiddingListener;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->v(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATInterstitialAdapter$a;->a:Lcom/anythink/network/toutiao/TTATInterstitialAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATInterstitialAdapter;->B(Lcom/anythink/network/toutiao/TTATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

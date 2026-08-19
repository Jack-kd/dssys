.class Lcom/anythink/network/funlink/FunlinkATAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ">;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    move-object v7, p1

    .line 18
    check-cast v7, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 19
    .line 20
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATAdapter;

    .line 25
    .line 26
    iget-boolean v1, p1, Lcom/anythink/network/funlink/FunlinkATAdapter;->a:Z

    .line 27
    .line 28
    iget-object v5, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATAdapter;->a(Lcom/anythink/network/funlink/FunlinkATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    move-object v2, p2

    .line 35
    move-wide v3, p3

    .line 36
    invoke-virtual/range {v0 .. v7}, Lcom/anythink/network/funlink/FunlinkATInitManager;->handleAdCacheLoadedCallback(ZLjava/lang/Object;JLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;[Lcom/anythink/core/api/BaseAd;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATAdapter;

    .line 41
    .line 42
    const-string p2, ""

    .line 43
    .line 44
    const-string p3, "nativeAdDataList is empty"

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

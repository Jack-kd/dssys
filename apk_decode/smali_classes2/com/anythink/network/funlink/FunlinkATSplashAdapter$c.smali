.class Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADLoaded(Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;)Lcom/fl/saas/adx/base/interfaces/SpreadLoadListener$SpreadAd;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {p1, v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;Z)Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATInitManager;->getInstance()Lcom/anythink/network/funlink/FunlinkATInitManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 27
    .line 28
    iget-boolean v2, p1, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->b:Z

    .line 29
    .line 30
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->b(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/fl/saas/adx/api/FLSpread;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->b(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/fl/saas/adx/api/FLSpread;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    int-to-long v4, p1

    .line 45
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 46
    .line 47
    iget-object v6, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->c(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const/4 p1, 0x0

    .line 54
    new-array v8, p1, [Lcom/anythink/core/api/BaseAd;

    .line 55
    .line 56
    invoke-virtual/range {v1 .. v8}, Lcom/anythink/network/funlink/FunlinkATInitManager;->handleAdCacheLoadedCallback(ZLjava/lang/Object;JLcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;[Lcom/anythink/core/api/BaseAd;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$c;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 61
    .line 62
    const-string v0, ""

    .line 63
    .line 64
    const-string v1, "spreadAd is null"

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

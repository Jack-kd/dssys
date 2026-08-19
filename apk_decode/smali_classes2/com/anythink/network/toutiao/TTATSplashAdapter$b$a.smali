.class Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$CSJSplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATSplashAdapter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSplashLoadFail(Lcom/bytedance/sdk/openadsdk/CSJAdError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getMsg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onSplashLoadSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->getMediaExtraInfo()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 10
    .line 11
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, p1, v2}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->l(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->s(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdDataLoaded()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public onSplashRenderFail(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;Lcom/bytedance/sdk/openadsdk/CSJAdError;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ""

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/CSJAdError;->getMsg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, v0, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onSplashRenderSuccess(Lcom/bytedance/sdk/openadsdk/CSJSplashAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->e:Lcom/bytedance/sdk/openadsdk/CSJSplashAd;

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/CSJSplashAd;->getMediaExtraInfo()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 26
    .line 27
    new-instance v1, Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 57
    .line 58
    iget-boolean v0, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter;->i:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    :try_start_1
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 77
    .line 78
    iget-object v2, v1, Lcom/anythink/network/toutiao/TTATSplashAdapter;->e:Lcom/bytedance/sdk/openadsdk/CSJSplashAd;

    .line 79
    .line 80
    iget-object v1, v1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v2, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/TTClientBidding;Lcom/anythink/core/api/ATBiddingListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->t(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$b$a;->a:Lcom/anythink/network/toutiao/TTATSplashAdapter$b;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATSplashAdapter$b;->c:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATSplashAdapter;->u(Lcom/anythink/network/toutiao/TTATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v0, 0x0

    .line 101
    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    .line 102
    .line 103
    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 104
    .line 105
    .line 106
    :catchall_1
    :cond_3
    :goto_3
    return-void
.end method

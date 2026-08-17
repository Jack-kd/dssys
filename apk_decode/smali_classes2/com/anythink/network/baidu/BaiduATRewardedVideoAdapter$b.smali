.class Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->c:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->j(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->k(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->b:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->c:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->a(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->m(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;->n(Lcom/anythink/network/baidu/BaiduATRewardedVideoAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "Baidu: init error, "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, ""

    .line 53
    .line 54
    invoke-interface {v1, v2, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

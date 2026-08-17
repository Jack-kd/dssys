.class Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/anythink/network/baidu/BaiduATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATSplashAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->c:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->j(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->k(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->d:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->g:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->b:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$b;->c:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Lcom/anythink/network/baidu/BaiduATSplashAdapter;Landroid/content/Context;ZLjava/util/Map;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

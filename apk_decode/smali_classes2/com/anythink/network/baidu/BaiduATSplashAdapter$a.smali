.class Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/SplashInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Landroid/content/Context;ZLjava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->l(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->j:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 20
    .line 21
    iget-boolean v2, v1, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->i:Z

    .line 22
    .line 23
    iget-object v3, v1, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->m(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v4, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(ZLjava/lang/Object;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public onAdCacheFailed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const-string v2, "onAdCacheFailed"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onAdCacheSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 5
    .line 6
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->i(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->g(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAdExposed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->n(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->c:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "2"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->e(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->f(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->h:Z

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d:Lcom/baidu/mobads/sdk/api/SplashAd;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 17
    .line 18
    sget-object v3, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 19
    .line 20
    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->n(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "onAdFailed: "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 49
    .line 50
    const/16 v1, 0x63

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->b(Lcom/anythink/network/baidu/BaiduATSplashAdapter;I)I

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->o(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->p(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "4006"

    .line 70
    .line 71
    invoke-static {v1, v2, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShowFail(Lcom/anythink/core/api/AdError;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->q(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void
.end method

.method public onAdPresent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->n(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->c:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->c(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->d(Lcom/anythink/network/baidu/BaiduATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onAdSkip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATSplashAdapter$a;->a:Lcom/anythink/network/baidu/BaiduATSplashAdapter;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Lcom/anythink/network/baidu/BaiduATSplashAdapter;->a(Lcom/anythink/network/baidu/BaiduATSplashAdapter;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onLpClosed()V
    .locals 0

    return-void
.end method

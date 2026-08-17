.class Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSplashAdClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->d(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->e(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onSplashAdClose(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    invoke-static {p1, v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;I)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->f(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->g(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onSplashAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, v0, p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->a(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onSplashAdLoadSuccess(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->r(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->getEcpm()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->getCurrency()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 70
    .line 71
    iget-object v3, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->s(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const/4 v5, 0x0

    .line 78
    invoke-static/range {v0 .. v5}, Lcom/anythink/network/sigmob/SigmobATInitManager;->onC2SBiddingResultWithCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingListener;Ljava/lang/Object;Lcom/anythink/core/api/BaseAd;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->c(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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
    :cond_1
    return-void
.end method

.method public onSplashAdShow(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->p(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->q(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onSplashAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSplashAdSkip(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->m(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {p1, v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;I)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->h(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b$a;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$b;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->i(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

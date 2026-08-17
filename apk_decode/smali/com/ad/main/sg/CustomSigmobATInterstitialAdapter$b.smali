.class public Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->o(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->c(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClicked()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->d(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->e(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdClose()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onInterstitialAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, v0, p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final onInterstitialAdLoadSuccess(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "ecpm is null"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->b(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->h(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->h(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->k(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATBiddingListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Lj/a;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 96
    .line 97
    invoke-static {v4}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->h(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-direct {v1, v4}, Lj/a;-><init>(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    sget-object v4, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 105
    .line 106
    invoke-static {v2, v3, v0, v1, v4}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->i(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->j(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/4 v0, 0x0

    .line 130
    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    .line 131
    .line 132
    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    return-void
.end method

.method public final onInterstitialAdPreLoadFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onInterstitialAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInterstitialAdShow(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->l(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->m(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdShow()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->n(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoStart()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public onInterstitialAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->a(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->f(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter$b;->a:Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;->g(Lcom/ad/main/sg/CustomSigmobATInterstitialAdapter;)Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p2, v0, p1}, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;->onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

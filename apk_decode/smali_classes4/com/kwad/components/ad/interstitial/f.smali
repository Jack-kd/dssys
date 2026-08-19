.class public final Lcom/kwad/components/ad/interstitial/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static loadInterstitialAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;)V
    .locals 9
    .param p0    # Lcom/kwad/sdk/api/KsScene;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v5

    .line 5
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->Fx()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "KsAdInterstitialLoadManager"

    .line 16
    .line 17
    const-string v0, "loadInterstitialAd please init sdk first"

    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lcom/kwad/components/ad/interstitial/f$1;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/interstitial/f$1;-><init>(Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->covert(Lcom/kwad/sdk/api/KsScene;)Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/kwad/sdk/commercial/convert/e;->d(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/kwad/components/core/t/t;->wU()Lcom/kwad/components/core/t/t;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "loadInterstitialAd"

    .line 43
    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/kwad/components/core/t/t;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    const/16 v0, 0x17

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdStyle(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/c;->eZ()Lcom/kwad/components/ad/interstitial/report/c;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    invoke-virtual {v0, v7, v8}, Lcom/kwad/components/ad/interstitial/report/c;->p(J)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    new-instance v0, Lcom/kwad/components/core/request/model/a$a;

    .line 73
    .line 74
    invoke-direct {v0}, Lcom/kwad/components/core/request/model/a$a;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v2, Lcom/kwad/components/core/request/model/ImpInfo;

    .line 78
    .line 79
    invoke-direct {v2, v1}, Lcom/kwad/components/core/request/model/ImpInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/request/model/a$a;->e(Lcom/kwad/components/core/request/model/ImpInfo;)Lcom/kwad/components/core/request/model/a$a;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/request/model/a$a;->aZ(Z)Lcom/kwad/components/core/request/model/a$a;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-instance v0, Lcom/kwad/components/ad/interstitial/f$2;

    .line 91
    .line 92
    move-object v2, p1

    .line 93
    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/ad/interstitial/f$2;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/api/KsLoadManager$InterstitialAdListener;JJ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/c;)Lcom/kwad/components/core/request/model/a$a;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/kwad/components/core/request/model/a$a;->wd()Lcom/kwad/components/core/request/model/a;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v7, p0}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Lcom/kwad/components/core/request/model/a;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

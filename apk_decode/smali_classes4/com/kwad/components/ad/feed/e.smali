.class public final Lcom/kwad/components/ad/feed/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Z)V
    .locals 9
    .param p1    # Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

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
    const-string p0, "KsAdFeedLoadManager"

    .line 16
    .line 17
    const-string p2, "loadConfigFeedAd please init sdk first"

    .line 18
    .line 19
    invoke-static {p0, p2}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lcom/kwad/components/ad/feed/e$1;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/feed/e$1;-><init>(Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V

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
    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/kwad/sdk/commercial/convert/e;->d(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-virtual {v2}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdNum()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Lcom/kwad/components/ad/feed/monitor/b;->M(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/kwad/components/core/t/t;->wU()Lcom/kwad/components/core/t/t;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "loadConfigFeedAd"

    .line 54
    .line 55
    invoke-virtual {p0, v2, v0}, Lcom/kwad/components/core/t/t;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {v2, v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdStyle(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    new-instance v0, Lcom/kwad/components/core/request/model/a$a;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/kwad/components/core/request/model/a$a;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/kwad/components/core/request/model/ImpInfo;

    .line 73
    .line 74
    invoke-direct {v1, v2}, Lcom/kwad/components/core/request/model/ImpInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/request/model/a$a;->e(Lcom/kwad/components/core/request/model/ImpInfo;)Lcom/kwad/components/core/request/model/a$a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/request/model/a$a;->aZ(Z)Lcom/kwad/components/core/request/model/a$a;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    new-instance v0, Lcom/kwad/components/ad/feed/e$2;

    .line 86
    .line 87
    move-object v1, p1

    .line 88
    move v3, p2

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/kwad/components/ad/feed/e$2;-><init>(Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;Lcom/kwad/sdk/internal/api/SceneImpl;ZJJ)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/c;)Lcom/kwad/components/core/request/model/a$a;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/kwad/components/core/request/model/a$a;->wd()Lcom/kwad/components/core/request/model/a;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v8, p0}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Lcom/kwad/components/core/request/model/a;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

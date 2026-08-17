.class public final Lcom/kwad/components/ad/draw/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static loadDrawAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;)V
    .locals 8
    .param p1    # Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;
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
    invoke-static {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->covert(Lcom/kwad/sdk/api/KsScene;)Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/kwad/sdk/internal/api/SceneImpl;->getAdNum()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    const-string p0, "ad_num"

    .line 16
    .line 17
    invoke-static {v1, p0}, Lcom/kwad/components/ad/draw/a/d;->a(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/kwad/components/core/t/t;->wU()Lcom/kwad/components/core/t/t;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "loadDrawAd"

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/kwad/components/core/t/t;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v0, 0x6

    .line 31
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdStyle(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/kwad/components/ad/draw/a/d;->b(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/kwad/sdk/commercial/convert/e;->d(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    new-instance v0, Lcom/kwad/components/core/request/model/a$a;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/kwad/components/core/request/model/a$a;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v4, Lcom/kwad/components/core/request/model/ImpInfo;

    .line 54
    .line 55
    invoke-direct {v4, v1}, Lcom/kwad/components/core/request/model/ImpInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Lcom/kwad/components/core/request/model/a$a;->e(Lcom/kwad/components/core/request/model/ImpInfo;)Lcom/kwad/components/core/request/model/a$a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Lcom/kwad/components/core/request/model/a$a;->aZ(Z)Lcom/kwad/components/core/request/model/a$a;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    new-instance v0, Lcom/kwad/components/ad/draw/d$1;

    .line 67
    .line 68
    move-object v4, p1

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/ad/draw/d$1;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;JLcom/kwad/sdk/api/KsLoadManager$DrawAdListener;J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/c;)Lcom/kwad/components/core/request/model/a$a;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/kwad/components/core/request/model/a$a;->wd()Lcom/kwad/components/core/request/model/a;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v7, p0}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Lcom/kwad/components/core/request/model/a;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

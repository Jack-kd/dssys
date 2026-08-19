.class public final Lcom/kwad/components/ad/fullscreen/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/internal/api/SceneImpl;",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-eqz v1, :cond_1

    .line 18
    iget-object v2, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    if-nez v2, :cond_2

    .line 19
    iput-object p0, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 20
    :cond_2
    invoke-static {v1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    .line 21
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->bk(Lcom/kwad/sdk/core/response/model/AdInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_3

    .line 22
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->M(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_3
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_4
    invoke-static {v2}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/components/ad/fullscreen/e;)V
    .locals 6
    .param p1    # Lcom/kwad/components/ad/fullscreen/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->covert(Lcom/kwad/sdk/api/KsScene;)Lcom/kwad/sdk/internal/api/SceneImpl;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/kwad/sdk/commercial/convert/e;->d(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZJ)V

    .line 5
    invoke-static {}, Lcom/kwad/components/core/t/t;->wU()Lcom/kwad/components/core/t/t;

    move-result-object v2

    const-string v3, "loadFullScreenVideoAd"

    invoke-virtual {v2, p0, v3}, Lcom/kwad/components/core/t/t;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    .line 6
    invoke-virtual {p0, v3}, Lcom/kwad/sdk/internal/api/SceneImpl;->setAdStyle(I)V

    .line 7
    invoke-static {}, Lcom/kwad/components/ad/KsAdLoadManager;->O()Lcom/kwad/components/ad/KsAdLoadManager;

    move-result-object v3

    new-instance v4, Lcom/kwad/components/core/request/model/a$a;

    invoke-direct {v4}, Lcom/kwad/components/core/request/model/a$a;-><init>()V

    new-instance v5, Lcom/kwad/components/core/request/model/ImpInfo;

    invoke-direct {v5, p0}, Lcom/kwad/components/core/request/model/ImpInfo;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 8
    invoke-virtual {v4, v5}, Lcom/kwad/components/core/request/model/a$a;->e(Lcom/kwad/components/core/request/model/ImpInfo;)Lcom/kwad/components/core/request/model/a$a;

    move-result-object v4

    .line 9
    invoke-virtual {v4, v2}, Lcom/kwad/components/core/request/model/a$a;->aZ(Z)Lcom/kwad/components/core/request/model/a$a;

    move-result-object v2

    new-instance v4, Lcom/kwad/components/ad/fullscreen/f$2;

    invoke-direct {v4, p0}, Lcom/kwad/components/ad/fullscreen/f$2;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 10
    invoke-virtual {v2, v4}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/j;)Lcom/kwad/components/core/request/model/a$a;

    move-result-object v2

    new-instance v4, Lcom/kwad/components/ad/fullscreen/f$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/kwad/components/ad/fullscreen/f$1;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/components/ad/fullscreen/e;J)V

    .line 11
    invoke-virtual {v2, v4}, Lcom/kwad/components/core/request/model/a$a;->a(Lcom/kwad/components/core/request/c;)Lcom/kwad/components/core/request/model/a$a;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/kwad/components/core/request/model/a$a;->wd()Lcom/kwad/components/core/request/model/a;

    move-result-object p0

    .line 13
    invoke-virtual {v3, p0}, Lcom/kwad/components/ad/KsAdLoadManager;->a(Lcom/kwad/components/core/request/model/a;)V

    return-void
.end method

.method private static a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/fullscreen/e;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            "Lcom/kwad/components/ad/fullscreen/e;",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsFullScreenVideoAd;",
            ">;J)V"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/kwad/components/ad/fullscreen/f$3;

    move-object v3, p0

    move-object v2, p1

    move-object v1, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwad/components/ad/fullscreen/f$3;-><init>(Ljava/util/List;Lcom/kwad/components/ad/fullscreen/e;Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/kwad/components/ad/fullscreen/f;->a(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/fullscreen/e;Ljava/util/List;J)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/kwad/components/ad/fullscreen/f;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/fullscreen/e;Ljava/util/List;J)V

    return-void
.end method

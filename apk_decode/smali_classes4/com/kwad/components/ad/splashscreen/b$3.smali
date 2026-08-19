.class final Lcom/kwad/components/ad/splashscreen/b$3;
.super Lcom/kwad/components/core/request/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/b;->loadSplashScreenAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

.field final synthetic Go:Lcom/kwad/components/ad/splashscreen/b$b;

.field final synthetic Gp:Ljava/lang/Runnable;

.field final synthetic Gq:Lcom/kwad/components/ad/splashscreen/b$a;

.field final synthetic Gr:J

.field final synthetic Gs:J

.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic ch:J


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/splashscreen/b$b;Ljava/lang/Runnable;Lcom/kwad/components/ad/splashscreen/b$a;Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;JJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Go:Lcom/kwad/components/ad/splashscreen/b$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Gp:Ljava/lang/Runnable;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Gq:Lcom/kwad/components/ad/splashscreen/b$a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/ad/splashscreen/b$3;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/kwad/components/ad/splashscreen/b$3;->ch:J

    .line 12
    .line 13
    iput-wide p8, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Gr:J

    .line 14
    .line 15
    iput-wide p10, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/kwad/components/core/request/d;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Go:Lcom/kwad/components/ad/splashscreen/b$b;

    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/b$b;->a(Lcom/kwad/components/ad/splashscreen/b$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/b;->lT()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Gp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/b$3;->Gq:Lcom/kwad/components/ad/splashscreen/b$a;

    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/b$a;->a(Lcom/kwad/components/ad/splashscreen/b$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    if-eq p1, v0, :cond_1

    .line 5
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/b$3;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 6
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide v0

    invoke-static {p3, p1, p2, v0, v1}, Lcom/kwad/components/ad/splashscreen/monitor/b;->b(ZILjava/lang/String;J)V

    .line 7
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/b$3;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 8
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide v0

    invoke-static {p3, p1, p2, v0, v1}, Lcom/kwad/components/ad/splashscreen/monitor/b;->c(ZILjava/lang/String;J)V

    .line 9
    :cond_1
    new-instance p3, Lcom/kwad/components/ad/splashscreen/b$3$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/kwad/components/ad/splashscreen/b$3$1;-><init>(Lcom/kwad/components/ad/splashscreen/b$3;ILjava/lang/String;)V

    invoke-static {p3}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
    .locals 17
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    .line 10
    new-instance v1, Lcom/kwad/components/ad/splashscreen/b$3$2;

    invoke-direct {v1, v2, v0}, Lcom/kwad/components/ad/splashscreen/b$3$2;-><init>(Lcom/kwad/components/ad/splashscreen/b$3;Lcom/kwad/sdk/core/response/model/AdResultData;)V

    invoke-static {v1}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11
    :try_start_0
    iget-object v1, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gq:Lcom/kwad/components/ad/splashscreen/b$a;

    iget-object v3, v2, Lcom/kwad/components/ad/splashscreen/b$3;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    iget-wide v4, v3, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v3, p2

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/components/ad/splashscreen/b$a;Lcom/kwad/components/core/request/d;ZJ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/kwad/components/ad/splashscreen/b$3;->ch:J

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->loadDataTime:J

    .line 14
    iget-wide v5, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gr:J

    iput-wide v5, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->requestStartTime:J

    .line 15
    iput-boolean v3, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->notNetworkRequest:Z

    .line 16
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v5, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    .line 17
    invoke-static {v4, v5, v6}, Lcom/kwad/components/ad/splashscreen/monitor/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;J)V

    .line 18
    iget-object v1, v2, Lcom/kwad/components/ad/splashscreen/b$3;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    const/4 v11, 0x1

    invoke-static {v1, v11}, Lcom/kwad/sdk/commercial/convert/e;->b(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 20
    new-instance v1, Lcom/kwad/components/ad/splashscreen/KsSplashScreenAdControl;

    iget-object v5, v2, Lcom/kwad/components/ad/splashscreen/b$3;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-direct {v1, v5, v0}, Lcom/kwad/components/ad/splashscreen/KsSplashScreenAdControl;-><init>(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/core/response/model/AdResultData;)V

    .line 21
    sget-object v5, Lcom/kwad/components/ad/splashscreen/b/a;->Hn:Lcom/kwad/sdk/core/config/item/d;

    invoke-static {v5}, Lcom/kwad/sdk/core/config/e;->a(Lcom/kwad/sdk/core/config/item/d;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "loadSplashAd cache returned"

    const/4 v13, 0x2

    const-string v14, "KsAdSplashScreenLoadManager"

    if-eqz v5, :cond_4

    .line 22
    :try_start_2
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->i(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 23
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Go:Lcom/kwad/components/ad/splashscreen/b$b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    iget-object v10, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gp:Ljava/lang/Runnable;

    invoke-static/range {v4 .. v10}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/core/response/model/AdTemplate;JJLjava/lang/Runnable;)Z

    move-result v4

    move-wide v15, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 24
    :cond_1
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    iget-wide v7, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gr:J

    const/4 v9, 0x1

    move-object v6, v5

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    move-object v4, v6

    .line 25
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->h(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/4 v5, 0x2

    move-wide v6, v15

    .line 27
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 28
    invoke-static {v14, v12}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v11}, Lcom/kwad/components/core/p/a;->bQ(I)V

    .line 31
    iput v13, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->splashAdLoadType:I

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    move-wide v6, v15

    .line 32
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v0, v11, v11}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->a(Lcom/kwad/sdk/core/response/model/AdResultData;ZI)I

    move-result v0

    if-lez v0, :cond_3

    .line 34
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/4 v5, 0x3

    .line 35
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 36
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v13}, Lcom/kwad/components/core/p/a;->bQ(I)V

    .line 38
    iput v11, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->splashAdLoadType:I

    return-void

    .line 39
    :cond_3
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/4 v5, 0x4

    .line 40
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    return-void

    .line 41
    :cond_4
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->i(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 42
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->j(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    move-object v5, v4

    .line 43
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Go:Lcom/kwad/components/ad/splashscreen/b$b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    iget-object v10, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gp:Ljava/lang/Runnable;

    invoke-static/range {v4 .. v10}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/core/response/model/AdTemplate;JJLjava/lang/Runnable;)Z

    move-result v0

    move-object v4, v5

    move-wide v15, v6

    if-eqz v0, :cond_6

    goto/16 :goto_1

    :cond_6
    move-object v5, v4

    .line 44
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    iget-wide v7, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gr:J

    const/4 v9, 0x2

    move-object v6, v5

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    move-object v4, v6

    .line 45
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/16 v5, 0x8

    move-wide v6, v15

    .line 46
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 47
    const-string v0, "loadSplashAd live no cache returned"

    invoke-static {v14, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object v0

    const/4 v1, 0x5

    .line 49
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/p/a;->bQ(I)V

    return-void

    .line 50
    :cond_7
    :goto_0
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->h(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v5

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "loadSplashAd onSuccess "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_9

    move-object v5, v4

    .line 52
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Go:Lcom/kwad/components/ad/splashscreen/b$b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    iget-object v10, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gp:Ljava/lang/Runnable;

    invoke-static/range {v4 .. v10}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/core/response/model/AdTemplate;JJLjava/lang/Runnable;)Z

    move-result v0

    move-object v4, v5

    move-wide v15, v6

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    move-object v5, v4

    .line 53
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    iget-wide v7, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gr:J

    const/4 v9, 0x2

    move-object v6, v5

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    move-object v4, v6

    .line 54
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/4 v5, 0x2

    move-wide v6, v15

    .line 55
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 56
    invoke-static {v14, v12}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v11}, Lcom/kwad/components/core/p/a;->bQ(I)V

    .line 59
    iput v13, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->splashAdLoadType:I

    return-void

    .line 60
    :cond_9
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->i(Lcom/kwad/sdk/core/response/model/AdResultData;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 61
    const-string v5, "loadSplashAd image returned"

    invoke-static {v14, v5}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->lZ()Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;

    move-result-object v5

    .line 63
    invoke-virtual {v5, v0, v11, v11}, Lcom/kwad/components/ad/splashscreen/SplashPreloadManager;->a(Lcom/kwad/sdk/core/response/model/AdResultData;ZI)I

    move-result v0

    move-object v5, v4

    .line 64
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Go:Lcom/kwad/components/ad/splashscreen/b$b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    iget-object v10, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gp:Ljava/lang/Runnable;

    invoke-static/range {v4 .. v10}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/components/ad/splashscreen/b$b;Lcom/kwad/sdk/core/response/model/AdTemplate;JJLjava/lang/Runnable;)Z

    move-result v4

    move-wide v15, v6

    if-eqz v4, :cond_a

    :goto_1
    return-void

    :cond_a
    if-lez v0, :cond_b

    .line 65
    iget-object v4, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gl:Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;

    iget-wide v7, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gr:J

    const/4 v9, 0x2

    move-object v6, v5

    move-object v5, v1

    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/b;->b(Lcom/kwad/sdk/api/KsLoadManager$SplashScreenAdListener;Lcom/kwad/sdk/api/KsSplashScreenAd;Lcom/kwad/sdk/core/response/model/AdTemplate;JI)V

    move-object v4, v6

    .line 66
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/4 v5, 0x3

    move-wide v6, v15

    .line 67
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 68
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v13}, Lcom/kwad/components/core/p/a;->bQ(I)V

    .line 70
    iput v11, v4, Lcom/kwad/sdk/core/response/model/AdTemplate;->splashAdLoadType:I

    return-void

    :cond_b
    move-object v4, v5

    move-wide v6, v15

    .line 71
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/4 v5, 0x4

    .line 72
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 73
    iget-object v0, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gq:Lcom/kwad/components/ad/splashscreen/b$a;

    invoke-static {v0, v11}, Lcom/kwad/components/ad/splashscreen/b$a;->a(Lcom/kwad/components/ad/splashscreen/b$a;Z)Z

    .line 74
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTh:Lcom/kwad/sdk/core/network/e;

    iget v1, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/kwad/components/ad/splashscreen/b$3;->a(ILjava/lang/String;Z)V

    return-void

    .line 75
    :cond_c
    iget-object v0, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Go:Lcom/kwad/components/ad/splashscreen/b$b;

    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/b$b;->a(Lcom/kwad/components/ad/splashscreen/b$b;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 76
    const-string v0, "loadSplashAd isTimeOut return "

    invoke-static {v14, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_d
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/b;->lT()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    iget-wide v8, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gs:J

    const/4 v5, 0x5

    .line 79
    invoke-static/range {v4 .. v9}, Lcom/kwad/components/ad/splashscreen/monitor/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;IJJ)V

    .line 80
    iget-object v0, v2, Lcom/kwad/components/ad/splashscreen/b$3;->Gq:Lcom/kwad/components/ad/splashscreen/b$a;

    invoke-static {v0, v11}, Lcom/kwad/components/ad/splashscreen/b$a;->a(Lcom/kwad/components/ad/splashscreen/b$a;Z)Z

    .line 81
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTf:Lcom/kwad/sdk/core/network/e;

    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u7f13\u5b58\u672a\u547d\u4e2d"

    invoke-virtual {v2, v0, v1, v3}, Lcom/kwad/components/ad/splashscreen/b$3;->a(ILjava/lang/String;Z)V

    .line 82
    const-string v0, "loadSplashAd no cache returned"

    invoke-static {v14, v0}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/kwad/components/core/p/a;->vL()Lcom/kwad/components/core/p/a;

    move-result-object v0

    const/4 v1, 0x3

    .line 84
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/p/a;->bQ(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    move/from16 v3, p2

    .line 85
    :goto_2
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 86
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTj:Lcom/kwad/sdk/core/network/e;

    iget v1, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/kwad/components/ad/splashscreen/b$3;->a(ILjava/lang/String;Z)V

    return-void
.end method

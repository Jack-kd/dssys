.class public final Lcom/kwad/sdk/core/adlog/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static IS()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/kwad/sdk/core/adlog/b$2;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/kwad/sdk/core/adlog/b$2;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 2
    .param p0    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/adlog/b$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/adlog/b$1;-><init>(Lcom/kwad/sdk/core/adlog/c/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/a;Lcom/kwad/sdk/core/adlog/a/a;)V
    .locals 10
    .param p2    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/core/adlog/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v1, p2, Lcom/kwad/sdk/core/adlog/c/a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 3
    iget v2, p2, Lcom/kwad/sdk/core/adlog/c/a;->aKI:I

    .line 4
    :try_start_0
    invoke-static {v1, v2, p3}, Lcom/kwad/sdk/core/adlog/b/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/a/a;)V

    .line 5
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kwad/sdk/utils/aq;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "AdLogRequestManager"

    if-nez v3, :cond_0

    .line 6
    :try_start_1
    const-string v3, "no network while report log"

    invoke-static {v4, v3}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v5, "no network"

    const v4, 0x186a4

    move-object v3, p0

    move-object v6, p3

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/core/adlog/b/c;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/adlog/a/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v1

    move v8, v2

    .line 9
    :try_start_2
    invoke-static {}, Lcom/kwad/sdk/core/adlog/a/b;->IV()Lcom/kwad/sdk/core/adlog/a/b;

    move-result-object v0

    move-object v6, v5

    const v5, 0x186a4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/kwad/sdk/core/adlog/a/b;->a(Lcom/kwad/sdk/core/adlog/a/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/a;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    :goto_0
    move-object v7, v1

    move v8, v2

    goto/16 :goto_2

    :cond_0
    move-object v7, v1

    move v8, v2

    .line 10
    invoke-static {p0}, Lcom/kwad/sdk/utils/by;->ir(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 11
    :try_start_3
    const-string v5, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const v4, 0x186a1

    move-object v3, p0

    move-object v6, p3

    move-object v1, v7

    move v2, v8

    :try_start_4
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/core/adlog/b/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/adlog/a/a;)V

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v7

    move v2, v8

    goto/16 :goto_2

    :cond_1
    move-object v1, v7

    move v2, v8

    .line 12
    invoke-static {}, Lcom/kwad/sdk/h;->EG()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, p0, v5, p1}, Lcom/kwad/sdk/export/proxy/AdHttpProxy;->doPost(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;)Lcom/kwad/sdk/core/network/c;

    move-result-object v0

    .line 13
    new-instance v5, Lcom/kwad/sdk/core/adlog/AdLogRequestResult;

    invoke-direct {v5}, Lcom/kwad/sdk/core/adlog/AdLogRequestResult;-><init>()V

    .line 14
    iget-object v6, v0, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kwad/sdk/core/adlog/AdLogRequestResult;->parseResult(Ljava/lang/String;)V

    .line 15
    iget v6, v0, Lcom/kwad/sdk/core/network/c;->code:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_2

    .line 16
    :try_start_5
    invoke-static {v6}, Lcom/kwad/sdk/commercial/e;->dt(I)I

    move-result v4

    .line 17
    iget-object v5, v0, Lcom/kwad/sdk/core/network/c;->aSY:Ljava/lang/String;

    move-object v3, p0

    move-object v6, p3

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/core/adlog/b/c;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/adlog/a/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v8, v1

    move v9, v2

    .line 19
    :try_start_6
    invoke-static {}, Lcom/kwad/sdk/core/adlog/a/b;->IV()Lcom/kwad/sdk/core/adlog/a/b;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v1, p3

    move-object v6, v5

    move v5, v4

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/kwad/sdk/core/adlog/a/b;->a(Lcom/kwad/sdk/core/adlog/a/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/a;ILjava/lang/String;)V

    return-void

    :catchall_3
    move-exception v0

    :goto_1
    move-object v7, v8

    move v8, v9

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    move-object v8, v1

    move v9, v2

    goto :goto_1

    :cond_2
    move-object v8, v1

    move v9, v2

    .line 20
    invoke-virtual {v5}, Lcom/kwad/sdk/core/response/model/BaseResultData;->isResultOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {v8, v9, p3}, Lcom/kwad/sdk/core/adlog/b/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/core/adlog/a/a;)V

    .line 22
    invoke-static {p2}, Lcom/kwad/sdk/core/adlog/b;->b(Lcom/kwad/sdk/core/adlog/c/a;)V

    .line 23
    invoke-static {}, Lcom/kwad/sdk/core/adlog/a/b;->IV()Lcom/kwad/sdk/core/adlog/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/adlog/a/b;->IW()V

    return-void

    .line 24
    :cond_3
    invoke-virtual {v5}, Lcom/kwad/sdk/core/adlog/AdLogRequestResult;->isCheatingFlow()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_4

    .line 25
    :try_start_7
    invoke-virtual {v5}, Lcom/kwad/sdk/core/adlog/AdLogRequestResult;->isCheatingFlow()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/kwad/sdk/core/response/model/AdTemplate;->setCheatingFlow(Z)V

    .line 26
    iget v4, v5, Lcom/kwad/sdk/core/response/model/BaseResultData;->result:I

    iget-object v5, v5, Lcom/kwad/sdk/core/response/model/BaseResultData;->errorMsg:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v3, p0

    move-object v6, p3

    move-object v1, v8

    move v2, v9

    :try_start_8
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/core/adlog/b/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/adlog/a/a;)V

    return-void

    :catchall_5
    move-exception v0

    move-object v1, v8

    move v2, v9

    goto/16 :goto_0

    :cond_4
    move-object v1, v8

    move v2, v9

    .line 27
    iget v0, v5, Lcom/kwad/sdk/core/response/model/BaseResultData;->result:I

    .line 28
    iget-object v5, v5, Lcom/kwad/sdk/core/response/model/BaseResultData;->errorMsg:Ljava/lang/String;

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "request fail code:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", errorMsg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    move-object v6, p3

    move v4, v0

    .line 30
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/core/adlog/b/c;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/adlog/a/a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v7, v1

    move v8, v2

    .line 31
    :try_start_9
    invoke-static {}, Lcom/kwad/sdk/core/adlog/a/b;->IV()Lcom/kwad/sdk/core/adlog/a/b;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v1, p3

    move-object v6, v5

    move v5, v4

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/kwad/sdk/core/adlog/a/b;->a(Lcom/kwad/sdk/core/adlog/a/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/a;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    :goto_2
    const v4, 0x186a0

    .line 32
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->y(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 33
    const-string v3, ""

    move-object v6, p3

    move-object v1, v7

    move v2, v8

    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/core/adlog/b/c;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;ILjava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/adlog/a/a;)V

    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 35
    invoke-static {v0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Lcom/kwad/sdk/core/adlog/c/a;)V
    .locals 0
    .param p0    # Lcom/kwad/sdk/core/adlog/c/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/core/track/a;->e(Lcom/kwad/sdk/core/adlog/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/a;Lcom/kwad/sdk/core/adlog/a/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/kwad/sdk/core/adlog/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/kwad/sdk/core/adlog/c/a;Lcom/kwad/sdk/core/adlog/a/a;)V

    return-void
.end method

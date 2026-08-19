.class final Lcom/kwad/components/ad/fullscreen/f$1;
.super Lcom/kwad/components/core/request/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/fullscreen/f;->a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/components/ad/fullscreen/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic ch:J

.field final synthetic jR:Lcom/kwad/components/ad/fullscreen/e;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/components/ad/fullscreen/e;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/fullscreen/f$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/fullscreen/f$1;->jR:Lcom/kwad/components/ad/fullscreen/e;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/kwad/components/ad/fullscreen/f$1;->ch:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/request/e;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/fullscreen/f$1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/request/e;->ajG:Z

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/fullscreen/f$1;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/request/e;->ajG:Z

    return p1
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
    .locals 16
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 3
    const-class v2, Lcom/kwad/components/core/offline/a/d/a;

    iget-object v3, v1, Lcom/kwad/components/ad/fullscreen/f$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    iget-wide v3, v3, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    const/4 v7, 0x0

    invoke-static {v7, v3, v4}, Lcom/kwad/components/ad/reward/monitor/d;->c(ZJ)V

    .line 4
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    move-result-object v3

    .line 5
    iget-object v4, v1, Lcom/kwad/components/ad/fullscreen/f$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-static {v4, v3}, Lcom/kwad/components/ad/fullscreen/f;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v9, "onFullScreenVideoAdCacheFailed"

    const-string v10, "fullAd_"

    if-eqz v3, :cond_1

    .line 7
    sget-object v2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget v2, v2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 8
    iget-object v3, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/BaseResultData;->testErrorMsg:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/kwad/components/ad/fullscreen/f$1;->onError(ILjava/lang/String;)V

    .line 11
    invoke-static {v10, v9}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Ga()I

    move-result v3

    .line 13
    invoke-static {v0, v3}, Lcom/kwad/sdk/core/response/model/AdResultData;->obtainVideoPreCacheConfig(Lcom/kwad/sdk/core/response/model/AdResultData;I)Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    move-result-object v11

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 16
    invoke-static {v0, v4}, Lcom/kwad/sdk/core/response/helper/c;->a(Lcom/kwad/sdk/core/response/model/AdResultData;Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdResultData;

    move-result-object v5

    .line 17
    new-instance v12, Lcom/kwad/components/ad/fullscreen/g;

    invoke-direct {v12, v5}, Lcom/kwad/components/ad/fullscreen/g;-><init>(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, p2

    .line 18
    invoke-static {v4, v5, v11}, Lcom/kwad/components/ad/reward/monitor/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    iget-wide v12, v1, Lcom/kwad/components/ad/fullscreen/f$1;->ch:J

    invoke-static {v7, v4, v0, v12, v13}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;IJ)V

    .line 21
    iget-object v0, v1, Lcom/kwad/components/ad/fullscreen/f$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/commercial/convert/e;->b(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 22
    new-instance v0, Lcom/kwad/components/ad/fullscreen/f$1$2;

    invoke-direct {v0, v1, v4, v6}, Lcom/kwad/components/ad/fullscreen/f$1$2;-><init>(Lcom/kwad/components/ad/fullscreen/f$1;Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    :try_start_0
    invoke-static {v2}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 24
    invoke-static {v2}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 25
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-static {v7, v4}, Lcom/kwad/components/ad/reward/monitor/d;->d(ZLcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 29
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KB()Z

    move-result v5

    .line 30
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v0, v7

    :goto_2
    if-ge v0, v12, :cond_6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v0, 0x1

    check-cast v3, Lcom/kwad/sdk/api/KsFullScreenVideoAd;

    .line 31
    move-object v0, v3

    check-cast v0, Lcom/kwad/components/ad/fullscreen/g;

    .line 32
    invoke-virtual {v0}, Lcom/kwad/components/ad/b;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v14

    .line 33
    invoke-static {v14}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 35
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    .line 36
    :cond_4
    new-instance v0, Lcom/kwad/components/ad/fullscreen/f$1$3;

    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/ad/fullscreen/f$1$3;-><init>(Lcom/kwad/components/ad/fullscreen/f$1;Ljava/util/List;Lcom/kwad/sdk/api/KsFullScreenVideoAd;Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/util/List;)V

    invoke-static {v14, v7, v11, v0}, Lcom/kwad/components/ad/d/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;Lcom/kwad/components/ad/d/a;)Z

    :goto_3
    move v0, v13

    goto :goto_2

    .line 37
    :cond_5
    :goto_4
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, v1, Lcom/kwad/components/core/request/e;->ajG:Z

    .line 39
    iget-object v0, v1, Lcom/kwad/components/ad/fullscreen/f$1;->jR:Lcom/kwad/components/ad/fullscreen/e;

    iget-wide v14, v1, Lcom/kwad/components/ad/fullscreen/f$1;->ch:J

    invoke-static {v4, v0, v2, v14, v15}, Lcom/kwad/components/ad/fullscreen/f;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/fullscreen/e;Ljava/util/List;J)V

    goto :goto_3

    .line 40
    :cond_6
    const-string v0, "KsAdFullScreenLoadManager"

    const-string v3, "loadFullScreenVideoAd after cache"

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_7

    .line 41
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 42
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTf:Lcom/kwad/sdk/core/network/e;

    iget v2, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/kwad/components/ad/fullscreen/f$1;->onError(ILjava/lang/String;)V

    .line 43
    invoke-static {v10, v9}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_7
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    iget-wide v3, v1, Lcom/kwad/components/ad/fullscreen/f$1;->ch:J

    invoke-static {v7, v0, v2, v3, v4}, Lcom/kwad/components/ad/reward/monitor/d;->c(ZLcom/kwad/sdk/core/response/model/AdTemplate;IJ)V

    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/fullscreen/f$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v2, p1, p2, v0, v1}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZILjava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 12
    .line 13
    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aSZ:Lcom/kwad/sdk/core/network/e;

    .line 18
    .line 19
    iget v0, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    invoke-static {v2, p1}, Lcom/kwad/components/ad/reward/monitor/c;->c(ZI)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v0, Lcom/kwad/components/ad/fullscreen/f$1$1;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/ad/fullscreen/f$1$1;-><init>(Lcom/kwad/components/ad/fullscreen/f$1;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.class final Lcom/kwad/components/ad/reward/g/b$1;
.super Lcom/kwad/components/core/request/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/g/b;->a(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/components/ad/reward/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic cg:Lcom/kwad/sdk/internal/api/SceneImpl;

.field final synthetic ch:J

.field final synthetic vH:Lcom/kwad/components/ad/reward/g/c;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/components/ad/reward/g/c;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/g/b$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/g/b$1;->vH:Lcom/kwad/components/ad/reward/g/c;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/kwad/components/ad/reward/g/b$1;->ch:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/components/core/request/e;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/g/b$1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/request/e;->ajG:Z

    return p0
.end method

.method public static synthetic a(Lcom/kwad/components/ad/reward/g/b$1;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/request/e;->ajG:Z

    return p1
.end method


# virtual methods
.method public final a(Lcom/kwad/sdk/core/response/model/AdResultData;Z)V
    .locals 17
    .param p1    # Lcom/kwad/sdk/core/response/model/AdResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 3
    const-class v2, Lcom/kwad/components/core/offline/a/d/a;

    iget-object v3, v1, Lcom/kwad/components/ad/reward/g/b$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    iget-wide v3, v3, Lcom/kwad/sdk/internal/api/SceneImpl;->posId:J

    const/4 v7, 0x1

    invoke-static {v7, v3, v4}, Lcom/kwad/components/ad/reward/monitor/d;->c(ZJ)V

    .line 4
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getProceedTemplateList()Ljava/util/List;

    move-result-object v3

    .line 5
    iget-object v4, v1, Lcom/kwad/components/ad/reward/g/b$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-static {v4, v3}, Lcom/kwad/components/ad/reward/g/b;->b(Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v9, "onRewardVideoAdCacheFailed"

    const-string v10, "rewardAd_"

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
    invoke-virtual {v1, v2, v0}, Lcom/kwad/components/ad/reward/g/b$1;->onError(ILjava/lang/String;)V

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

    const/4 v12, 0x0

    .line 15
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 16
    new-instance v3, Lcom/kwad/components/ad/reward/KsRewardVideoAdControl;

    invoke-direct {v3, v0}, Lcom/kwad/components/ad/reward/KsRewardVideoAdControl;-><init>(Lcom/kwad/sdk/core/response/model/AdResultData;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, p2

    .line 17
    invoke-static {v4, v0, v11}, Lcom/kwad/components/ad/reward/monitor/e;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;)V

    .line 18
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    iget-wide v13, v1, Lcom/kwad/components/ad/reward/g/b$1;->ch:J

    invoke-static {v7, v0, v3, v13, v14}, Lcom/kwad/components/ad/reward/monitor/d;->a(ZLcom/kwad/sdk/core/response/model/AdTemplate;IJ)V

    .line 19
    iget-object v0, v1, Lcom/kwad/components/ad/reward/g/b$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/commercial/convert/e;->b(Lcom/kwad/sdk/internal/api/SceneImpl;I)V

    .line 20
    new-instance v0, Lcom/kwad/components/ad/reward/g/b$1$2;

    invoke-direct {v0, v1, v6, v4}, Lcom/kwad/components/ad/reward/g/b$1$2;-><init>(Lcom/kwad/components/ad/reward/g/b$1;Ljava/util/List;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 21
    :try_start_0
    invoke-static {v2}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    invoke-static {v2}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 23
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v7, v4}, Lcom/kwad/components/ad/reward/monitor/d;->d(ZLcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 27
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->KB()Z

    move-result v5

    .line 28
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v0, v12

    move v14, v0

    :goto_1
    if-ge v0, v13, :cond_5

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v15, v0, 0x1

    check-cast v3, Lcom/kwad/sdk/api/KsRewardVideoAd;

    .line 29
    move-object v0, v3

    check-cast v0, Lcom/kwad/components/ad/reward/KsRewardVideoAdControl;

    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/KsRewardVideoAdControl;->getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v16

    .line 31
    iget-boolean v12, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isNativeRewardPreview:Z

    if-nez v12, :cond_4

    .line 32
    invoke-static/range {v16 .. v16}, Lcom/kwad/sdk/core/response/helper/a;->cY(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 33
    invoke-static/range {v16 .. v16}, Lcom/kwad/sdk/core/response/helper/a;->bj(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    move-object v12, v0

    .line 34
    new-instance v0, Lcom/kwad/components/ad/reward/g/b$1$3;

    invoke-direct/range {v0 .. v6}, Lcom/kwad/components/ad/reward/g/b$1$3;-><init>(Lcom/kwad/components/ad/reward/g/b$1;Ljava/util/List;Lcom/kwad/sdk/api/KsRewardVideoAd;Lcom/kwad/sdk/core/response/model/AdTemplate;ZLjava/util/List;)V

    invoke-static {v12, v7, v11, v0}, Lcom/kwad/components/ad/d/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZLcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;Lcom/kwad/components/ad/d/a;)Z

    move v0, v15

    const/4 v12, 0x0

    goto :goto_1

    .line 35
    :cond_4
    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, v1, Lcom/kwad/components/ad/reward/g/b$1;->vH:Lcom/kwad/components/ad/reward/g/c;

    move-object v12, v8

    iget-wide v7, v1, Lcom/kwad/components/ad/reward/g/b$1;->ch:J

    invoke-static {v4, v0, v2, v7, v8}, Lcom/kwad/components/ad/reward/g/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/ad/reward/g/c;Ljava/util/List;J)V

    move-object v8, v12

    move v0, v15

    const/4 v7, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    move-object v12, v8

    .line 37
    const-string v0, "KsAdRewardLoadManager"

    const-string v4, "loadRewardVideoAd after cache"

    invoke-static {v0, v4}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_6

    if-nez v14, :cond_6

    .line 38
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    sget-object v0, Lcom/kwad/sdk/core/network/e;->aTf:Lcom/kwad/sdk/core/network/e;

    iget v2, v0, Lcom/kwad/sdk/core/network/e;->errorCode:I

    iget-object v0, v0, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/kwad/components/ad/reward/g/b$1;->onError(ILjava/lang/String;)V

    .line 40
    invoke-static {v10, v9}, Lcom/kwad/sdk/utils/l;->at(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 41
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    iget-wide v4, v1, Lcom/kwad/components/ad/reward/g/b$1;->ch:J

    const/4 v3, 0x1

    invoke-static {v3, v0, v2, v4, v5}, Lcom/kwad/components/ad/reward/monitor/d;->c(ZLcom/kwad/sdk/core/response/model/AdTemplate;IJ)V

    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/g/b$1;->cg:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x1

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
    new-instance v0, Lcom/kwad/components/ad/reward/g/b$1$1;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, p2}, Lcom/kwad/components/ad/reward/g/b$1$1;-><init>(Lcom/kwad/components/ad/reward/g/b$1;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/kwad/sdk/utils/by;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

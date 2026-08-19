.class public Lcom/kwad/sdk/core/response/model/AdResultData;
.super Lcom/kwad/sdk/core/response/model/BaseResultData;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/b;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdResultData"

.field private static final serialVersionUID:J = -0xb5d74d495b48f24L


# instance fields
.field public adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

.field public hasMore:Z

.field public mAdCacheId:I

.field private mAdSource:Ljava/lang/String;

.field private mAdTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected mOriginalJson:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRequestAdSceneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/kwad/sdk/internal/api/SceneImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mScene:Lcom/kwad/sdk/internal/api/SceneImpl;

.field public pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

.field public pcursor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;-><init>()V

    .line 2
    new-instance v0, Lcom/kwad/sdk/core/response/model/PageInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PageInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdTemplateList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/BaseResultData;Lcom/kwad/sdk/internal/api/SceneImpl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/response/model/BaseResultData;",
            "Lcom/kwad/sdk/internal/api/SceneImpl;",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p2}, Lcom/kwad/sdk/core/response/model/AdResultData;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/kwad/sdk/core/response/model/BaseResultData;->baseToJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/response/model/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;-><init>()V

    .line 5
    new-instance v0, Lcom/kwad/sdk/core/response/model/PageInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PageInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdTemplateList:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mRequestAdSceneMap:Ljava/util/Map;

    .line 9
    invoke-virtual {p1}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/internal/api/SceneImpl;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;-><init>()V

    .line 14
    new-instance v0, Lcom/kwad/sdk/core/response/model/PageInfo;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/PageInfo;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdTemplateList:Ljava/util/List;

    .line 16
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/response/model/AdResultData;->setRequestAdSceneList(Ljava/util/List;)V

    return-void
.end method

.method public static createFromResponseJson(Ljava/lang/String;Lcom/kwad/sdk/internal/api/SceneImpl;)Lcom/kwad/sdk/core/response/model/AdResultData;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/sdk/core/response/model/AdResultData;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lcom/kwad/sdk/core/response/model/AdResultData;-><init>(Lcom/kwad/sdk/internal/api/SceneImpl;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/response/model/AdResultData;->parseJson(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    iput-object p0, v1, Lcom/kwad/sdk/core/response/model/AdResultData;->mOriginalJson:Ljava/lang/String;

    .line 15
    .line 16
    return-object v1
.end method

.method public static obtainVideoPreCacheConfig(Lcom/kwad/sdk/core/response/model/AdResultData;I)Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;->adVideoPreCacheConfig:Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    new-instance p0, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;-><init>(IZ)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method private static styleMatch(Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/core/response/model/AdTemplate;)Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    .line 2
    .line 3
    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->adStyle:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/16 v2, 0x17

    .line 8
    .line 9
    if-ne p0, v2, :cond_2

    .line 10
    .line 11
    const/16 p0, 0xd

    .line 12
    .line 13
    if-eq p1, p0, :cond_1

    .line 14
    .line 15
    if-ne p1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    :goto_0
    return v0

    .line 20
    :cond_2
    if-ne p0, p1, :cond_3

    .line 21
    .line 22
    return v0

    .line 23
    :cond_3
    return v1
.end method


# virtual methods
.method public clone()Lcom/kwad/sdk/core/response/model/AdResultData;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/kwad/sdk/core/response/model/AdResultData;

    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdResultData;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/response/model/AdResultData;->parseJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->clone()Lcom/kwad/sdk/core/response/model/AdResultData;

    move-result-object v0

    return-object v0
.end method

.method public getAdScene(J)Lcom/kwad/sdk/internal/api/SceneImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mRequestAdSceneMap:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 20
    .line 21
    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/internal/api/SceneImpl;-><init>(J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object v0
.end method

.method public getAdSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdSource:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "network"

    .line 7
    .line 8
    return-object v0
.end method

.method public getAdTemplateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdTemplateList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultAdScene()Lcom/kwad/sdk/internal/api/SceneImpl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getPosId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdScene(J)Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getFirstAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public getPosId()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getProceedTemplateList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 20
    .line 21
    iget-wide v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->posId:J

    .line 22
    .line 23
    return-wide v0
.end method

.method public getProceedTemplateList()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 25
    .line 26
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getResponseJson()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mOriginalJson:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;->toJson()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "pcursor"

    .line 11
    .line 12
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pcursor:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "pageInfo"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/kwad/sdk/utils/ac;->Y(Ljava/util/List;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-class v2, Lcom/kwad/sdk/core/a/e;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/kwad/sdk/core/a/e;

    .line 43
    .line 44
    const-string v3, "impAdInfo"

    .line 45
    .line 46
    invoke-interface {v2, v1}, Lcom/kwad/sdk/core/a/e;->ax(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v3, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public isAdResultDataEmpty()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "AdResultData"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v0, "adTemplateList is empty"

    .line 15
    .line 16
    invoke-static {v3, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v4, "adTemplateList size = "

    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v3, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    const-string v0, "adInfoList is empty"

    .line 57
    .line 58
    invoke-static {v3, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    const-string v0, "adInfo is null"

    .line 71
    .line 72
    invoke-static {v3, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_2
    return v1
.end method

.method public isBidding()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getProceedTemplateList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->fc(Lcom/kwad/sdk/core/response/model/AdTemplate;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1
    return v2
.end method

.method public isDataEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/response/model/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    .line 8
    :cond_0
    :try_start_0
    const-string v0, "pcursor"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pcursor:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "hasMore"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->hasMore:Z

    .line 23
    .line 24
    const-string v0, "adGlobalConfigInfo"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v1, Lcom/kwad/sdk/core/a/e;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/kwad/sdk/components/d;->f(Ljava/lang/Class;)Lcom/kwad/sdk/components/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/kwad/sdk/core/a/e;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/kwad/sdk/utils/br;->isNullString(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/a/e;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 49
    .line 50
    invoke-direct {v2}, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 54
    .line 55
    new-instance v3, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 68
    .line 69
    iget-boolean v2, v2, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;->uaidEnable:Z

    .line 70
    .line 71
    invoke-static {v0, v2}, Lcom/kwad/sdk/utils/ai;->e(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 75
    .line 76
    iget-wide v2, v0, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;->authError:J

    .line 77
    .line 78
    const-wide/32 v4, 0x2bf23

    .line 79
    .line 80
    .line 81
    cmp-long v2, v2, v4

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0, v3}, Lcom/kwad/sdk/utils/ai;->g(Landroid/content/Context;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;->refreshToken:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo$RefreshToken;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo$RefreshToken;->isDataValid()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;->refreshToken:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo$RefreshToken;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-static {v2, v0, v3}, Lcom/kwad/sdk/utils/ai;->c(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :catchall_1
    move-exception p1

    .line 131
    goto/16 :goto_5

    .line 132
    .line 133
    :cond_2
    :goto_1
    :try_start_3
    const-string v0, "pageInfo"

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/kwad/sdk/utils/br;->isNullString(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_3

    .line 144
    .line 145
    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/a/e;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 150
    .line 151
    new-instance v3, Lorg/json/JSONObject;

    .line 152
    .line 153
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_4
    const-string v2, "json bug"

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v2, v3}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    :goto_2
    const-string v0, "impAdInfo"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_5

    .line 184
    .line 185
    invoke-interface {v1, p1}, Lcom/kwad/sdk/core/a/e;->getResponseData(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/kwad/sdk/utils/br;->isNullString(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    if-nez v1, :cond_5

    .line 194
    .line 195
    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    .line 196
    .line 197
    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :catchall_2
    :try_start_6
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 202
    .line 203
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->llsid:J

    .line 204
    .line 205
    invoke-static {v1, v2, v3, p1, v0}, Lcom/kwad/sdk/commercial/d/a;->a(Lcom/kwad/sdk/internal/api/SceneImpl;JLjava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const/4 v1, 0x0

    .line 209
    :goto_3
    if-eqz v1, :cond_5

    .line 210
    .line 211
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-lez v0, :cond_5

    .line 216
    .line 217
    const/4 v0, 0x0

    .line 218
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-ge v0, v2, :cond_5

    .line 223
    .line 224
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-eqz v2, :cond_4

    .line 229
    .line 230
    new-instance v3, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 231
    .line 232
    invoke-direct {v3}, Lcom/kwad/sdk/core/response/model/AdTemplate;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v2}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 236
    .line 237
    .line 238
    iget-wide v4, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->llsid:J

    .line 239
    .line 240
    iput-wide v4, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->llsid:J

    .line 241
    .line 242
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->extra:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v2, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->extra:Ljava/lang/String;

    .line 245
    .line 246
    iget-wide v4, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->posId:J

    .line 247
    .line 248
    invoke-virtual {p0, v4, v5}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdScene(J)Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    iput-object v2, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 253
    .line 254
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 255
    .line 256
    iput-object v2, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 257
    .line 258
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdTemplateList:Ljava/util/List;

    .line 259
    .line 260
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    invoke-static {v3}, Lcom/kwad/sdk/commercial/d/a;->ci(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 264
    .line 265
    .line 266
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 267
    .line 268
    if-eqz v2, :cond_4

    .line 269
    .line 270
    invoke-static {v2, v3}, Lcom/kwad/sdk/core/response/model/AdResultData;->styleMatch(Lcom/kwad/sdk/internal/api/SceneImpl;Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_4

    .line 275
    .line 276
    iget v2, v3, Lcom/kwad/sdk/core/response/model/AdTemplate;->adStyle:I

    .line 277
    .line 278
    iget-object v4, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 279
    .line 280
    iget v4, v4, Lcom/kwad/sdk/internal/api/SceneImpl;->adStyle:I

    .line 281
    .line 282
    const-string v5, "ad_style"

    .line 283
    .line 284
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v4, v3, v5, v2}, Lcom/kwad/sdk/commercial/d/a;->a(ILcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 289
    .line 290
    .line 291
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :catchall_3
    :try_start_7
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 295
    .line 296
    iget-wide v1, p0, Lcom/kwad/sdk/core/response/model/BaseResultData;->llsid:J

    .line 297
    .line 298
    invoke-static {v0, v1, v2, p1}, Lcom/kwad/sdk/commercial/d/a;->a(Lcom/kwad/sdk/internal/api/SceneImpl;JLjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 299
    .line 300
    .line 301
    goto :goto_6

    .line 302
    :goto_5
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    :cond_5
    :goto_6
    return-void
.end method

.method public setAdSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdSource:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdTemplateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdTemplateList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestAdSceneList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/internal/api/SceneImpl;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mRequestAdSceneMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mRequestAdSceneMap:Ljava/util/Map;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/kwad/sdk/internal/api/SceneImpl;->getPosId()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/core/response/model/BaseResultData;->toJson()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pcursor"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pcursor:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "hasMore"

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->hasMore:Z

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string v1, "pageInfo"

    .line 20
    .line 21
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->pageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "impAdInfo"

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/kwad/sdk/core/response/model/AdResultData;->getAdTemplateList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "adGlobalConfigInfo"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->adGlobalConfigInfo:Lcom/kwad/sdk/core/response/model/AdGlobalConfigInfo;

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdResultData;->mAdCacheId:I

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const-string v2, "adCacheId"

    .line 47
    .line 48
    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-object v0
.end method

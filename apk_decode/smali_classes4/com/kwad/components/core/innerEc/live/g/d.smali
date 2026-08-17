.class public abstract Lcom/kwad/components/core/innerEc/live/g/d;
.super Lcom/kwad/components/core/innerEc/live/g/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/components/core/innerEc/live/g/a<",
        "Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;",
        ">;"
    }
.end annotation


# instance fields
.field protected final Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/a/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/g/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/g/d;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;)V
    .locals 6
    .param p1    # Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "SCLiveShopStateMessage"

    const-string v1, "SC_LIVE_SHOP_STATE onMessageReceived"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;->getLiveStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/g/d;->aO(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;->getPendantInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    new-instance v1, Lcom/kwad/components/core/innerEc/live/f/a;

    invoke-direct {v1}, Lcom/kwad/components/core/innerEc/live/f/a;-><init>()V

    .line 5
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;->getLiveStreamId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kwad/components/core/innerEc/live/f/a;->liveStreamId:Ljava/lang/String;

    .line 6
    invoke-interface {p1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;->getSellerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/kwad/components/core/innerEc/live/f/a;->Xt:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;

    if-eqz v2, :cond_2

    .line 9
    new-instance v3, Lcom/kwad/components/core/innerEc/live/f/b;

    invoke-direct {v3}, Lcom/kwad/components/core/innerEc/live/f/b;-><init>()V

    .line 10
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->Xv:Ljava/lang/String;

    .line 11
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getPendantResourceId()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->Xw:J

    .line 12
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getPendantCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->Xx:Ljava/lang/String;

    .line 13
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getAction()I

    move-result v4

    iput v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->action:I

    .line 14
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getEventData()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->Xy:Ljava/lang/String;

    .line 15
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getThroughInfo()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->Xz:Ljava/util/Map;

    .line 16
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->isNeedServerProcess()Z

    move-result v4

    iput-boolean v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->XA:Z

    .line 17
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->isNeedBusinessHandle()Z

    move-result v4

    iput-boolean v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->XB:Z

    .line 18
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getCallbackApi()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->XC:Ljava/lang/String;

    .line 19
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->isNeedRandomCall()Z

    move-result v4

    iput-boolean v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->XD:Z

    .line 20
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getRandomRangeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->XE:J

    .line 21
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->isNeedSignalFallback()Z

    move-result v4

    iput-boolean v4, v3, Lcom/kwad/components/core/innerEc/live/f/b;->XF:Z

    .line 22
    invoke-interface {v2}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbKwaishopResourceLivePendantInfo;->getCallbackPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/kwad/components/core/innerEc/live/f/b;->XG:Ljava/lang/String;

    .line 23
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_3
    iput-object p1, v1, Lcom/kwad/components/core/innerEc/live/f/a;->Xu:Ljava/util/List;

    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    return-void

    .line 26
    :cond_4
    invoke-virtual {p0, v1}, Lcom/kwad/components/core/innerEc/live/g/d;->a(Lcom/kwad/components/core/innerEc/live/f/a;)V

    return-void
.end method

.method private aO(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/g/d;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/i/e;->aM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/kwad/sdk/utils/br;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private static h([B)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->ri()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;

    .line 6
    .line 7
    invoke-interface {v0, p0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;->parseFrom([BLjava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/kwad/components/core/innerEc/live/f/a;)V
.end method

.method public final synthetic e([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/g/d;->h([B)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final synthetic g(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/g/d;->a(Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCKwaishopResourceLivePendantSignalData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getPayloadType()I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->ri()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;->getPbPayloadType()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbPayloadType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbPayloadType;->getScKwaishopResourceLivePendantSignalData()I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return v0

    .line 14
    :catch_0
    const/16 v0, 0x3c0

    .line 15
    .line 16
    return v0
.end method

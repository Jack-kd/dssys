.class public abstract Lcom/kwad/components/core/innerEc/live/g/c;
.super Lcom/kwad/components/core/innerEc/live/g/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/components/core/innerEc/live/g/a<",
        "Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/g/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static g([B)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/components/core/innerEc/f;->ri()Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;

    .line 6
    .line 7
    invoke-interface {v0, p0, v1}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PBHelper;->parseFrom([BLjava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public final synthetic e([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/g/c;->g([B)Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbSCFeedPush;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getPayloadType()I
    .locals 1

    .line 1
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
    invoke-interface {v0}, Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/model/PbPayloadType;->getScFeedPush()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.class public Lcom/kwad/components/core/innerEc/live/base/b;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public Tt:I

.field public Tu:J

.field public authorId:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public kwaiUserId:Ljava/lang/String;

.field public liveStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/response/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static rv()Lcom/kwad/components/core/innerEc/live/base/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/components/core/innerEc/live/base/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/core/innerEc/live/base/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final I(J)Lcom/kwad/components/core/innerEc/live/base/b;
    .locals 0

    .line 1
    const-wide/16 p1, 0x1

    .line 2
    .line 3
    iput-wide p1, p0, Lcom/kwad/components/core/innerEc/live/base/b;->Tu:J

    .line 4
    .line 5
    return-object p0
.end method

.method public final aC(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/base/b;->authorId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final aD(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/base/b;->liveStreamId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final aE(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/base/b;->kwaiUserId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final aF(Ljava/lang/String;)Lcom/kwad/components/core/innerEc/live/base/b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/base/b;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final aV(I)Lcom/kwad/components/core/innerEc/live/base/b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/base/b;->Tt:I

    .line 2
    .line 3
    return-object p0
.end method

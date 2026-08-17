.class public Lcom/kwad/sdk/monitor/MediaMessageInfo;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;
    }
.end annotation


# instance fields
.field public Nq:Ljava/lang/String;

.field public bjd:Ljava/lang/String;

.field public bje:Ljava/lang/String;

.field public bjf:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/commercial/c/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Sw()Lcom/kwad/sdk/monitor/MediaMessageInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/monitor/MediaMessageInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/monitor/MediaMessageInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final fi(I)Lcom/kwad/sdk/monitor/MediaMessageInfo;
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo;->bjf:I

    .line 3
    .line 4
    return-object p0
.end method

.method public final hh(Ljava/lang/String;)Lcom/kwad/sdk/monitor/MediaMessageInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo;->Nq:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hi(Ljava/lang/String;)Lcom/kwad/sdk/monitor/MediaMessageInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo;->bjd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hj(Ljava/lang/String;)Lcom/kwad/sdk/monitor/MediaMessageInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/monitor/MediaMessageInfo;->bje:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

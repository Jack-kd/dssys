.class public Lcom/kwad/components/core/webview/a/c;
.super Lcom/kwad/sdk/core/response/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/b;


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# instance fields
.field public PC:Ljava/lang/String;

.field public apm:Ljava/lang/String;

.field public apn:Ljava/lang/String;

.field public apo:I


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


# virtual methods
.method public final bB(Ljava/lang/String;)Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;->mediaSmallAppId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/kwad/components/core/webview/a/c;->apm:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;->originId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/kwad/components/core/webview/a/c;->apn:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$SmallAppJumpInfo;->smallAppJumpUrl:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

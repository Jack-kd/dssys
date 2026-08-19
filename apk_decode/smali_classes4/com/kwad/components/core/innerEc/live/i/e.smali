.class public final Lcom/kwad/components/core/innerEc/live/i/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aM(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public static aN(Lcom/kwad/sdk/core/response/model/AdTemplate;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->authorId:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static e(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public static g(Lcom/kwad/sdk/core/response/model/AdTemplate;I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->liveStreamId:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "_"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->pageDataKey:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/kwad/sdk/core/response/model/LiveInfo;->livePageType:I

    .line 29
    .line 30
    return-object p1
.end method

.method public static getKwaiUserId()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/kwad/components/core/innerEc/e;->rf()Lcom/kwad/components/core/innerEc/e;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/kwad/components/core/innerEc/e;->getUserId()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

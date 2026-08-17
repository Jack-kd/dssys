.class public final Lcom/kwad/components/core/innerEc/live/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kwad/components/core/innerEc/live/b/a/b;Lcom/kwad/components/core/innerEc/live/config/net/g;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UM:Lcom/kwad/components/core/innerEc/live/config/net/g;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ur:Lcom/kwad/components/core/innerEc/live/config/net/b;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/config/net/b;->Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/config/net/d;->liveStreamId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p2, v0}, Lcom/kwad/components/core/innerEc/live/i/e;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UH:Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/config/net/g;->Uu:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {p0, p1}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ILiveLongConnection;->updateStartPlayData(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

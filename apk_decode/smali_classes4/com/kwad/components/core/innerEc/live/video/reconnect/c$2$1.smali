.class final Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/b;Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic XX:Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;

.field final synthetic XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$1;->XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$1;->XX:Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$1;->XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->XV:Lcom/kwad/components/core/innerEc/live/video/reconnect/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$1;->XX:Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/kwad/components/core/innerEc/live/video/reconnect/LiveGetPlayUrlResult;->mPlayUrlConfig:Lcom/kwad/components/core/innerEc/live/video/reconnect/a;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->XW:Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;

    .line 10
    .line 11
    invoke-static {v1, v2, v0}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Lcom/kwad/components/core/innerEc/live/video/reconnect/a;Lcom/kwad/components/offline/api/core/adInnerEc/fullAdLive/ILiveFetchCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

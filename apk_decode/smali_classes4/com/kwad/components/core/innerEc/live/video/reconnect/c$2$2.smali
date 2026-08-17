.class final Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$2;
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
.field final synthetic XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$2;->XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$2;->XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->XV:Lcom/kwad/components/core/innerEc/live/video/reconnect/c;

    .line 4
    .line 5
    new-instance v1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 6
    .line 7
    sget-object v2, Lcom/kwad/sdk/core/network/e;->aTe:Lcom/kwad/sdk/core/network/e;

    .line 8
    .line 9
    iget v3, v2, Lcom/kwad/sdk/core/network/e;->errorCode:I

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v2, v2, Lcom/kwad/sdk/core/network/e;->msg:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v1, v3, v4, v2}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;-><init>(IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

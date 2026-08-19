.class final Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/b;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

.field final synthetic wc:Ljava/lang/String;

.field final synthetic wd:I


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;->XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;->wd:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;->wc:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;->XY:Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2;->XV:Lcom/kwad/components/core/innerEc/live/video/reconnect/c;

    .line 4
    .line 5
    new-instance v1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 6
    .line 7
    iget v2, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;->wd:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/video/reconnect/c$2$3;->wc:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;-><init>(IILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/video/reconnect/c;->a(Lcom/kwad/components/core/innerEc/live/video/reconnect/c;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

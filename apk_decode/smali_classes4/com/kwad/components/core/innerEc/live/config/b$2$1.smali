.class final Lcom/kwad/components/core/innerEc/live/config/b$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/config/b$2;->a(Lcom/kwad/components/core/innerEc/live/config/net/h;Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Ud:Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;

.field final synthetic Ue:Lcom/kwad/components/core/innerEc/live/config/b$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/config/b$2;Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$1;->Ue:Lcom/kwad/components/core/innerEc/live/config/b$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$1;->Ud:Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;

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
    .locals 2

    .line 1
    const-string v0, "LivePlayConfigService"

    .line 2
    .line 3
    const-string v1, "fetchDataSource success"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$1;->Ue:Lcom/kwad/components/core/innerEc/live/config/b$2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/config/b$2;->Uc:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$1;->Ud:Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/kwad/components/core/innerEc/live/config/net/LiveStartPlayResult;->mStartPlayConfig:Lcom/kwad/components/core/innerEc/live/config/net/g;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/config/b;Lcom/kwad/components/core/innerEc/live/config/net/g;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

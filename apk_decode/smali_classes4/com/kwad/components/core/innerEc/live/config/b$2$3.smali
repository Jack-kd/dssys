.class final Lcom/kwad/components/core/innerEc/live/config/b$2$3;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/config/b$2;->a(Lcom/kwad/components/core/innerEc/live/config/net/h;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Ue:Lcom/kwad/components/core/innerEc/live/config/b$2;

.field final synthetic wc:Ljava/lang/String;

.field final synthetic wd:I


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/config/b$2;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$3;->Ue:Lcom/kwad/components/core/innerEc/live/config/b$2;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$3;->wd:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$3;->wc:Ljava/lang/String;

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
    const-string v0, "LivePlayConfigService"

    .line 2
    .line 3
    const-string v1, "fetchDataSource error"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$3;->Ue:Lcom/kwad/components/core/innerEc/live/config/b$2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/config/b$2;->Uc:Lcom/kwad/components/core/innerEc/live/config/b;

    .line 11
    .line 12
    new-instance v1, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;

    .line 13
    .line 14
    iget v2, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$3;->wd:I

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    iget-object v4, p0, Lcom/kwad/components/core/innerEc/live/config/b$2$3;->wc:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, v4}, Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;-><init>(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/config/b;->a(Lcom/kwad/components/core/innerEc/live/config/b;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

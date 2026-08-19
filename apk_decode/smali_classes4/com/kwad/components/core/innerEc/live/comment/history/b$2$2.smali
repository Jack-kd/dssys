.class final Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/comment/history/b$2;->a(Lcom/kwad/components/core/innerEc/live/comment/history/a;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic TT:Lcom/kwad/components/core/innerEc/live/comment/history/b$2;

.field final synthetic wc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/comment/history/b$2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;->TT:Lcom/kwad/components/core/innerEc/live/comment/history/b$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;->wc:Ljava/lang/String;

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
    const-string v0, "fetchHistoryComments error"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;->wc:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "HistoryCommentsService"

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/core/d/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;->TT:Lcom/kwad/components/core/innerEc/live/comment/history/b$2;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2;->TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/Throwable;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$2;->wc:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/comment/history/b;->a(Lcom/kwad/components/core/innerEc/live/comment/history/b;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

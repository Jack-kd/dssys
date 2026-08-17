.class final Lcom/kwad/components/core/innerEc/live/comment/history/b$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/comment/history/b$2;->a(Lcom/kwad/components/core/innerEc/live/comment/history/a;Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic TS:Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;

.field final synthetic TT:Lcom/kwad/components/core/innerEc/live/comment/history/b$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/comment/history/b$2;Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$1;->TT:Lcom/kwad/components/core/innerEc/live/comment/history/b$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$1;->TS:Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;

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
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$1;->TT:Lcom/kwad/components/core/innerEc/live/comment/history/b$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2;->TR:Lcom/kwad/components/core/innerEc/live/comment/history/b;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/comment/history/b$2$1;->TS:Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/comment/history/b;->a(Lcom/kwad/components/core/innerEc/live/comment/history/b;Lcom/kwad/components/core/innerEc/live/comment/history/HistoryCommentsResponse;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

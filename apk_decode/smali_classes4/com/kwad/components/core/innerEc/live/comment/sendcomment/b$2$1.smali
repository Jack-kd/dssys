.class final Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->a(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/a;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic TX:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;

.field final synthetic TY:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$1;->TY:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$1;->TX:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;

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
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$1;->TY:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->TW:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2$1;->TX:Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$2;->TU:Lcom/kwad/components/core/innerEc/live/base/b;

    .line 8
    .line 9
    invoke-interface {v1, v2, v0}, Lcom/kwad/components/core/innerEc/live/comment/sendcomment/b$a;->a(Lcom/kwad/components/core/innerEc/live/comment/sendcomment/LiveSendCommentResponse;Lcom/kwad/components/core/innerEc/live/base/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

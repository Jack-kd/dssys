.class final Lcom/kwad/components/core/webview/jshandler/bj$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/jshandler/bj;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic arV:Lcom/kwad/components/core/webview/jshandler/bj;

.field final synthetic dj:I


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/jshandler/bj;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/jshandler/bj$1;->arV:Lcom/kwad/components/core/webview/jshandler/bj;

    .line 2
    .line 3
    iput p2, p0, Lcom/kwad/components/core/webview/jshandler/bj$1;->dj:I

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
    iget-object v0, p0, Lcom/kwad/components/core/webview/jshandler/bj$1;->arV:Lcom/kwad/components/core/webview/jshandler/bj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/webview/jshandler/bj;->a(Lcom/kwad/components/core/webview/jshandler/bj;)Lcom/kwad/components/core/webview/jshandler/bj$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/webview/jshandler/bj$1;->arV:Lcom/kwad/components/core/webview/jshandler/bj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/core/webview/jshandler/bj;->a(Lcom/kwad/components/core/webview/jshandler/bj;)Lcom/kwad/components/core/webview/jshandler/bj$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/kwad/components/core/webview/jshandler/bj$1;->dj:I

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/kwad/components/core/webview/jshandler/bj$b;->ao(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

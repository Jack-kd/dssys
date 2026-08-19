.class public final Lcom/kwad/components/core/e/a/a;
.super Lcom/kwad/sdk/mvp/a;
.source "SourceFile"


# instance fields
.field public PY:Lcom/kwad/components/core/e/a/g;

.field public PZ:Lcom/kwad/components/core/widget/a/c;

.field public Qa:Lcom/kwad/components/core/e/a/d;

.field public fk:Lcom/kwad/components/core/webview/jshandler/az;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/mvp/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final aa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/a/a;->fk:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yx()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/e/a/a;->fk:Lcom/kwad/components/core/webview/jshandler/az;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yy()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final ac()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/e/a/a;->fk:Lcom/kwad/components/core/webview/jshandler/az;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yz()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/e/a/a;->fk:Lcom/kwad/components/core/webview/jshandler/az;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/kwad/components/core/webview/jshandler/az;->yA()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method

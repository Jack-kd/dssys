.class final Lcom/kwad/components/core/innerEc/live/a/k$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/a/k;->a(Ljava/lang/String;Lcom/kwad/sdk/core/webview/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic TH:Lcom/kwad/components/core/webview/tachikoma/c/o;

.field final synthetic TI:Lcom/kwad/sdk/core/webview/c/c;

.field final synthetic TJ:Lcom/kwad/components/core/innerEc/live/a/k;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/a/k;Lcom/kwad/components/core/webview/tachikoma/c/o;Lcom/kwad/sdk/core/webview/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/a/k$1;->TJ:Lcom/kwad/components/core/innerEc/live/a/k;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/a/k$1;->TH:Lcom/kwad/components/core/webview/tachikoma/c/o;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/a/k$1;->TI:Lcom/kwad/sdk/core/webview/c/c;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/a/k$1;->TJ:Lcom/kwad/components/core/innerEc/live/a/k;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/a/k;->a(Lcom/kwad/components/core/innerEc/live/a/k;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/a/k$1;->TH:Lcom/kwad/components/core/webview/tachikoma/c/o;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/kwad/components/core/webview/tachikoma/c/o;->url:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/kwad/components/core/offline/b/a/a;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/a/k$1;->TI:Lcom/kwad/sdk/core/webview/c/c;

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-interface {v1, v0}, Lcom/kwad/sdk/core/webview/c/c;->b(Lcom/kwad/sdk/core/b;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const/4 v0, -0x1

    .line 42
    const-string v2, "jump failed"

    .line 43
    .line 44
    invoke-interface {v1, v0, v2}, Lcom/kwad/sdk/core/webview/c/c;->onError(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.class final Lcom/kwad/components/core/webview/tachikoma/b/w$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/webview/tachikoma/b/w;->a(Lcom/kwad/sdk/core/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic atZ:Lcom/kwad/sdk/core/b;

.field final synthetic aua:Lcom/kwad/components/core/webview/tachikoma/b/w;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/webview/tachikoma/b/w;Lcom/kwad/sdk/core/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/webview/tachikoma/b/w$1;->aua:Lcom/kwad/components/core/webview/tachikoma/b/w;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/webview/tachikoma/b/w$1;->atZ:Lcom/kwad/sdk/core/b;

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
    iget-object v0, p0, Lcom/kwad/components/core/webview/tachikoma/b/w$1;->aua:Lcom/kwad/components/core/webview/tachikoma/b/w;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/webview/tachikoma/b/w;->atX:Lcom/kwad/sdk/core/webview/c/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kwad/components/core/webview/tachikoma/b/w$1;->atZ:Lcom/kwad/sdk/core/b;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/kwad/sdk/core/webview/c/c;->b(Lcom/kwad/sdk/core/b;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.class final Lcom/kwad/components/core/page/d/a/g$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/webview/jshandler/bg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/d/a/g$5;->a(Lcom/kwad/components/core/webview/a;Lcom/kwad/sdk/core/webview/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aeO:Lcom/kwad/components/core/page/d/a/g$5;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/d/a/g$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/g$5$1;->aeO:Lcom/kwad/components/core/page/d/a/g$5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/webview/jshandler/bg$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/g$5$1;->aeO:Lcom/kwad/components/core/page/d/a/g$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/g$5;->aeJ:Lcom/kwad/components/core/page/d/a/g;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/a;->adZ:Lcom/kwad/components/core/page/d/a/b;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kwad/components/core/page/d/a/b;->aed:Lcom/kwad/components/core/page/d/a/f$a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p1, p1, Lcom/kwad/components/core/webview/jshandler/bg$a;->visibility:I

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/kwad/components/core/page/d/a/f$a;->bx(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

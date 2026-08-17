.class final Lcom/kwad/components/core/innerEc/live/b/c/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/base/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic We:Lcom/kwad/components/core/innerEc/live/b/c/e;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$1;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$1;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->a(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$1;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/e;->a(Lcom/kwad/components/core/innerEc/live/b/c/e;)Lcom/kwad/components/core/innerEc/live/a/m;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/e$1;->We:Lcom/kwad/components/core/innerEc/live/b/c/e;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/e;->b(Lcom/kwad/components/core/innerEc/live/b/c/e;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, p1, p2}, Lcom/kwad/components/core/innerEc/live/a/m;->a(Landroid/content/Context;FF)Lcom/kwad/components/core/innerEc/live/a/m$a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/a/m;->a(Lcom/kwad/sdk/core/b;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

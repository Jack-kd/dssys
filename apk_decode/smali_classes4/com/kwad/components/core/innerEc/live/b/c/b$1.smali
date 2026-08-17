.class final Lcom/kwad/components/core/innerEc/live/b/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/b;->rL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic UZ:Lcom/kwad/components/core/innerEc/live/b/c/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/b$1;->UZ:Lcom/kwad/components/core/innerEc/live/b/c/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/offline/api/core/adInnerEc/longconnection/ServerException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b$1;->UZ:Lcom/kwad/components/core/innerEc/live/b/c/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/b;->a(Lcom/kwad/components/core/innerEc/live/b/c/b;)Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UJ:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/c/a;->h(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final rP()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/b$1;->UZ:Lcom/kwad/components/core/innerEc/live/b/c/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/b;->b(Lcom/kwad/components/core/innerEc/live/b/c/b;)Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/b/a/b;->UC:Lcom/kwad/sdk/api/core/fragment/KsFragment;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->isAdded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

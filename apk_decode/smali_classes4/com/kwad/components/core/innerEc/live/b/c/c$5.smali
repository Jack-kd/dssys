.class final Lcom/kwad/components/core/innerEc/live/b/c/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/config/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic VA:Lcom/kwad/components/core/innerEc/live/b/c/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$5;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 0
    .param p1    # Lcom/kwad/components/core/innerEc/live/config/net/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/config/net/g;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/config/net/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$5;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/config/net/g;->Ur:Lcom/kwad/components/core/innerEc/live/config/net/b;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/config/net/b;->Uh:Lcom/kwad/components/core/innerEc/live/config/net/d;

    .line 6
    .line 7
    iget-boolean p1, p1, Lcom/kwad/components/core/innerEc/live/config/net/d;->Uo:Z

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;Z)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

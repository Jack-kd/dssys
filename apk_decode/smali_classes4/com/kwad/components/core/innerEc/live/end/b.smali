.class public final Lcom/kwad/components/core/innerEc/live/end/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/end/a;


# instance fields
.field private final WZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/end/c;",
            ">;"
        }
    .end annotation
.end field

.field private Xa:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/end/b;->WZ:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/end/LiveAudienceEndReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/end/b;->Xa:Z

    .line 3
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/end/b;->WZ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/components/core/innerEc/live/end/c;

    .line 4
    invoke-interface {v0}, Lcom/kwad/components/core/innerEc/live/end/c;->sg()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/kwad/components/core/innerEc/live/end/c;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/end/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/end/b;->WZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/end/c;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/end/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/end/b;->WZ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final sD()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/end/b;->Xa:Z

    .line 2
    .line 3
    return v0
.end method

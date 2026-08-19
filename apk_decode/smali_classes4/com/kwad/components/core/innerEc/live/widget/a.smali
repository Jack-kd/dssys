.class public final Lcom/kwad/components/core/innerEc/live/widget/a;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Observable;"
    }
.end annotation


# instance fields
.field private XZ:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Ya:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private Yb:Z

.field private Yc:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

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
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Ya:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Yb:Z

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Yc:Ljava/lang/Throwable;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->XZ:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method public static h(Ljava/lang/Object;)Lcom/kwad/components/core/innerEc/live/widget/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/kwad/components/core/innerEc/live/widget/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/kwad/components/core/innerEc/live/widget/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/a;-><init>(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public final addObserver(Ljava/util/Observer;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Yb:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Yc:Ljava/lang/Throwable;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Ya:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->XZ:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {p1, p0, v0}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Yb:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->Yc:Ljava/lang/Throwable;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/a;->XZ:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

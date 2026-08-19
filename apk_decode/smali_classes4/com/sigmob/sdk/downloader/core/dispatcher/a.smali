.class public Lcom/sigmob/sdk/downloader/core/dispatcher/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CallbackDispatcher"


# instance fields
.field private final b:Lcom/sigmob/sdk/downloader/c;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;

    invoke-direct {v1, v0}, Lcom/sigmob/sdk/downloader/core/dispatcher/a$a;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->b:Lcom/sigmob/sdk/downloader/c;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sigmob/sdk/downloader/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->b:Lcom/sigmob/sdk/downloader/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/downloader/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->b:Lcom/sigmob/sdk/downloader/c;

    return-object v0
.end method

.method public a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTasksWithCanceled canceled["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackDispatcher"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->s()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/sigmob/sdk/downloader/core/cause/a;->c:Lcom/sigmob/sdk/downloader/core/cause/a;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/downloader/core/dispatcher/a$3;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/downloader/core/dispatcher/a$3;-><init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/util/Collection;Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTasksWithError error["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] realCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackDispatcher"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->s()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/sigmob/sdk/downloader/core/cause/a;->b:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v2, v1, v3, p2}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/downloader/core/dispatcher/a$1;-><init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a;Ljava/util/Collection;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/sigmob/sdk/downloader/f;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTasks completed["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] sameTask["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] fileBusy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallbackDispatcher"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/downloader/core/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->s()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/sigmob/sdk/downloader/core/cause/a;->a:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v3, v2, v4, v1}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->s()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Lcom/sigmob/sdk/downloader/core/cause/a;->e:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v3, v2, v4, v1}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/downloader/f;

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->s()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/sigmob/sdk/downloader/f;->F()Lcom/sigmob/sdk/downloader/c;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v4, Lcom/sigmob/sdk/downloader/core/cause/a;->d:Lcom/sigmob/sdk/downloader/core/cause/a;

    invoke-interface {v3, v2, v4, v1}, Lcom/sigmob/sdk/downloader/c;->a(Lcom/sigmob/sdk/downloader/f;Lcom/sigmob/sdk/downloader/core/cause/a;Ljava/lang/Exception;)V

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_9
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_a

    :goto_3
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sigmob/sdk/downloader/core/dispatcher/a;->c:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/sdk/downloader/core/dispatcher/a$2;-><init>(Lcom/sigmob/sdk/downloader/core/dispatcher/a;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/downloader/f;)Z
    .locals 6

    .line 5
    invoke-virtual {p1}, Lcom/sigmob/sdk/downloader/f;->t()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    invoke-static {p1}, Lcom/sigmob/sdk/downloader/f$c;->a(Lcom/sigmob/sdk/downloader/f;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long p1, v2, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

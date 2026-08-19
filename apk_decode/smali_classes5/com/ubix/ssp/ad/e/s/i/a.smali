.class public Lcom/ubix/ssp/ad/e/s/i/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/s/i/b;)I
    .locals 6

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------executeTask status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->c()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->c()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/ubix/ssp/ad/e/s/g/b;->a(J)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->c()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    move v0, v2

    :cond_0
    const/16 v1, 0x2d

    const-string v3, "service_intent_notify_id"

    const-string v4, "service_intent_unique_id"

    const/16 v5, 0x2a

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v5, :cond_4

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------executeTask getNotifyId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result p1

    return p1

    :cond_4
    :goto_0
    invoke-virtual {p1, v5}, Lcom/ubix/ssp/ad/e/s/i/b;->a(I)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ACTION_WAIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result p1

    return p1
.end method

.method public synthetic close()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/core/content/res/b;->a(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

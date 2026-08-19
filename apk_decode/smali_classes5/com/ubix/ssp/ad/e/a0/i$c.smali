.class Lcom/ubix/ssp/ad/e/a0/i$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/a0/i;->a(Ljava/lang/String;I)Lcom/ubix/ssp/ad/e/a0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/a0/i;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/a0/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i$c;->a:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i$c;->a:Lcom/ubix/ssp/ad/e/a0/i;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/a0/i;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/i$c;->a:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/i;->d(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/i$c;->a:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/i;->c(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i$c;->a:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/i;->d(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i$c;->a:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/i;->d(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/i$c;->a:Lcom/ubix/ssp/ad/e/a0/i;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/i;->d(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :goto_3
    throw v0
.end method

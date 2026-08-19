.class public Lcom/ubix/ssp/ad/e/a0/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Process;

.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/io/BufferedReader;

.field private d:Ljava/io/DataOutputStream;

.field private e:Z

.field private f:Z

.field g:Ljava/util/concurrent/locks/ReadWriteLock;

.field private h:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->f:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->h:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->e:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->f:Z

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->h:Ljava/lang/StringBuffer;

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/lang/Process;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/i;->a:Ljava/lang/Process;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/i;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/i;->b:Ljava/io/BufferedReader;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/lang/StringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/i;->h:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static synthetic d(Lcom/ubix/ssp/ad/e/a0/i;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/ad/e/a0/i;->c:Ljava/io/BufferedReader;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/ubix/ssp/ad/e/a0/i;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->a:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->f:Z

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/i;->a:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->b:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/i;->a:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->c:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/a0/i;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->d:Ljava/io/DataOutputStream;

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->d:Ljava/io/DataOutputStream;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->d:Ljava/io/DataOutputStream;

    const-string v0, "exit\n"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->d:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    if-lez p2, :cond_1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/i$a;

    invoke-direct {v0, p0, p2}, Lcom/ubix/ssp/ad/e/a0/i$a;-><init>(Lcom/ubix/ssp/ad/e/a0/i;I)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ubix/ssp/ad/e/a0/i$b;

    invoke-direct {p2, p0}, Lcom/ubix/ssp/ad/e/a0/i$b;-><init>(Lcom/ubix/ssp/ad/e/a0/i;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/ubix/ssp/ad/e/a0/i$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/a0/i$c;-><init>(Lcom/ubix/ssp/ad/e/a0/i;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubix/ssp/ad/e/a0/i$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/a0/i$d;-><init>(Lcom/ubix/ssp/ad/e/a0/i;Ljava/lang/Thread;Ljava/lang/Thread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/e/a0/i;->e:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :catchall_1
    :cond_2
    :goto_2
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/i;->g:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ubix/ssp/ad/e/a0/i;->h:Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

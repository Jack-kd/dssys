.class public Lcom/ubix/ssp/ad/e/v/g/b;
.super Lcom/ubix/ssp/ad/e/v/e;

# interfaces
.implements Lcom/ubix/ssp/ad/e/v/f;


# instance fields
.field private d:Lcom/ubix/ssp/ad/e/v/e$a;

.field private e:Landroid/media/MediaPlayer;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/v/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/v/g/b;->g:Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/e/v/g/b;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/b;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/v/g/b;->e:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/b;Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/e;->a(Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/b;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/e/v/e;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/b;)Lcom/ubix/ssp/ad/e/v/e$a;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/v/g/b;->d:Lcom/ubix/ssp/ad/e/v/e$a;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/v/g/b;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/v/g/b;->g:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/v/g/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/v/g/b;->g:Z

    return p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/v/g/b;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/v/g/b;->e:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/k;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/e$b;)V
    .locals 6

    .line 7
    const-string v0, "\u8d44\u6e90\u4e0b\u8f7d\u9519\u8bef"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download timer started :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/4 v1, 0x5

    :try_start_0
    sget-object v2, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/b0/e;->a(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_1

    sget-object v2, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p3, p0, p1, v2, v3}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download timer ahead return :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v2, Lcom/ubix/ssp/ad/e/v/e$a;

    invoke-direct {v2, p3}, Lcom/ubix/ssp/ad/e/v/e$a;-><init>(Lcom/ubix/ssp/ad/e/v/e$b;)V

    iput-object v2, p0, Lcom/ubix/ssp/ad/e/v/g/b;->d:Lcom/ubix/ssp/ad/e/v/e$a;

    if-lez p2, :cond_3

    const-string v3, "\u8bf7\u6c42\u8d85\u65f6"

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/ubix/ssp/ad/e/a0/a0/a;->i(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ubix/ssp/ad/e/v/e;->a(Lcom/ubix/ssp/open/AdError;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p3, :cond_5

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p3, p0, p1, p2, v2}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/ad/e/v/e;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_4
    sget-object v2, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    new-instance v3, Lcom/ubix/ssp/ad/e/v/g/b$a;

    invoke-direct {v3, p0, p2}, Lcom/ubix/ssp/ad/e/v/g/b$a;-><init>(Lcom/ubix/ssp/ad/e/v/g/b;I)V

    invoke-virtual {v2, v3, p1}, Lcom/ubix/ssp/ad/e/b0/h/f;->a(Lcom/ubix/ssp/ad/e/b0/h/b;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p2, Lcom/ubix/ssp/ad/e/b0/e;->c:Lcom/ubix/ssp/ad/e/b0/h/f;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/b0/h/f;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-instance v2, Lcom/ubix/ssp/ad/e/v/g/b$b;

    invoke-direct {v2, p0, p1, p3}, Lcom/ubix/ssp/ad/e/v/g/b$b;-><init>(Lcom/ubix/ssp/ad/e/v/g/b;Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    if-eqz p3, :cond_5

    :try_start_2
    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/open/AdError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p3, :cond_5

    invoke-static {v1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->h(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/ubix/ssp/ad/e/v/e$b;->a(Lcom/ubix/ssp/open/AdError;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/v/e$b;)V
    .locals 1

    .line 8
    const/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/e/v/g/b;->a(Ljava/lang/String;ILcom/ubix/ssp/ad/e/v/e$b;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/v/g/b;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

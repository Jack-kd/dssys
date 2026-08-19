.class public Lcom/ubix/ssp/ad/e/b0/c;
.super Lcom/ubix/ssp/ad/e/b0/b;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field private g:Landroid/media/MediaPlayer;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/b0/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/b;-><init>(Lcom/ubix/ssp/ad/e/b0/e;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/c;->h:Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/c;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/b0/c;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/c;->h:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/e/b0/c;)Lcom/ubix/ssp/ad/e/b0/e;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/b0/c;->f()Lcom/ubix/ssp/ad/e/b0/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/e/b0/c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/b0/c;->h:Z

    return p0
.end method

.method private f()Lcom/ubix/ssp/ad/e/b0/e;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->f:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/e;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-wide v1
.end method

.method public a(FF)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "---mMediaHandler null"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/c$p;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/c$p;-><init>(Lcom/ubix/ssp/ad/e/b0/c;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/c$o;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/b0/c$o;-><init>(Lcom/ubix/ssp/ad/e/b0/c;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public declared-synchronized a(Lcom/ubix/ssp/ad/e/b0/a;)V
    .locals 2

    .line 7
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/ubix/ssp/ad/e/b0/c$e;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/b0/c$e;-><init>(Lcom/ubix/ssp/ad/e/b0/c;Lcom/ubix/ssp/ad/e/b0/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 8
    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p1}, Lcom/ubix/ssp/ad/e/b0/c;->a(FF)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$l;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/c$l;-><init>(Lcom/ubix/ssp/ad/e/b0/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$m;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/c$m;-><init>(Lcom/ubix/ssp/ad/e/b0/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/b0/c;->h:Z

    return v0
.end method

.method public d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/c$n;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/b0/c$n;-><init>(Lcom/ubix/ssp/ad/e/b0/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoRelease "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/b;->b:Landroid/view/SurfaceHolder;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/b;->c:Landroid/os/HandlerThread;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    iput-object v1, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/c;->e()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UbiXVideo"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/b0/b;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/c$k;

    invoke-direct {v1, p0}, Lcom/ubix/ssp/ad/e/b0/c$k;-><init>(Lcom/ubix/ssp/ad/e/b0/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$a;

    invoke-direct {v0, p0, p2}, Lcom/ubix/ssp/ad/e/b0/c$a;-><init>(Lcom/ubix/ssp/ad/e/b0/c;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$c;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/c$c;-><init>(Lcom/ubix/ssp/ad/e/b0/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$r;

    invoke-direct {v0, p0, p2, p3}, Lcom/ubix/ssp/ad/e/b0/c$r;-><init>(Lcom/ubix/ssp/ad/e/b0/c;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInfo what= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";extra= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$d;

    invoke-direct {v0, p0, p2, p3}, Lcom/ubix/ssp/ad/e/b0/c$d;-><init>(Lcom/ubix/ssp/ad/e/b0/c;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$q;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/c$q;-><init>(Lcom/ubix/ssp/ad/e/b0/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$b;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/ad/e/b0/c$b;-><init>(Lcom/ubix/ssp/ad/e/b0/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/c;->g()V

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/ubix/ssp/ad/e/b0/c$f;

    invoke-direct {p3, p0, p1}, Lcom/ubix/ssp/ad/e/b0/c$f;-><init>(Lcom/ubix/ssp/ad/e/b0/c;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_1

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/b0/h;->a(Landroid/graphics/SurfaceTexture;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_3

    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/b0/c;->a(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->a:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/c;->h:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/ubix/ssp/ad/e/b0/c$s;

    invoke-direct {v0, p0, p2, p3}, Lcom/ubix/ssp/ad/e/b0/c$s;-><init>(Lcom/ubix/ssp/ad/e/b0/c;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    new-instance p2, Lcom/ubix/ssp/ad/e/b0/c$i;

    invoke-direct {p2, p0, p3, p4}, Lcom/ubix/ssp/ad/e/b0/c$i;-><init>(Lcom/ubix/ssp/ad/e/b0/c;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->b:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->b:Landroid/view/SurfaceHolder;

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/e/b0/c;->g()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/b;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/ubix/ssp/ad/e/b0/c$h;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/ad/e/b0/c$h;-><init>(Lcom/ubix/ssp/ad/e/b0/c;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->b:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p1, "surfaceDestroyed"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/b;->b:Landroid/view/SurfaceHolder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/e/b0/c;->h:Z

    return-void
.end method

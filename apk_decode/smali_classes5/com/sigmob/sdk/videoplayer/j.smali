.class public Lcom/sigmob/sdk/videoplayer/j;
.super Lcom/sigmob/sdk/videoplayer/i;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# static fields
.field private static final f:Ljava/lang/String; = "VideoPlayerMediaSystem"


# instance fields
.field public e:Landroid/media/MediaPlayer;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/videoplayer/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoplayer/i;-><init>(Lcom/sigmob/sdk/videoplayer/h;)V

    return-void
.end method

.method private synthetic a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/videoplayer/h;->setBufferProgress(I)V

    return-void
.end method

.method private synthetic a(II)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/h;->c(II)V

    return-void
.end method

.method private synthetic a(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->b:Landroid/os/Handler;

    return-void
.end method

.method private synthetic b(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/h;->b(II)V

    return-void
.end method

.method private synthetic b(J)V
    .locals 1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic c(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method private synthetic c(II)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/videoplayer/h;->a(II)V

    return-void
.end method

.method private synthetic k()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/videoplayer/h;->q()V

    return-void
.end method

.method public static synthetic k(Lcom/sigmob/sdk/videoplayer/j;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoplayer/j;->b(II)V

    return-void
.end method

.method private synthetic l()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/videoplayer/h;->p()V

    return-void
.end method

.method public static synthetic l(Lcom/sigmob/sdk/videoplayer/j;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoplayer/j;->c(F)V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayerMediaSystem mediaPlayer onPrepared ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/videoplayer/h;->o()V

    return-void
.end method

.method public static synthetic m(Lcom/sigmob/sdk/videoplayer/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/j;->l()V

    return-void
.end method

.method private synthetic n()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public static synthetic n(Lcom/sigmob/sdk/videoplayer/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/j;->k()V

    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayerMediaSystem mediaPlayer start ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public static synthetic o(Lcom/sigmob/sdk/videoplayer/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/j;->p()V

    return-void
.end method

.method private synthetic p()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    invoke-interface {v0}, Lcom/sigmob/sdk/videoplayer/h;->getVideoPlayerDataSource()Lcom/sigmob/sdk/videoplayer/g;

    move-result-object v0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    iget-boolean v2, v0, Lcom/sigmob/sdk/videoplayer/g;->e:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const-class v1, Landroid/media/MediaPlayer;

    const-string v2, "setDataSource"

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/util/Map;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoplayer/g;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/sigmob/sdk/videoplayer/g;->d:Ljava/util/HashMap;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/j;->g:Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/sigmob/sdk/videoplayer/i;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
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

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoplayer/u;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoplayer/u;-><init>(Lcom/sigmob/sdk/videoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic p(Lcom/sigmob/sdk/videoplayer/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/j;->n()V

    return-void
.end method

.method private synthetic q()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/sigmob/sdk/videoplayer/h;->a(II)V

    return-void
.end method

.method public static synthetic q(Lcom/sigmob/sdk/videoplayer/j;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoplayer/j;->a(II)V

    return-void
.end method

.method public static synthetic r(Lcom/sigmob/sdk/videoplayer/j;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoplayer/j;->c(II)V

    return-void
.end method

.method public static synthetic s(Lcom/sigmob/sdk/videoplayer/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/j;->m()V

    return-void
.end method

.method public static synthetic t(Lcom/sigmob/sdk/videoplayer/j;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoplayer/j;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic u(Lcom/sigmob/sdk/videoplayer/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/videoplayer/j;->a(I)V

    return-void
.end method

.method public static synthetic v(Lcom/sigmob/sdk/videoplayer/j;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sigmob/sdk/videoplayer/j;->b(J)V

    return-void
.end method

.method public static synthetic w(Lcom/sigmob/sdk/videoplayer/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/j;->q()V

    return-void
.end method

.method public static synthetic x(Lcom/sigmob/sdk/videoplayer/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/videoplayer/j;->o()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/videoplayer/t;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoplayer/t;-><init>(Lcom/sigmob/sdk/videoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/videoplayer/C;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/videoplayer/C;-><init>(Lcom/sigmob/sdk/videoplayer/j;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/videoplayer/B;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/videoplayer/B;-><init>(Lcom/sigmob/sdk/videoplayer/j;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface() called with: surface = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/j;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/j;->g:Z

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sigmob/sdk/videoplayer/j;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/i;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sigmob/sdk/videoplayer/j;->g:Z

    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/sigmob/sdk/videoplayer/i;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/j;->f()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getIOHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/videoplayer/r;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoplayer/r;-><init>(Lcom/sigmob/sdk/videoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/videoplayer/q;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/videoplayer/q;-><init>(Lcom/sigmob/sdk/videoplayer/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sigmob/sdk/videoplayer/z;

    invoke-direct {v2, p0, v1}, Lcom/sigmob/sdk/videoplayer/z;-><init>(Lcom/sigmob/sdk/videoplayer/j;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    :cond_1
    :goto_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/j;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/s;

    invoke-direct {v0, p0, p2}, Lcom/sigmob/sdk/videoplayer/s;-><init>(Lcom/sigmob/sdk/videoplayer/j;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/v;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoplayer/v;-><init>(Lcom/sigmob/sdk/videoplayer/j;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/A;

    invoke-direct {v0, p0, p2, p3}, Lcom/sigmob/sdk/videoplayer/A;-><init>(Lcom/sigmob/sdk/videoplayer/j;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sigmob/sdk/videoplayer/y;

    invoke-direct {v1, p0, p2, p3}, Lcom/sigmob/sdk/videoplayer/y;-><init>(Lcom/sigmob/sdk/videoplayer/j;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/w;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoplayer/w;-><init>(Lcom/sigmob/sdk/videoplayer/j;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/p;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/videoplayer/p;-><init>(Lcom/sigmob/sdk/videoplayer/j;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureAvailable() called with: surface = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], width = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], height = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoplayer/i;->a:Landroid/graphics/SurfaceTexture;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->a:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/sigmob/sdk/videoplayer/j;->c()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->d:Lcom/sigmob/sdk/videoplayer/h;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/videoplayer/h;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureDestroyed() called with: surface = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged() called with: surface = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], width = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], height = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object p1, p0, Lcom/sigmob/sdk/videoplayer/i;->c:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sigmob/sdk/videoplayer/x;

    invoke-direct {v0, p0, p2, p3}, Lcom/sigmob/sdk/videoplayer/x;-><init>(Lcom/sigmob/sdk/videoplayer/j;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

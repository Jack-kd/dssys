.class public Lcom/sigmob/sdk/base/views/gif/e;
.super Landroid/widget/ImageView;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/views/gif/e$a;,
        Lcom/sigmob/sdk/base/views/gif/e$b;,
        Lcom/sigmob/sdk/base/views/gif/e$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private b:Z

.field private c:Lcom/sigmob/sdk/base/views/gif/e$a;

.field private d:Lcom/sigmob/sdk/base/views/gif/e$b;

.field private e:Ljava/lang/Thread;

.field private f:Lcom/sigmob/sdk/base/views/gif/e$c;

.field private g:J

.field private h:Lcom/sigmob/sdk/base/views/gif/a;

.field private final i:Landroid/os/Handler;

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/Bitmap;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->c:Lcom/sigmob/sdk/base/views/gif/e$a;

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->d:Lcom/sigmob/sdk/base/views/gif/e$b;

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->f:Lcom/sigmob/sdk/base/views/gif/e$c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->g:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->i:Landroid/os/Handler;

    new-instance p1, Lcom/sigmob/sdk/base/views/gif/e$1;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/views/gif/e$1;-><init>(Lcom/sigmob/sdk/base/views/gif/e;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->m:Ljava/lang/Runnable;

    new-instance p1, Lcom/sigmob/sdk/base/views/gif/e$2;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/views/gif/e$2;-><init>(Lcom/sigmob/sdk/base/views/gif/e;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->c:Lcom/sigmob/sdk/base/views/gif/e$a;

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->d:Lcom/sigmob/sdk/base/views/gif/e$b;

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->f:Lcom/sigmob/sdk/base/views/gif/e$c;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->g:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->i:Landroid/os/Handler;

    new-instance p1, Lcom/sigmob/sdk/base/views/gif/e$1;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/views/gif/e$1;-><init>(Lcom/sigmob/sdk/base/views/gif/e;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->m:Ljava/lang/Runnable;

    new-instance p1, Lcom/sigmob/sdk/base/views/gif/e$2;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/views/gif/e$2;-><init>(Lcom/sigmob/sdk/base/views/gif/e;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/gif/e;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/views/gif/e;->l:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/gif/e;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->l:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/gif/e;Lcom/sigmob/sdk/base/views/gif/a;)Lcom/sigmob/sdk/base/views/gif/a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/gif/e;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->e:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/views/gif/e;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->k:Z

    return p1
.end method

.method private f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->e:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private g()V
    .locals 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->k:Z

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/gif/e;->e()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/e;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/a;->d()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/gif/a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/sigmob/sdk/base/views/gif/e;->j:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/e;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/a;->o()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/views/gif/e;->a(I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/e;->g()V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->e:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public getFrameCount()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/a;->f()I

    move-result v0

    return v0
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->g:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/a;->g()I

    move-result v0

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/a;->m()I

    move-result v0

    return v0
.end method

.method public getOnAnimationStop()Lcom/sigmob/sdk/base/views/gif/e$b;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->d:Lcom/sigmob/sdk/base/views/gif/e$b;

    return-object v0
.end method

.method public getOnFrameAvailable()Lcom/sigmob/sdk/base/views/gif/e$c;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->f:Lcom/sigmob/sdk/base/views/gif/e$c;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/views/gif/e;->a()V

    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->c:Lcom/sigmob/sdk/base/views/gif/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/gif/e$a;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->j:Z

    if-nez v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/a;->a()Z

    move-result v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/views/gif/a;->k()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sigmob/sdk/base/views/gif/e;->l:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sigmob/sdk/base/views/gif/e;->f:Lcom/sigmob/sdk/base/views/gif/e$c;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lcom/sigmob/sdk/base/views/gif/e$c;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sigmob/sdk/base/views/gif/e;->l:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-wide v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v5, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sigmob/sdk/base/views/gif/e;->i:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sigmob/sdk/base/views/gif/e;->n:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sigmob/sdk/base/views/gif/e;->j:Z

    iget-boolean v4, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    if-eqz v4, :cond_6

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/gif/a;->j()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v3, v5

    long-to-int v0, v3

    if-lez v0, :cond_5

    iget-wide v3, p0, Lcom/sigmob/sdk/base/views/gif/e;->g:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    int-to-long v3, v0

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    if-nez v0, :cond_0

    goto :goto_4

    :cond_6
    :goto_3
    iput-boolean v3, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    :goto_4
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->k:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/gif/e;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->d:Lcom/sigmob/sdk/base/views/gif/e$b;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/sigmob/sdk/base/views/gif/e$b;->a()V

    :cond_8
    return-void
.end method

.method public setBytes([B)V
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/base/views/gif/a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/views/gif/a;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/views/gif/a;->a([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->b:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/views/gif/e;->g()V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/views/gif/e;->a(I)V

    return-void

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->h:Lcom/sigmob/sdk/base/views/gif/a;

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->g:J

    return-void
.end method

.method public setOnAnimationStart(Lcom/sigmob/sdk/base/views/gif/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->c:Lcom/sigmob/sdk/base/views/gif/e$a;

    return-void
.end method

.method public setOnAnimationStop(Lcom/sigmob/sdk/base/views/gif/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->d:Lcom/sigmob/sdk/base/views/gif/e$b;

    return-void
.end method

.method public setOnFrameAvailable(Lcom/sigmob/sdk/base/views/gif/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/gif/e;->f:Lcom/sigmob/sdk/base/views/gif/e$c;

    return-void
.end method

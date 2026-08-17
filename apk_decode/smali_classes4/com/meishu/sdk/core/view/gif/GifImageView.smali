.class public Lcom/meishu/sdk/core/view/gif/GifImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;,
        Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;,
        Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private animating:Z

.field private animationStartCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;

.field private animationStopCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;

.field private animationThread:Ljava/lang/Thread;

.field private canClear:Z

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private frameCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;

.field private framesDisplayDuration:J

.field private gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private renderFrame:Z

.field private shouldClear:Z

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private final updateResults:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->frameCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    .line 14
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;

    .line 15
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;

    .line 16
    new-instance p1, Lcom/meishu/sdk/core/view/gif/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/view/gif/GifImageView$1;-><init>(Lcom/meishu/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 17
    new-instance p1, Lcom/meishu/sdk/core/view/gif/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/view/gif/GifImageView$2;-><init>(Lcom/meishu/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->canClear:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->frameCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    .line 5
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;

    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;

    .line 7
    new-instance p1, Lcom/meishu/sdk/core/view/gif/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/view/gif/GifImageView$1;-><init>(Lcom/meishu/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Lcom/meishu/sdk/core/view/gif/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/meishu/sdk/core/view/gif/GifImageView$2;-><init>(Lcom/meishu/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->canClear:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/core/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/core/view/gif/GifImageView;Lcom/meishu/sdk/core/view/gif/GifDecoder;)Lcom/meishu/sdk/core/view/gif/GifDecoder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/core/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/core/view/gif/GifImageView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->shouldClear:Z

    .line 2
    .line 3
    return p1
.end method

.method private canStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->renderFrame:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method private startAnimationThread()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->canStart()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Thread;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->renderFrame:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->shouldClear:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->stopAnimation()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getFrameCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getGifWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOnAnimationStop()Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnFrameAvailable()Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->frameCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    .line 2
    .line 3
    return-object v0
.end method

.method public gotoFrame(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getCurrentFrameIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->setFrameIndex(I)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->renderFrame:Z

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->canClear:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public resetAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->resetLoopIndex()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->gotoFrame(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;->onAnimationStart()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->renderFrame:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_5

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->advance()Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iget-object v5, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iput-object v5, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 40
    .line 41
    iget-object v6, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->frameCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    invoke-interface {v6, v5}, Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iput-object v5, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-wide v5, v1

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    sub-long/2addr v5, v3

    .line 59
    const-wide/32 v3, 0xf4240

    .line 60
    .line 61
    .line 62
    div-long/2addr v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :try_start_2
    iget-object v3, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    .line 69
    .line 70
    :catchall_2
    :goto_2
    const/4 v3, 0x0

    .line 71
    :try_start_3
    iput-boolean v3, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->renderFrame:Z

    .line 72
    .line 73
    iget-boolean v4, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->getNextDelay()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    int-to-long v3, v0

    .line 87
    sub-long/2addr v3, v5

    .line 88
    long-to-int v0, v3

    .line 89
    if-lez v0, :cond_5

    .line 90
    .line 91
    iget-wide v3, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    .line 92
    .line 93
    cmp-long v1, v3, v1

    .line 94
    .line 95
    if-lez v1, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    int-to-long v3, v0

    .line 99
    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    .line 101
    .line 102
    :catch_0
    :cond_5
    :try_start_5
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 103
    .line 104
    if-nez v0, :cond_0

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    :goto_4
    iput-boolean v3, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 108
    .line 109
    :goto_5
    iget-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->shouldClear:Z

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    .line 119
    .line 120
    :cond_7
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;

    .line 124
    .line 125
    if-eqz v0, :cond_8

    .line 126
    .line 127
    invoke-interface {v0}, Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;->onAnimationStop()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_7

    .line 131
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :cond_8
    :goto_7
    return-void
.end method

.method public setBytes([B)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;

    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x4

    .line 2
    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->read(I[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->gotoFrame(I)V

    return-void

    :catchall_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public setBytes([BI)V
    .locals 1

    .line 7
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/core/view/gif/GifDecoder;

    invoke-direct {v0}, Lcom/meishu/sdk/core/view/gif/GifDecoder;-><init>()V

    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v0, p2, p1}, Lcom/meishu/sdk/core/view/gif/GifDecoder;->read(I[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-boolean p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->gotoFrame(I)V

    return-void

    :catchall_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->gifDecoder:Lcom/meishu/sdk/core/view/gif/GifDecoder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public setCanClear(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->canClear:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public setOnAnimationStart(Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStart;

    .line 2
    .line 3
    return-void
.end method

.method public setOnAnimationStop(Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnAnimationStop;

    .line 2
    .line 3
    return-void
.end method

.method public setOnFrameAvailable(Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->frameCallback:Lcom/meishu/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    .line 2
    .line 3
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animating:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

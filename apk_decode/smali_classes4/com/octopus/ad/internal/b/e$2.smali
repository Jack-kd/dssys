.class Lcom/octopus/ad/internal/b/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p2, Landroid/view/Surface;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 7
    .line 8
    new-instance p3, Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/octopus/ad/internal/b/e$2$1;

    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/b/e$2$1;-><init>(Lcom/octopus/ad/internal/b/e$2;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, Lcom/octopus/ad/internal/b/e$2$2;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/b/e$2$2;-><init>(Lcom/octopus/ad/internal/b/e$2;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Lcom/octopus/ad/internal/b/e$2$3;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/octopus/ad/internal/b/e$2$3;-><init>(Lcom/octopus/ad/internal/b/e$2;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/e;->d()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->y(Lcom/octopus/ad/internal/b/e;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->y(Lcom/octopus/ad/internal/b/e;)Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/os/Handler;)Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

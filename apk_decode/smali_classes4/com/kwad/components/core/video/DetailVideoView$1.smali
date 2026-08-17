.class final Lcom/kwad/components/core/video/DetailVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/video/DetailVideoView;->xu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic anl:Lcom/kwad/components/core/video/DetailVideoView;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/video/DetailVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/kwad/components/core/video/DetailVideoView;->c(Lcom/kwad/components/core/video/DetailVideoView;)Landroid/graphics/SurfaceTexture;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lcom/kwad/components/core/video/DetailVideoView;->a(Lcom/kwad/components/core/video/DetailVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/kwad/components/core/video/DetailVideoView;->d(Lcom/kwad/components/core/video/DetailVideoView;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 21
    .line 22
    new-instance p3, Landroid/view/Surface;

    .line 23
    .line 24
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 25
    .line 26
    .line 27
    iput-object p3, p2, Lcom/kwad/components/core/video/DetailVideoView;->anc:Landroid/view/Surface;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/kwad/components/core/video/DetailVideoView;->e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/kwad/components/core/video/DetailVideoView;->e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/kwad/components/core/video/DetailVideoView;->anc:Landroid/view/Surface;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/video/b;->setSurface(Landroid/view/Surface;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/kwad/components/core/video/DetailVideoView;->e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/kwad/components/core/video/DetailVideoView;->e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/kwad/components/core/video/b;->isPlaying()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/kwad/components/core/video/DetailVideoView;->e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 77
    .line 78
    invoke-static {p2}, Lcom/kwad/components/core/video/DetailVideoView;->f(Lcom/kwad/components/core/video/DetailVideoView;)J

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    invoke-virtual {p1, p2, p3}, Lcom/kwad/components/core/video/b;->seekTo(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 89
    :goto_1
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/core/video/DetailVideoView;->e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/kwad/components/core/video/DetailVideoView$1;->anl:Lcom/kwad/components/core/video/DetailVideoView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/kwad/components/core/video/DetailVideoView;->e(Lcom/kwad/components/core/video/DetailVideoView;)Lcom/kwad/components/core/video/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/kwad/components/core/video/b;->getCurrentPosition()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {p1, v0, v1}, Lcom/kwad/components/core/video/DetailVideoView;->a(Lcom/kwad/components/core/video/DetailVideoView;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

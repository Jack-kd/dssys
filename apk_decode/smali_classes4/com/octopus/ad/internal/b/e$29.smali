.class Lcom/octopus/ad/internal/b/e$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->p()V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->t(Lcom/octopus/ad/internal/b/e;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-lez p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->t(Lcom/octopus/ad/internal/b/e;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$29;->a:Lcom/octopus/ad/internal/b/e;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoReady()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.class Lcom/octopus/ad/internal/b/e$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e$2;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/e$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$2$1;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$1;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$1;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;I)I

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$1;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$1;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->aj()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$1;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$1;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoCompleted()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

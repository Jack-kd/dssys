.class Lcom/octopus/ad/internal/b/e$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$27;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$27;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$27;->a:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoError(II)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

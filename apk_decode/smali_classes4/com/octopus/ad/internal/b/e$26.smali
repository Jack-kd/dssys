.class Lcom/octopus/ad/internal/b/e$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$26;->a:Lcom/octopus/ad/internal/b/e;

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
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$26;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$26;->a:Lcom/octopus/ad/internal/b/e;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;I)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$26;->a:Lcom/octopus/ad/internal/b/e;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$26;->a:Lcom/octopus/ad/internal/b/e;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->aj()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$26;->a:Lcom/octopus/ad/internal/b/e;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$26;->a:Lcom/octopus/ad/internal/b/e;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoCompleted()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

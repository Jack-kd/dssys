.class Lcom/octopus/ad/internal/b/e$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->A()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->h()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->v(Lcom/octopus/ad/internal/b/e;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 59
    .line 60
    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    .line 63
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/16 v0, 0x8

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->ah()V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoStart()V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->s(Lcom/octopus/ad/internal/b/e;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->n(Lcom/octopus/ad/internal/b/e;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$28;->a:Lcom/octopus/ad/internal/b/e;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->w(Lcom/octopus/ad/internal/b/e;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.class Lcom/octopus/ad/internal/b/e$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->x(Lcom/octopus/ad/internal/b/e;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->A()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->h()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 61
    .line 62
    .line 63
    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    .line 65
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const/16 v0, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->ah()V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_3

    .line 121
    .line 122
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoStart()V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->s(Lcom/octopus/ad/internal/b/e;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->n(Lcom/octopus/ad/internal/b/e;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$2$3;->a:Lcom/octopus/ad/internal/b/e$2;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/octopus/ad/internal/b/e$2;->a:Lcom/octopus/ad/internal/b/e;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->w(Lcom/octopus/ad/internal/b/e;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

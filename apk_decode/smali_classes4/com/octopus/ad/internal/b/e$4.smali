.class Lcom/octopus/ad/internal/b/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/nativead/NativeAdShownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->r()V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdShown(Z)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->h(Lcom/octopus/ad/internal/b/e;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->z(Lcom/octopus/ad/internal/b/e;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->z(Lcom/octopus/ad/internal/b/e;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$4;->a:Lcom/octopus/ad/internal/b/e;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void

    .line 127
    :goto_0
    const-string v0, "OctopusAd"

    .line 128
    .line 129
    const-string v1, "An Exception Caught"

    .line 130
    .line 131
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

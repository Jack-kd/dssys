.class Lcom/octopus/ad/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_4

    .line 22
    .line 23
    iget-object v0, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "currentPosition:"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, "/"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "OctopusAd"

    .line 65
    .line 66
    invoke-static {v3, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    div-int/lit16 v1, v1, 0x3e8

    .line 70
    .line 71
    div-int/lit16 v2, v0, 0xfa0

    .line 72
    .line 73
    if-ne v1, v2, :cond_0

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    div-int/lit16 v2, v0, 0x7d0

    .line 78
    .line 79
    if-ne v1, v2, :cond_1

    .line 80
    .line 81
    const/4 v0, 0x2

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v2, 0x3

    .line 84
    mul-int/2addr v0, v2

    .line 85
    div-int/lit16 v0, v0, 0xfa0

    .line 86
    .line 87
    if-ne v1, v0, :cond_2

    .line 88
    .line 89
    move v0, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 92
    :goto_0
    if-lez v0, :cond_3

    .line 93
    .line 94
    iget-object v1, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/b/f;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iget-object v1, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/b/f;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/f;->c(I)V

    .line 109
    .line 110
    .line 111
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v2, "video progress:"

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v3, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/octopus/ad/d$5;->a:Lcom/octopus/ad/d;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/octopus/ad/d;->i(Lcom/octopus/ad/d;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    return-void
.end method

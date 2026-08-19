.class Lcom/octopus/ad/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

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
    iget-object v0, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    sget-object v1, Lcom/octopus/ad/c$b;->d:Lcom/octopus/ad/c$b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/octopus/ad/d;->setScalableType(Lcom/octopus/ad/c$b;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    div-int/lit16 p1, p1, 0x3e8

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;I)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/d;->j(Lcom/octopus/ad/d;)I

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/octopus/ad/d;->k(Lcom/octopus/ad/d;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    sget-object p1, Lcom/octopus/ad/internal/c/f;->a:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "Video start called!"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/octopus/ad/d;->c()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 45
    .line 46
    sget-object v0, Lcom/octopus/ad/d$a;->b:Lcom/octopus/ad/d$a;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;Lcom/octopus/ad/d$a;)Lcom/octopus/ad/d$a;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/b/f;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/b/f;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->ah()V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/octopus/ad/d;->d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoStart()V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/a;->m()V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/octopus/ad/d;->i(Lcom/octopus/ad/d;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 109
    .line 110
    sget-object v0, Lcom/octopus/ad/d$a;->c:Lcom/octopus/ad/d$a;

    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/d;Lcom/octopus/ad/d$a;)Lcom/octopus/ad/d$a;

    .line 113
    .line 114
    .line 115
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/octopus/ad/d;->j(Lcom/octopus/ad/d;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-gtz p1, :cond_4

    .line 122
    .line 123
    const-string p1, "OctopusAd_Video"

    .line 124
    .line 125
    const-string v0, "Video Play Time = 0"

    .line 126
    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    iget-object p1, p0, Lcom/octopus/ad/d$6;->a:Lcom/octopus/ad/d;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const v0, 0x1394a

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/e/a;->b(I)V

    .line 148
    .line 149
    .line 150
    :cond_4
    return-void
.end method

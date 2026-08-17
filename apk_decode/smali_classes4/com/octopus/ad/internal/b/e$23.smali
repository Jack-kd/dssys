.class Lcom/octopus/ad/internal/b/e$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->o()V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/e;->isVideo()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->h(Lcom/octopus/ad/internal/b/e;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

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
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 49
    .line 50
    invoke-static {p1, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoPause()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 83
    .line 84
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 96
    .line 97
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoResume()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 135
    .line 136
    invoke-static {p1, v1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 140
    .line 141
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_3

    .line 146
    .line 147
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoPause()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 167
    .line 168
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    if-eqz p1, :cond_3

    .line 178
    .line 179
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$23;->a:Lcom/octopus/ad/internal/b/e;

    .line 180
    .line 181
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .line 187
    .line 188
    :cond_3
    return-void

    .line 189
    :goto_0
    const-string v0, "OctopusAd"

    .line 190
    .line 191
    const-string v1, "An Exception Caught"

    .line 192
    .line 193
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

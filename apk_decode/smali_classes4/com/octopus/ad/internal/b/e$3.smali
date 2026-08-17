.class Lcom/octopus/ad/internal/b/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->q()V
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
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

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
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_5

    .line 20
    .line 21
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v1, v2}, Lcom/octopus/ad/internal/b/e;->b(Lcom/octopus/ad/internal/b/e;I)I

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->s(Lcom/octopus/ad/internal/b/e;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "currentPosition:"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 72
    .line 73
    invoke-static {v2}, Lcom/octopus/ad/internal/b/e;->t(Lcom/octopus/ad/internal/b/e;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "/"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "OctopusAd"

    .line 93
    .line 94
    invoke-static {v2, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->t(Lcom/octopus/ad/internal/b/e;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    div-int/lit16 v1, v1, 0x3e8

    .line 104
    .line 105
    div-int/lit16 v3, v0, 0xfa0

    .line 106
    .line 107
    if-ne v1, v3, :cond_0

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->t(Lcom/octopus/ad/internal/b/e;)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    div-int/lit16 v1, v1, 0x3e8

    .line 118
    .line 119
    div-int/lit16 v3, v0, 0x7d0

    .line 120
    .line 121
    if-ne v1, v3, :cond_1

    .line 122
    .line 123
    const/4 v0, 0x2

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->t(Lcom/octopus/ad/internal/b/e;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    div-int/lit16 v1, v1, 0x3e8

    .line 132
    .line 133
    const/4 v3, 0x3

    .line 134
    mul-int/2addr v0, v3

    .line 135
    div-int/lit16 v0, v0, 0xfa0

    .line 136
    .line 137
    if-ne v1, v0, :cond_2

    .line 138
    .line 139
    move v0, v3

    .line 140
    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    .line 142
    :goto_0
    if-lez v0, :cond_3

    .line 143
    .line 144
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_3

    .line 151
    .line 152
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/f;->c(I)V

    .line 159
    .line 160
    .line 161
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v3, "video progress:"

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 183
    .line 184
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->t(Lcom/octopus/ad/internal/b/e;)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-lez v0, :cond_5

    .line 189
    .line 190
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->u(Lcom/octopus/ad/internal/b/e;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_5

    .line 197
    .line 198
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_5

    .line 205
    .line 206
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$3;->a:Lcom/octopus/ad/internal/b/e;

    .line 207
    .line 208
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->ai()V

    .line 213
    .line 214
    .line 215
    :cond_5
    return-void
.end method

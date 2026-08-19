.class public Lcom/meishu/sdk/meishu_ad/nativ/o;
.super Lcom/meishu/sdk/core/safe/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "MediaPlayer.onPrepared "

    .line 6
    .line 7
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 12
    .line 13
    iget-boolean v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->s:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 46
    .line 47
    iget-boolean v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->r:Z

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    iget-boolean v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->n:Z

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 61
    .line 62
    new-instance v2, Lcom/meishu/sdk/meishu_ad/nativ/o$a;

    .line 63
    .line 64
    invoke-direct {v2, p0}, Lcom/meishu/sdk/meishu_ad/nativ/o$a;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/o;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :cond_0
    const/4 v0, 0x2

    .line 71
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 75
    .line 76
    iget v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->p:I

    .line 77
    .line 78
    if-ne v2, v1, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->i()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 89
    .line 90
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->U:Z

    .line 95
    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    invoke-static {p1, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e(Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Z)Z

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoStart()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    :try_start_0
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->d:Landroid/widget/TextView;

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, p1, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/widget/TextView;I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->e:Landroid/widget/TextView;

    .line 116
    .line 117
    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->b:Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;->getDuration()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v0, p1, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Landroid/widget/TextView;I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->f:Landroid/widget/ProgressBar;

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    iget-object p1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->L:Landroid/os/Handler;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c:Lcom/meishu/sdk/core/bquery/i;

    .line 152
    .line 153
    sget v0, Lcom/meishu/sdk/R$id;->ms_progress_loading:I

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/meishu/sdk/core/bquery/i;

    .line 160
    .line 161
    const/16 v0, 0x8

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a0:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView$d;

    .line 169
    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    check-cast p1, Lcom/meishu/sdk/meishu_ad/v$f$a;

    .line 173
    .line 174
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/v$f$a;->a:Lcom/meishu/sdk/meishu_ad/v$f;

    .line 175
    .line 176
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$f;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 177
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    .line 180
    .line 181
    move-result-wide v2

    .line 182
    iput-wide v2, v0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 183
    .line 184
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/v$f$a;->a:Lcom/meishu/sdk/meishu_ad/v$f;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$f;->b:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    iget-object v3, p1, Lcom/meishu/sdk/meishu_ad/v$f$a;->a:Lcom/meishu/sdk/meishu_ad/v$f;

    .line 193
    .line 194
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/v$f;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/v;->a()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v$f$a;->a:Lcom/meishu/sdk/meishu_ad/v$f;

    .line 208
    .line 209
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v$f;->d:Lcom/meishu/sdk/meishu_ad/reward/i;

    .line 210
    .line 211
    invoke-virtual {p1, v1}, Lcom/meishu/sdk/meishu_ad/reward/i;->b(Z)V

    .line 212
    .line 213
    .line 214
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 215
    .line 216
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->C:Lcom/meishu/sdk/meishu_ad/nativ/e;

    .line 217
    .line 218
    if-eqz p1, :cond_4

    .line 219
    .line 220
    invoke-interface {p1}, Lcom/meishu/sdk/meishu_ad/nativ/e;->onVideoLoaded()V

    .line 221
    .line 222
    .line 223
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/o;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->c()V

    .line 226
    .line 227
    .line 228
    return-void
.end method

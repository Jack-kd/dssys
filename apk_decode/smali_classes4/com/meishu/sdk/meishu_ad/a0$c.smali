.class public Lcom/meishu/sdk/meishu_ad/a0$c;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/a0;->a(Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field public final synthetic e:Lcom/meishu/sdk/meishu_ad/a0;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/a0;Ljava/lang/Object;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->e:Lcom/meishu/sdk/meishu_ad/a0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, v0, Landroid/media/MediaPlayer;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v4, "temp"

    .line 24
    .line 25
    invoke-static {v0, v4}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "last_meta_temp"

    .line 30
    .line 31
    invoke-static {v0, v5}, Lcom/meishu/sdk/core/bquery/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/4 v7, 0x0

    .line 40
    const-string v8, "CacheMediaPlayerHelper"

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/f0;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v6, "getFirstFramePicture :"

    .line 58
    .line 59
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    move v6, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v6, v7

    .line 67
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v8, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    :goto_1
    const-wide/16 v9, 0x0

    .line 81
    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    invoke-static {v4}, Lcom/meishu/sdk/meishu_ad/view/player/c;->a(Ljava/io/File;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v11

    .line 88
    cmp-long v2, v11, v9

    .line 89
    .line 90
    if-lez v2, :cond_4

    .line 91
    .line 92
    invoke-static {v5}, Lcom/meishu/sdk/meishu_ad/view/player/c;->a(Ljava/io/File;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v11

    .line 96
    cmp-long v2, v11, v9

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/f0;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v6, "getFirstFramePicture temp :"

    .line 114
    .line 115
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    move v6, v3

    .line 121
    goto :goto_2

    .line 122
    :cond_3
    move v6, v7

    .line 123
    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v8, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    if-nez v1, :cond_6

    .line 134
    .line 135
    invoke-static {v4}, Lcom/meishu/sdk/meishu_ad/view/player/c;->a(Ljava/io/File;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v11

    .line 139
    cmp-long v2, v11, v9

    .line 140
    .line 141
    if-lez v2, :cond_6

    .line 142
    .line 143
    invoke-static {v5}, Lcom/meishu/sdk/meishu_ad/view/player/c;->a(Ljava/io/File;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    cmp-long v2, v4, v9

    .line 148
    .line 149
    if-lez v2, :cond_6

    .line 150
    .line 151
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/f0;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v2, "getFirstFramePicture temp2 :"

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    if-eqz v1, :cond_5

    .line 166
    .line 167
    move v7, v3

    .line 168
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v8, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_4
    if-nez v1, :cond_7

    .line 183
    .line 184
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->e:Lcom/meishu/sdk/meishu_ad/a0;

    .line 185
    .line 186
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_7

    .line 197
    .line 198
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->e:Lcom/meishu/sdk/meishu_ad/a0;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/a0;->k:Lcom/meishu/sdk/core/bquery/i;

    .line 201
    .line 202
    sget v1, Lcom/meishu/sdk/R$id;->ms_splash_image_bg:I

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 209
    .line 210
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->e:Lcom/meishu/sdk/meishu_ad/a0;

    .line 211
    .line 212
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1, v3}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_7
    if-nez v1, :cond_8

    .line 228
    .line 229
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getVideoThumb()Landroid/graphics/Bitmap;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    :cond_8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->e:Lcom/meishu/sdk/meishu_ad/a0;

    .line 236
    .line 237
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a0$c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    if-eqz v1, :cond_9

    .line 243
    .line 244
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    new-instance v4, Lcom/meishu/sdk/meishu_ad/b0;

    .line 249
    .line 250
    invoke-direct {v4, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/b0;-><init>(Lcom/meishu/sdk/meishu_ad/a0;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v4}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_9
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 258
    .line 259
    .line 260
    :goto_5
    return-void
.end method

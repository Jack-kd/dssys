.class public Lcom/meishu/sdk/meishu_ad/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/bquery/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/bquery/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic j:Landroid/widget/ImageView;

.field public final synthetic k:Lcom/meishu/sdk/core/bquery/i;

.field public final synthetic l:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;IIZLjava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/ImageView;Lcom/meishu/sdk/core/bquery/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/a0;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/a0;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/a0;->e:Landroid/view/View;

    .line 12
    .line 13
    iput p7, p0, Lcom/meishu/sdk/meishu_ad/a0;->f:I

    .line 14
    .line 15
    iput p8, p0, Lcom/meishu/sdk/meishu_ad/a0;->g:I

    .line 16
    .line 17
    iput-boolean p9, p0, Lcom/meishu/sdk/meishu_ad/a0;->h:Z

    .line 18
    .line 19
    iput-object p10, p0, Lcom/meishu/sdk/meishu_ad/a0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    iput-object p11, p0, Lcom/meishu/sdk/meishu_ad/a0;->j:Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object p12, p0, Lcom/meishu/sdk/meishu_ad/a0;->k:Lcom/meishu/sdk/core/bquery/i;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v6, v2, Landroid/media/MediaPlayer;

    .line 8
    .line 9
    const-string v4, "\u52a0\u8f7d\u5931\u8d25 cid:"

    .line 10
    .line 11
    const-string v0, "\u52a0\u8f7d\u5931\u8d25"

    .line 12
    .line 13
    const v5, 0x895443

    .line 14
    .line 15
    .line 16
    if-nez v6, :cond_1

    .line 17
    .line 18
    instance-of v7, v2, Ljava/io/File;

    .line 19
    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2, v5, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v5, v2}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .line 70
    .line 71
    goto/16 :goto_c

    .line 72
    .line 73
    :catchall_1
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_c

    .line 78
    .line 79
    :cond_1
    :goto_1
    instance-of v7, v2, Ljava/io/File;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    move-object v7, v2

    .line 85
    check-cast v7, Ljava/io/File;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    move-object v7, v8

    .line 89
    :goto_2
    const/4 v9, 0x2

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 93
    .line 94
    .line 95
    move-result-wide v10

    .line 96
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    int-to-long v12, v12

    .line 101
    cmp-long v10, v10, v12

    .line 102
    .line 103
    if-ltz v10, :cond_3

    .line 104
    .line 105
    :try_start_2
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 106
    .line 107
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2, v5, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catchall_2
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    .line 120
    .line 121
    :goto_3
    :try_start_3
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v0, v5, v2}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :catchall_3
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    .line 157
    .line 158
    :goto_4
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 159
    .line 160
    iput v9, v0, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 161
    .line 162
    return-void

    .line 163
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const-string v4, "\u52a0\u8f7d\u6210\u529f"

    .line 172
    .line 173
    const/16 v5, 0xc8

    .line 174
    .line 175
    invoke-static {v0, v5, v4}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :catchall_4
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :goto_5
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 184
    .line 185
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/v;->k:Z

    .line 186
    .line 187
    if-eqz v0, :cond_4

    .line 188
    .line 189
    goto/16 :goto_c

    .line 190
    .line 191
    :cond_4
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 192
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v4

    .line 197
    iput-wide v4, v0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 198
    .line 199
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 200
    .line 201
    const/4 v10, 0x1

    .line 202
    iput v10, v0, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 203
    .line 204
    iget-object v11, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 205
    .line 206
    iget-object v12, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 207
    .line 208
    iget-object v13, v1, Lcom/meishu/sdk/meishu_ad/a0;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 209
    .line 210
    iget-object v14, v1, Lcom/meishu/sdk/meishu_ad/a0;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 211
    .line 212
    iget-object v15, v1, Lcom/meishu/sdk/meishu_ad/a0;->e:Landroid/view/View;

    .line 213
    .line 214
    const/16 v16, 0x1

    .line 215
    .line 216
    invoke-virtual/range {v11 .. v16}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    new-instance v5, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 221
    .line 222
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 223
    .line 224
    iget-object v4, v4, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 225
    .line 226
    invoke-direct {v5, v4, v6}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;Z)V

    .line 227
    .line 228
    .line 229
    if-eqz v6, :cond_6

    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    instance-of v4, v4, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoCahceTextureView;

    .line 236
    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    invoke-virtual {v5, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getMeishuVideoView()Lcom/meishu/sdk/meishu_ad/view/MeishuVideoTextureView;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    check-cast v4, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoCahceTextureView;

    .line 247
    .line 248
    move-object v11, v2

    .line 249
    check-cast v11, Landroid/media/MediaPlayer;

    .line 250
    .line 251
    invoke-virtual {v4, v11}, Lcom/meishu/sdk/meishu_ad/view/MeishuVideoCahceTextureView;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_5
    const-string v0, "AdNative"

    .line 256
    .line 257
    const-string v2, "update MediaPlayer error."

    .line 258
    .line 259
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 263
    .line 264
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/a0;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 265
    .line 266
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 267
    .line 268
    const-string v4, "splash video load error"

    .line 269
    .line 270
    invoke-virtual {v0, v2, v4, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_6
    :goto_6
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 275
    .line 276
    move/from16 v11, p3

    .line 277
    .line 278
    invoke-static {v4, v10, v11}, Lcom/meishu/sdk/core/utils/l1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IZ)V

    .line 279
    .line 280
    .line 281
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 282
    .line 283
    iget v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 284
    .line 285
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setConfigWidth(I)V

    .line 286
    .line 287
    .line 288
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 289
    .line 290
    iget v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 291
    .line 292
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setConfigHeight(I)V

    .line 293
    .line 294
    .line 295
    iget v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->f:I

    .line 296
    .line 297
    int-to-float v4, v4

    .line 298
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    .line 299
    .line 300
    .line 301
    iget v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->g:I

    .line 302
    .line 303
    int-to-float v4, v4

    .line 304
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerHeight(F)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v10}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v5}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->g()V

    .line 311
    .line 312
    .line 313
    iget-boolean v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->h:Z

    .line 314
    .line 315
    if-nez v4, :cond_7

    .line 316
    .line 317
    invoke-virtual {v5}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->j()V

    .line 318
    .line 319
    .line 320
    :cond_7
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 321
    .line 322
    iget v4, v4, Lcom/meishu/sdk/meishu_ad/splash/d;->H:I

    .line 323
    .line 324
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setIsEyes(I)V

    .line 325
    .line 326
    .line 327
    const/4 v11, 0x0

    .line 328
    invoke-virtual {v5, v11}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    .line 329
    .line 330
    .line 331
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-virtual {v4}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_8

    .line 340
    .line 341
    const/16 v4, 0x8

    .line 342
    .line 343
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5, v8}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_8
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 351
    .line 352
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5, v11}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    .line 360
    .line 361
    .line 362
    :goto_7
    new-instance v4, Lcom/meishu/sdk/meishu_ad/a0$a;

    .line 363
    .line 364
    invoke-direct {v4, v1}, Lcom/meishu/sdk/meishu_ad/a0$a;-><init>(Lcom/meishu/sdk/meishu_ad/a0;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setAdListener(Lcom/meishu/sdk/meishu_ad/nativ/a;)V

    .line 368
    .line 369
    .line 370
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->c:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 371
    .line 372
    sget v8, Lcom/meishu/sdk/R$id;->ms_splash_video:I

    .line 373
    .line 374
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 379
    .line 380
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 381
    .line 382
    .line 383
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 384
    .line 385
    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScale_type()I

    .line 386
    .line 387
    .line 388
    move-result v8

    .line 389
    const/4 v12, -0x1

    .line 390
    if-ne v8, v12, :cond_9

    .line 391
    .line 392
    move v8, v9

    .line 393
    :cond_9
    const/16 v13, 0x9

    .line 394
    .line 395
    if-ne v8, v13, :cond_a

    .line 396
    .line 397
    invoke-virtual {v5, v9}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v4, v5, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 401
    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_a
    invoke-virtual {v5, v10}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setDisplayMode(I)V

    .line 405
    .line 406
    .line 407
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 408
    .line 409
    const/4 v9, -0x2

    .line 410
    invoke-direct {v8, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 411
    .line 412
    .line 413
    const/16 v9, 0xd

    .line 414
    .line 415
    invoke-virtual {v8, v9, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    .line 420
    .line 421
    :goto_8
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 422
    .line 423
    iput-object v5, v4, Lcom/meishu/sdk/meishu_ad/splash/c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 424
    .line 425
    invoke-virtual {v5}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->getDuration()I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    int-to-long v8, v4

    .line 430
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-virtual {v4}, Lcom/meishu/sdk/core/MSAdConfig;->getSplashShowTime()J

    .line 435
    .line 436
    .line 437
    move-result-wide v12

    .line 438
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 439
    .line 440
    .line 441
    move-result-wide v8

    .line 442
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 443
    .line 444
    iget v4, v4, Lcom/meishu/sdk/meishu_ad/splash/d;->H:I

    .line 445
    .line 446
    if-eq v4, v10, :cond_b

    .line 447
    .line 448
    long-to-int v4, v8

    .line 449
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->setTotalTime(I)V

    .line 450
    .line 451
    .line 452
    :cond_b
    new-instance v0, Lcom/meishu/sdk/platform/ms/recycler/b;

    .line 453
    .line 454
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 455
    .line 456
    iget-object v4, v4, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 457
    .line 458
    iget-object v4, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 459
    .line 460
    new-instance v8, Lcom/meishu/sdk/meishu_ad/a0$b;

    .line 461
    .line 462
    invoke-direct {v8, v1, v5}, Lcom/meishu/sdk/meishu_ad/a0$b;-><init>(Lcom/meishu/sdk/meishu_ad/a0;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 463
    .line 464
    .line 465
    invoke-direct {v0, v4, v8}, Lcom/meishu/sdk/platform/ms/recycler/b;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 469
    .line 470
    .line 471
    const-string v0, "m3u8"

    .line 472
    .line 473
    if-eqz v7, :cond_c

    .line 474
    .line 475
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    if-nez v4, :cond_d

    .line 484
    .line 485
    :cond_c
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_e

    .line 490
    .line 491
    :cond_d
    invoke-virtual {v5, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    goto :goto_9

    .line 495
    :cond_e
    if-eqz v7, :cond_f

    .line 496
    .line 497
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v5, v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_f
    :goto_9
    :try_start_5
    new-instance v0, Lcom/google/gson/Gson;

    .line 505
    .line 506
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 507
    .line 508
    .line 509
    new-instance v4, Ljava/util/HashMap;

    .line 510
    .line 511
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 512
    .line 513
    .line 514
    const-string v7, "stepNum"

    .line 515
    .line 516
    const/4 v8, 0x3

    .line 517
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    const-string v7, "msg"

    .line 525
    .line 526
    const-string v8, "video succ"

    .line 527
    .line 528
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    const-string v7, "creativeType"

    .line 532
    .line 533
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 534
    .line 535
    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 547
    .line 548
    iget-object v7, v7, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 549
    .line 550
    invoke-virtual {v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-static {v7, v0}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 559
    .line 560
    .line 561
    goto :goto_a

    .line 562
    :catch_0
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 564
    .line 565
    .line 566
    :goto_a
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->j:Landroid/widget/ImageView;

    .line 567
    .line 568
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    .line 570
    .line 571
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 572
    .line 573
    invoke-direct {v4, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 574
    .line 575
    .line 576
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 577
    .line 578
    sget-object v7, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 579
    .line 580
    new-instance v0, Lcom/meishu/sdk/meishu_ad/a0$c;

    .line 581
    .line 582
    invoke-direct/range {v0 .. v5}, Lcom/meishu/sdk/meishu_ad/a0$c;-><init>(Lcom/meishu/sdk/meishu_ad/a0;Ljava/lang/Object;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v7, v0}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 586
    .line 587
    .line 588
    if-eqz v6, :cond_10

    .line 589
    .line 590
    :try_start_6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 591
    .line 592
    const-wide/16 v2, 0x190

    .line 593
    .line 594
    invoke-virtual {v4, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 595
    .line 596
    .line 597
    goto :goto_b

    .line 598
    :catchall_5
    move-exception v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 600
    .line 601
    .line 602
    :cond_10
    :goto_b
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 603
    .line 604
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    .line 605
    .line 606
    if-eq v0, v10, :cond_11

    .line 607
    .line 608
    move v11, v10

    .line 609
    :cond_11
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 610
    .line 611
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 612
    .line 613
    invoke-static {v11, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(ZLcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 614
    .line 615
    .line 616
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 617
    .line 618
    invoke-static {v0, v10}, Lcom/meishu/sdk/meishu_ad/v;->d(Lcom/meishu/sdk/meishu_ad/v;Z)Z

    .line 619
    .line 620
    .line 621
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 622
    .line 623
    invoke-static {v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/d;)V

    .line 624
    .line 625
    .line 626
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 627
    .line 628
    iget v2, v0, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 629
    .line 630
    if-ne v2, v10, :cond_12

    .line 631
    .line 632
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/v;->g:Z

    .line 633
    .line 634
    if-eqz v0, :cond_13

    .line 635
    .line 636
    :cond_12
    invoke-virtual {v5}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V

    .line 637
    .line 638
    .line 639
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 640
    .line 641
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 642
    .line 643
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/a0;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 644
    .line 645
    invoke-virtual {v0, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    .line 646
    .line 647
    .line 648
    :cond_13
    :goto_c
    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "loadVideo onFail. errCode:"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ",errMsg:"

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string p2, "AdNative"

    .line 32
    .line 33
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const p1, 0x895443

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const-string v0, "video \u52a0\u8f7d\u5931\u8d25"

    .line 48
    .line 49
    invoke-static {p2, p1, v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p2, v0

    .line 55
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "video \u52a0\u8f7d\u5931\u8d25 cid:"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p2, p1, v0}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object p1, v0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 99
    .line 100
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 101
    .line 102
    if-ne p1, v1, :cond_0

    .line 103
    .line 104
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 105
    .line 106
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 107
    .line 108
    if-ne p1, v1, :cond_0

    .line 109
    .line 110
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/a0;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 113
    .line 114
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 115
    .line 116
    const-string v1, "video error"

    .line 117
    .line 118
    invoke-virtual {p1, p2, v1, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 123
    .line 124
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/v;->k:Z

    .line 125
    .line 126
    if-eqz p1, :cond_1

    .line 127
    .line 128
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/a0;->l:Lcom/meishu/sdk/meishu_ad/v;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/a0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 132
    .line 133
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/a0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 134
    .line 135
    iget v3, p0, Lcom/meishu/sdk/meishu_ad/a0;->f:I

    .line 136
    .line 137
    iget v4, p0, Lcom/meishu/sdk/meishu_ad/a0;->g:I

    .line 138
    .line 139
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/a0;->d:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 140
    .line 141
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/a0;->e:Landroid/view/View;

    .line 142
    .line 143
    invoke-static/range {v0 .. v6}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;IILcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

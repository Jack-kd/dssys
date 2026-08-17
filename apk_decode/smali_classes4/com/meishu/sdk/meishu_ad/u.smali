.class public Lcom/meishu/sdk/meishu_ad/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/x;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/widget/ImageView;

.field public final synthetic f:I

.field public final synthetic g:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/u;->b:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/u;->d:Landroid/view/View;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput p7, p0, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 14
    .line 15
    iput-object p8, p0, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 16
    .line 17
    iput p9, p0, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 18
    .line 19
    iput p10, p0, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/meishu/sdk/core/domain/HttpResponse;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    iput-wide v3, v2, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 15
    .line 16
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 17
    .line 18
    iget-object v6, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 19
    .line 20
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/u;->b:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 21
    .line 22
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 23
    .line 24
    iget-object v9, v1, Lcom/meishu/sdk/meishu_ad/u;->d:Landroid/view/View;

    .line 25
    .line 26
    const/4 v10, 0x1

    .line 27
    invoke-virtual/range {v5 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 31
    .line 32
    .line 33
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 34
    if-eqz v2, :cond_a

    .line 35
    .line 36
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, [B

    .line 41
    .line 42
    if-eqz v2, :cond_9

    .line 43
    .line 44
    array-length v3, v2

    .line 45
    if-lez v3, :cond_9

    .line 46
    .line 47
    array-length v3, v2

    .line 48
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-lt v3, v4, :cond_0

    .line 53
    .line 54
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 55
    .line 56
    iget-object v6, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 57
    .line 58
    iget-object v7, v5, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 59
    .line 60
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 61
    .line 62
    iget v9, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 63
    .line 64
    iget-object v10, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 65
    .line 66
    iget-object v11, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 67
    .line 68
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget v12, v1, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 74
    .line 75
    iget v13, v1, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 76
    .line 77
    invoke-virtual/range {v5 .. v13}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_0
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/f0;->a([B)Z

    .line 90
    .line 91
    .line 92
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    const-string v4, "\u52a0\u8f7d\u6210\u529f"

    .line 94
    .line 95
    const/16 v5, 0xc8

    .line 96
    .line 97
    const-string v6, "creativeType"

    .line 98
    .line 99
    const-string v7, "msg"

    .line 100
    .line 101
    const-string v8, "stepNum"

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    const/4 v10, 0x1

    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    :try_start_2
    iget-object v11, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 108
    .line 109
    iget-object v13, v11, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 110
    .line 111
    if-eqz v13, :cond_4

    .line 112
    .line 113
    new-instance v3, Lcom/meishu/sdk/meishu_ad/u$a;

    .line 114
    .line 115
    invoke-direct {v3, v1, v2}, Lcom/meishu/sdk/meishu_ad/u$a;-><init>(Lcom/meishu/sdk/meishu_ad/u;[B)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .line 120
    .line 121
    :try_start_3
    new-instance v2, Lcom/google/gson/Gson;

    .line 122
    .line 123
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v3, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v0, "image succ, gif not null"

    .line 135
    .line 136
    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    .line 171
    .line 172
    :goto_0
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 173
    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v2

    .line 178
    iput-wide v2, v0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 179
    .line 180
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 181
    .line 182
    invoke-static {v0, v10, v9}, Lcom/meishu/sdk/core/utils/l1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IZ)V

    .line 183
    .line 184
    .line 185
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 186
    .line 187
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    .line 188
    .line 189
    if-eq v0, v10, :cond_1

    .line 190
    .line 191
    move v9, v10

    .line 192
    :cond_1
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 193
    .line 194
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 195
    .line 196
    invoke-static {v9, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(ZLcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 200
    .line 201
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 202
    .line 203
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 204
    .line 205
    iput-boolean v10, v0, Lcom/meishu/sdk/meishu_ad/v;->h:Z

    .line 206
    .line 207
    iget v6, v0, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 208
    .line 209
    if-ne v6, v10, :cond_2

    .line 210
    .line 211
    iget-boolean v6, v0, Lcom/meishu/sdk/meishu_ad/v;->g:Z

    .line 212
    .line 213
    if-eqz v6, :cond_3

    .line 214
    .line 215
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    .line 217
    .line 218
    :cond_3
    :try_start_5
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v0, v5, v4}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    .line 228
    .line 229
    goto/16 :goto_5

    .line 230
    .line 231
    :catchall_1
    move-exception v0

    .line 232
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_4
    iget-object v12, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 238
    .line 239
    iget-object v14, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 240
    .line 241
    iget v15, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 242
    .line 243
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 244
    .line 245
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 246
    .line 247
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    iget v3, v1, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 253
    .line 254
    iget v4, v1, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 255
    .line 256
    move-object/from16 v16, v0

    .line 257
    .line 258
    move-object/from16 v17, v2

    .line 259
    .line 260
    move/from16 v18, v3

    .line 261
    .line 262
    move/from16 v19, v4

    .line 263
    .line 264
    invoke-virtual/range {v11 .. v19}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_5
    if-eqz p2, :cond_8

    .line 269
    .line 270
    :try_start_7
    new-instance v2, Lcom/google/gson/Gson;

    .line 271
    .line 272
    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 273
    .line 274
    .line 275
    new-instance v3, Ljava/util/HashMap;

    .line 276
    .line 277
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    const-string v0, "image succ,bitmap not null"

    .line 284
    .line 285
    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 302
    .line 303
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 314
    .line 315
    .line 316
    goto :goto_1

    .line 317
    :catch_1
    move-exception v0

    .line 318
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 319
    .line 320
    .line 321
    :goto_1
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 322
    .line 323
    invoke-static {v0, v10, v9}, Lcom/meishu/sdk/core/utils/l1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;IZ)V

    .line 324
    .line 325
    .line 326
    iget-object v11, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 327
    .line 328
    iget v12, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 329
    .line 330
    iget-object v14, v11, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 331
    .line 332
    iget-object v15, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 333
    .line 334
    move-object/from16 v13, p2

    .line 335
    .line 336
    move-object/from16 v16, p3

    .line 337
    .line 338
    invoke-virtual/range {v11 .. v16}, Lcom/meishu/sdk/meishu_ad/v;->a(ILandroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 339
    .line 340
    .line 341
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 342
    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/splash/c;->setWidth(Ljava/lang/Integer;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 355
    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/splash/c;->setHeight(Ljava/lang/Integer;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 368
    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    iput-wide v2, v0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 374
    .line 375
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 376
    .line 377
    invoke-static {v0, v10}, Lcom/meishu/sdk/meishu_ad/v;->d(Lcom/meishu/sdk/meishu_ad/v;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 378
    .line 379
    .line 380
    :try_start_9
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 381
    .line 382
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 383
    .line 384
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0, v5, v4}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 389
    .line 390
    .line 391
    goto :goto_2

    .line 392
    :catchall_2
    move-exception v0

    .line 393
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 394
    .line 395
    .line 396
    :goto_2
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 397
    .line 398
    invoke-static {v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/d;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 402
    .line 403
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/v;->A:I

    .line 404
    .line 405
    if-eq v0, v10, :cond_6

    .line 406
    .line 407
    move v9, v10

    .line 408
    :cond_6
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 409
    .line 410
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 411
    .line 412
    invoke-static {v9, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(ZLcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/c;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 416
    .line 417
    iget v2, v0, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 418
    .line 419
    if-ne v2, v10, :cond_7

    .line 420
    .line 421
    iget-boolean v0, v0, Lcom/meishu/sdk/meishu_ad/v;->g:Z

    .line 422
    .line 423
    if-eqz v0, :cond_b

    .line 424
    .line 425
    :cond_7
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 432
    .line 433
    invoke-virtual {v3}, Lcom/meishu/sdk/meishu_ad/v;->a()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iget-object v0, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 445
    .line 446
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 447
    .line 448
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 449
    .line 450
    invoke-virtual {v0, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    .line 451
    .line 452
    .line 453
    goto/16 :goto_5

    .line 454
    .line 455
    :cond_8
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 456
    .line 457
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 458
    .line 459
    iget-object v4, v2, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 460
    .line 461
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 462
    .line 463
    iget v6, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 464
    .line 465
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 466
    .line 467
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 468
    .line 469
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 470
    .line 471
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    .line 473
    .line 474
    iget v9, v1, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 475
    .line 476
    iget v10, v1, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 477
    .line 478
    invoke-virtual/range {v2 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V

    .line 479
    .line 480
    .line 481
    return-void

    .line 482
    :cond_9
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 483
    .line 484
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 485
    .line 486
    iget-object v4, v2, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 487
    .line 488
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 489
    .line 490
    iget v6, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 491
    .line 492
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 493
    .line 494
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 495
    .line 496
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    iget v9, v1, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 502
    .line 503
    iget v10, v1, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 504
    .line 505
    invoke-virtual/range {v2 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :goto_3
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 510
    .line 511
    .line 512
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 513
    .line 514
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 515
    .line 516
    iget-object v4, v2, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 517
    .line 518
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 519
    .line 520
    iget v6, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 521
    .line 522
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 523
    .line 524
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 525
    .line 526
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    iget v9, v1, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 532
    .line 533
    iget v10, v1, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 534
    .line 535
    invoke-virtual/range {v2 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V

    .line 536
    .line 537
    .line 538
    goto :goto_5

    .line 539
    :catchall_3
    move-exception v0

    .line 540
    goto :goto_4

    .line 541
    :cond_a
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 542
    .line 543
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 544
    .line 545
    iget-object v4, v2, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 546
    .line 547
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 548
    .line 549
    iget v6, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 550
    .line 551
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 552
    .line 553
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 554
    .line 555
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 556
    .line 557
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 558
    .line 559
    .line 560
    iget v9, v1, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 561
    .line 562
    iget v10, v1, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 563
    .line 564
    invoke-virtual/range {v2 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 565
    .line 566
    .line 567
    return-void

    .line 568
    :goto_4
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 569
    .line 570
    iget-object v3, v1, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 571
    .line 572
    iget-object v4, v2, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 573
    .line 574
    iget-object v5, v1, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 575
    .line 576
    iget v6, v1, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 577
    .line 578
    iget-object v7, v1, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 579
    .line 580
    iget-object v8, v1, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 581
    .line 582
    sget-object v9, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 583
    .line 584
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    iget v9, v1, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 588
    .line 589
    iget v10, v1, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 590
    .line 591
    invoke-virtual/range {v2 .. v10}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 595
    .line 596
    .line 597
    :cond_b
    :goto_5
    return-void
.end method

.method public onFailure(Ljava/io/IOException;)V
    .locals 19
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iput-wide v2, v1, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 10
    .line 11
    iget-object v4, v0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 14
    .line 15
    iget-object v6, v0, Lcom/meishu/sdk/meishu_ad/u;->b:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 16
    .line 17
    iget-object v7, v0, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/meishu/sdk/meishu_ad/u;->d:Landroid/view/View;

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    invoke-virtual/range {v4 .. v9}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 23
    .line 24
    .line 25
    iget-object v10, v0, Lcom/meishu/sdk/meishu_ad/u;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 26
    .line 27
    iget-object v11, v0, Lcom/meishu/sdk/meishu_ad/u;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 28
    .line 29
    iget-object v12, v10, Lcom/meishu/sdk/meishu_ad/v;->r:Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 30
    .line 31
    iget-object v13, v0, Lcom/meishu/sdk/meishu_ad/u;->e:Landroid/widget/ImageView;

    .line 32
    .line 33
    iget v14, v0, Lcom/meishu/sdk/meishu_ad/u;->f:I

    .line 34
    .line 35
    iget-object v15, v0, Lcom/meishu/sdk/meishu_ad/u;->g:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/u;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 38
    .line 39
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget v2, v0, Lcom/meishu/sdk/meishu_ad/u;->h:I

    .line 45
    .line 46
    iget v3, v0, Lcom/meishu/sdk/meishu_ad/u;->i:I

    .line 47
    .line 48
    move-object/from16 v16, v1

    .line 49
    .line 50
    move/from16 v17, v2

    .line 51
    .line 52
    move/from16 v18, v3

    .line 53
    .line 54
    invoke-virtual/range {v10 .. v18}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Landroid/widget/ImageView;Landroid/widget/ImageView;ILcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;II)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

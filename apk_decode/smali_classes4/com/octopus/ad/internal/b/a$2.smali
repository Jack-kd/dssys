.class Lcom/octopus/ad/internal/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/a;->a(Landroid/content/Context;Ljava/lang/String;[BZLjava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Z

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Ljava/util/concurrent/CountDownLatch;

.field final synthetic g:Lcom/octopus/ad/internal/b/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/a;Ljava/lang/String;[BZLandroid/content/Context;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/a$2;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/internal/b/a$2;->b:[B

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/octopus/ad/internal/b/a$2;->c:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/octopus/ad/internal/b/a$2;->d:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/octopus/ad/internal/b/a$2;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/octopus/ad/internal/b/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "An Exception Caught"

    .line 4
    .line 5
    const-string v3, "204"

    .line 6
    .line 7
    const-string v4, "OctopusAd"

    .line 8
    .line 9
    const-string v5, "OctopusAd_Time"

    .line 10
    .line 11
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    const/4 v8, 0x0

    .line 16
    :try_start_0
    const-string v9, "OctopusGroup"

    .line 17
    .line 18
    iget-object v10, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 19
    .line 20
    invoke-static {v10}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    invoke-virtual {v10}, Lcom/octopus/ad/internal/d;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    if-nez v9, :cond_0

    .line 33
    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "&v=1"

    .line 43
    .line 44
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object v5, v0

    .line 54
    move-object v9, v8

    .line 55
    move-object v10, v9

    .line 56
    :goto_0
    move-object v11, v10

    .line 57
    goto/16 :goto_14

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    move-object v9, v8

    .line 61
    move-object v10, v9

    .line 62
    :goto_1
    move-object/from16 v16, v10

    .line 63
    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :cond_0
    :goto_2
    iget-object v9, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 67
    .line 68
    new-instance v10, Ljava/net/URL;

    .line 69
    .line 70
    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v9, v10}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 74
    .line 75
    .line 76
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 78
    .line 79
    iget-object v10, v1, Lcom/octopus/ad/internal/b/a$2;->b:[B

    .line 80
    .line 81
    invoke-static {v0, v9, v10}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;Ljava/net/HttpURLConnection;[B)Ljava/io/OutputStream;

    .line 82
    .line 83
    .line 84
    move-result-object v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 85
    :try_start_2
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v11, "\u8fde\u63a5\u670d\u52a1\u5668\u8017\u65f6"

    .line 94
    .line 95
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v11

    .line 102
    iget-object v13, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 103
    .line 104
    invoke-static {v13}, Lcom/octopus/ad/internal/b/a;->c(Lcom/octopus/ad/internal/b/a;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v13

    .line 108
    sub-long/2addr v11, v13

    .line 109
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v5, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 120
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v11

    .line 125
    invoke-static {v0, v11, v12}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;J)J

    .line 126
    .line 127
    .line 128
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 129
    .line 130
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    invoke-static {v0, v11}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/a;I)I

    .line 135
    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v11, "\u83b7\u53d6\u72b6\u6001\u7801\u8017\u65f6"

    .line 143
    .line 144
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 148
    .line 149
    .line 150
    move-result-wide v11

    .line 151
    iget-object v13, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 152
    .line 153
    invoke-static {v13}, Lcom/octopus/ad/internal/b/a;->c(Lcom/octopus/ad/internal/b/a;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v13

    .line 157
    sub-long/2addr v11, v13

    .line 158
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v5, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 169
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide v11

    .line 174
    invoke-static {v0, v11, v12}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;J)J

    .line 175
    .line 176
    .line 177
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->d(Lcom/octopus/ad/internal/b/a;)I

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    invoke-static {v0, v11}, Lcom/octopus/ad/internal/b/a;->c(Lcom/octopus/ad/internal/b/a;I)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_1

    .line 188
    .line 189
    invoke-static {}, Lcom/octopus/ad/internal/b/a;->b()Lcom/octopus/ad/internal/b/f;

    .line 190
    .line 191
    .line 192
    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 193
    :try_start_3
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 194
    .line 195
    new-instance v12, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    const-string v13, "responseCode:"

    .line 201
    .line 202
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v13, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 206
    .line 207
    invoke-static {v13}, Lcom/octopus/ad/internal/b/a;->d(Lcom/octopus/ad/internal/b/a;)I

    .line 208
    .line 209
    .line 210
    move-result v13

    .line 211
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-static {v0, v6, v12}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .line 220
    .line 221
    goto/16 :goto_c

    .line 222
    .line 223
    :catchall_1
    move-exception v0

    .line 224
    move-object v5, v11

    .line 225
    :goto_3
    move-object v11, v8

    .line 226
    move-object v8, v5

    .line 227
    :goto_4
    move-object v5, v0

    .line 228
    goto/16 :goto_14

    .line 229
    .line 230
    :catch_1
    move-exception v0

    .line 231
    move-object/from16 v16, v11

    .line 232
    .line 233
    goto/16 :goto_10

    .line 234
    .line 235
    :catchall_2
    move-exception v0

    .line 236
    move-object v5, v0

    .line 237
    move-object v11, v8

    .line 238
    goto/16 :goto_14

    .line 239
    .line 240
    :catch_2
    move-exception v0

    .line 241
    move-object/from16 v16, v8

    .line 242
    .line 243
    goto/16 :goto_10

    .line 244
    .line 245
    :cond_1
    :try_start_4
    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentLength()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_2

    .line 250
    .line 251
    sget-object v0, Lcom/octopus/ad/internal/c/f;->e:Ljava/lang/String;

    .line 252
    .line 253
    sget v11, Lcom/octopus/ad/R$string;->response_blank:I

    .line 254
    .line 255
    invoke-static {v11}, Lcom/octopus/ad/internal/c/f;->a(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    invoke-static {v0, v11}, Lcom/octopus/ad/internal/c/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lcom/octopus/ad/internal/b/a;->b()Lcom/octopus/ad/internal/b/f;

    .line 263
    .line 264
    .line 265
    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 266
    :try_start_5
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 267
    .line 268
    const-string v12, "response is empty"

    .line 269
    .line 270
    invoke-static {v0, v6, v12}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 271
    .line 272
    .line 273
    goto/16 :goto_c

    .line 274
    .line 275
    :cond_2
    :try_start_6
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 276
    .line 277
    .line 278
    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 279
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v12, "reqId: "

    .line 285
    .line 286
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget-object v12, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 290
    .line 291
    invoke-static {v12}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/a;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v5, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 306
    .line 307
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 316
    .line 317
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/a;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v13

    .line 321
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 322
    .line 323
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->h()J

    .line 328
    .line 329
    .line 330
    move-result-wide v14

    .line 331
    iget-boolean v0, v1, Lcom/octopus/ad/internal/b/a$2;->c:Z

    .line 332
    .line 333
    move/from16 v16, v0

    .line 334
    .line 335
    invoke-static/range {v11 .. v16}, Lcom/octopus/ad/a/c$u;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JZ)Lcom/octopus/ad/a/c$u;

    .line 336
    .line 337
    .line 338
    move-result-object v17

    .line 339
    const-string v0, "0"

    .line 340
    .line 341
    iget-boolean v12, v1, Lcom/octopus/ad/internal/b/a$2;->c:Z

    .line 342
    .line 343
    if-nez v12, :cond_3

    .line 344
    .line 345
    invoke-virtual/range {v17 .. v17}, Lcom/octopus/ad/a/c$u;->c()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    :cond_3
    move-object/from16 v21, v0

    .line 350
    .line 351
    goto :goto_6

    .line 352
    :catchall_3
    move-exception v0

    .line 353
    goto :goto_4

    .line 354
    :catch_3
    move-exception v0

    .line 355
    move-object/from16 v16, v8

    .line 356
    .line 357
    :goto_5
    move-object v8, v11

    .line 358
    goto/16 :goto_10

    .line 359
    .line 360
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    const-string v12, "isPreload_"

    .line 366
    .line 367
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget-object v12, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 371
    .line 372
    invoke-static {v12}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 373
    .line 374
    .line 375
    move-result-object v12

    .line 376
    invoke-virtual {v12}, Lcom/octopus/ad/internal/d;->c()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v12

    .line 380
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual/range {v17 .. v17}, Lcom/octopus/ad/a/c$u;->d()Z

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    if-eqz v12, :cond_4

    .line 392
    .line 393
    iget-object v12, v1, Lcom/octopus/ad/internal/b/a$2;->d:Landroid/content/Context;

    .line 394
    .line 395
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 396
    .line 397
    invoke-static {v12, v0, v13}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_4
    iget-object v12, v1, Lcom/octopus/ad/internal/b/a$2;->d:Landroid/content/Context;

    .line 402
    .line 403
    invoke-static {v12, v0}, Lcom/octopus/ad/internal/c/o;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    .line 411
    const-string v12, "\u89e3\u6790\u54cd\u5e94\u53c2\u6570\u8017\u65f6"

    .line 412
    .line 413
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 417
    .line 418
    .line 419
    move-result-wide v12

    .line 420
    iget-object v14, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 421
    .line 422
    invoke-static {v14}, Lcom/octopus/ad/internal/b/a;->c(Lcom/octopus/ad/internal/b/a;)J

    .line 423
    .line 424
    .line 425
    move-result-wide v14

    .line 426
    sub-long/2addr v12, v14

    .line 427
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v5, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 438
    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 440
    .line 441
    .line 442
    move-result-wide v12

    .line 443
    invoke-static {v0, v12, v13}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;J)J

    .line 444
    .line 445
    .line 446
    new-instance v16, Lcom/octopus/ad/internal/b/f;

    .line 447
    .line 448
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 449
    .line 450
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 451
    .line 452
    .line 453
    move-result-object v18

    .line 454
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 455
    .line 456
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;)Lcom/octopus/ad/internal/d;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/octopus/ad/internal/d;->q()Lcom/octopus/ad/internal/p;

    .line 461
    .line 462
    .line 463
    move-result-object v19

    .line 464
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 465
    .line 466
    invoke-static {v0}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/a;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v20

    .line 470
    invoke-direct/range {v16 .. v21}, Lcom/octopus/ad/internal/b/f;-><init>(Lcom/octopus/ad/a/c$u;Lcom/octopus/ad/internal/d;Lcom/octopus/ad/internal/p;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 471
    .line 472
    .line 473
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    const-string v8, "\u521b\u5efaServerResponse\u8017\u65f6"

    .line 479
    .line 480
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 484
    .line 485
    .line 486
    move-result-wide v12

    .line 487
    iget-object v8, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 488
    .line 489
    invoke-static {v8}, Lcom/octopus/ad/internal/b/a;->c(Lcom/octopus/ad/internal/b/a;)J

    .line 490
    .line 491
    .line 492
    move-result-wide v14

    .line 493
    sub-long/2addr v12, v14

    .line 494
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-static {v5, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 502
    .line 503
    .line 504
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Lcom/octopus/ad/a/c$u;->g()Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-eqz v0, :cond_5

    .line 509
    .line 510
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->d()V

    .line 515
    .line 516
    .line 517
    goto :goto_9

    .line 518
    :catchall_4
    move-exception v0

    .line 519
    move-object v5, v0

    .line 520
    :goto_8
    move-object/from16 v8, v16

    .line 521
    .line 522
    goto/16 :goto_14

    .line 523
    .line 524
    :catch_4
    move-exception v0

    .line 525
    goto :goto_a

    .line 526
    :cond_5
    :goto_9
    invoke-virtual/range {v17 .. v17}, Lcom/octopus/ad/a/c$u;->h()Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_6

    .line 531
    .line 532
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual/range {v16 .. v16}, Lcom/octopus/ad/internal/b/f;->ag()I

    .line 537
    .line 538
    .line 539
    move-result v8

    .line 540
    invoke-virtual {v0, v8}, Lcom/octopus/ad/internal/q;->a(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 541
    .line 542
    .line 543
    goto :goto_b

    .line 544
    :goto_a
    :try_start_a
    new-instance v8, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    const-string v12, "Catch An Exception: "

    .line 550
    .line 551
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v4, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 566
    .line 567
    .line 568
    :cond_6
    :goto_b
    move-object v8, v11

    .line 569
    move-object/from16 v11, v16

    .line 570
    .line 571
    :goto_c
    :try_start_b
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->e:Ljava/util/ArrayList;

    .line 572
    .line 573
    if-eqz v0, :cond_8

    .line 574
    .line 575
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    .line 576
    .line 577
    if-eqz v0, :cond_8

    .line 578
    .line 579
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    iget v0, v0, Lcom/octopus/ad/internal/q;->d:I

    .line 584
    .line 585
    if-ne v0, v7, :cond_7

    .line 586
    .line 587
    if-eqz v11, :cond_7

    .line 588
    .line 589
    invoke-static {}, Lcom/octopus/ad/internal/b/a;->b()Lcom/octopus/ad/internal/b/f;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    if-eq v11, v0, :cond_7

    .line 594
    .line 595
    invoke-virtual {v11}, Lcom/octopus/ad/internal/b/f;->i()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-nez v0, :cond_7

    .line 604
    .line 605
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 606
    .line 607
    invoke-virtual {v0, v11}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 608
    .line 609
    .line 610
    goto :goto_d

    .line 611
    :catch_5
    move-exception v0

    .line 612
    goto :goto_f

    .line 613
    :cond_7
    :goto_d
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->e:Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 621
    .line 622
    .line 623
    goto :goto_e

    .line 624
    :cond_8
    iget-boolean v0, v1, Lcom/octopus/ad/internal/b/a$2;->c:Z

    .line 625
    .line 626
    if-nez v0, :cond_9

    .line 627
    .line 628
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 629
    .line 630
    invoke-virtual {v0, v11}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 631
    .line 632
    .line 633
    :cond_9
    :goto_e
    if-eqz v8, :cond_a

    .line 634
    .line 635
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 636
    .line 637
    .line 638
    :cond_a
    if-eqz v10, :cond_b

    .line 639
    .line 640
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 641
    .line 642
    .line 643
    :cond_b
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 644
    .line 645
    .line 646
    goto/16 :goto_13

    .line 647
    .line 648
    :goto_f
    invoke-static {v4, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    .line 650
    .line 651
    goto/16 :goto_13

    .line 652
    .line 653
    :catch_6
    move-exception v0

    .line 654
    goto/16 :goto_5

    .line 655
    .line 656
    :catchall_5
    move-exception v0

    .line 657
    move-object v5, v0

    .line 658
    move-object v10, v8

    .line 659
    goto/16 :goto_0

    .line 660
    .line 661
    :catch_7
    move-exception v0

    .line 662
    move-object v10, v8

    .line 663
    goto/16 :goto_1

    .line 664
    .line 665
    :goto_10
    :try_start_c
    iget-object v11, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 666
    .line 667
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v12

    .line 671
    if-eqz v12, :cond_c

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v12

    .line 677
    const-string v13, "Unable to resolve host"

    .line 678
    .line 679
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 680
    .line 681
    .line 682
    move-result v12

    .line 683
    if-eqz v12, :cond_c

    .line 684
    .line 685
    move v6, v7

    .line 686
    goto :goto_11

    .line 687
    :catchall_6
    move-exception v0

    .line 688
    move-object v5, v0

    .line 689
    move-object v11, v8

    .line 690
    goto/16 :goto_8

    .line 691
    .line 692
    :cond_c
    :goto_11
    invoke-static {v11, v6}, Lcom/octopus/ad/internal/b/a;->b(Lcom/octopus/ad/internal/b/a;Z)Z

    .line 693
    .line 694
    .line 695
    new-instance v6, Ljava/lang/StringBuilder;

    .line 696
    .line 697
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .line 699
    .line 700
    const-string v11, "\u53c2\u6570\u5c01\u88c5\u6216\u5e7f\u544a\u8bf7\u6c42\u62a5\u9519"

    .line 701
    .line 702
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v6

    .line 712
    invoke-static {v5, v6}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    iget-object v5, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 716
    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 718
    .line 719
    .line 720
    move-result-wide v11

    .line 721
    invoke-static {v5, v11, v12}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;J)J

    .line 722
    .line 723
    .line 724
    invoke-static {}, Lcom/octopus/ad/internal/b/a;->b()Lcom/octopus/ad/internal/b/f;

    .line 725
    .line 726
    .line 727
    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 728
    :try_start_d
    iget-object v6, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    invoke-static {v6, v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/a;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 735
    .line 736
    .line 737
    :try_start_e
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->e:Ljava/util/ArrayList;

    .line 738
    .line 739
    if-eqz v0, :cond_e

    .line 740
    .line 741
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    .line 742
    .line 743
    if-eqz v0, :cond_e

    .line 744
    .line 745
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    iget v0, v0, Lcom/octopus/ad/internal/q;->d:I

    .line 750
    .line 751
    if-ne v0, v7, :cond_d

    .line 752
    .line 753
    if-eqz v5, :cond_d

    .line 754
    .line 755
    invoke-static {}, Lcom/octopus/ad/internal/b/a;->b()Lcom/octopus/ad/internal/b/f;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    if-eq v5, v0, :cond_d

    .line 760
    .line 761
    invoke-virtual {v5}, Lcom/octopus/ad/internal/b/f;->i()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    if-nez v0, :cond_d

    .line 770
    .line 771
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 772
    .line 773
    invoke-virtual {v0, v5}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 774
    .line 775
    .line 776
    :cond_d
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->e:Ljava/util/ArrayList;

    .line 777
    .line 778
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 784
    .line 785
    .line 786
    goto :goto_12

    .line 787
    :cond_e
    iget-boolean v0, v1, Lcom/octopus/ad/internal/b/a$2;->c:Z

    .line 788
    .line 789
    if-nez v0, :cond_f

    .line 790
    .line 791
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 792
    .line 793
    invoke-virtual {v0, v5}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 794
    .line 795
    .line 796
    :cond_f
    :goto_12
    if-eqz v8, :cond_10

    .line 797
    .line 798
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 799
    .line 800
    .line 801
    :cond_10
    if-eqz v10, :cond_11

    .line 802
    .line 803
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 804
    .line 805
    .line 806
    :cond_11
    if-eqz v9, :cond_12

    .line 807
    .line 808
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 809
    .line 810
    .line 811
    :cond_12
    :goto_13
    return-void

    .line 812
    :catchall_7
    move-exception v0

    .line 813
    goto/16 :goto_3

    .line 814
    .line 815
    :goto_14
    :try_start_f
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->e:Ljava/util/ArrayList;

    .line 816
    .line 817
    if-eqz v0, :cond_14

    .line 818
    .line 819
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    .line 820
    .line 821
    if-eqz v0, :cond_14

    .line 822
    .line 823
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    iget v0, v0, Lcom/octopus/ad/internal/q;->d:I

    .line 828
    .line 829
    if-ne v0, v7, :cond_13

    .line 830
    .line 831
    if-eqz v8, :cond_13

    .line 832
    .line 833
    invoke-static {}, Lcom/octopus/ad/internal/b/a;->b()Lcom/octopus/ad/internal/b/f;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    if-eq v8, v0, :cond_13

    .line 838
    .line 839
    invoke-virtual {v8}, Lcom/octopus/ad/internal/b/f;->i()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    if-nez v0, :cond_13

    .line 848
    .line 849
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 850
    .line 851
    invoke-virtual {v0, v8}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 852
    .line 853
    .line 854
    goto :goto_15

    .line 855
    :catch_8
    move-exception v0

    .line 856
    goto :goto_17

    .line 857
    :cond_13
    :goto_15
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->e:Ljava/util/ArrayList;

    .line 858
    .line 859
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->f:Ljava/util/concurrent/CountDownLatch;

    .line 863
    .line 864
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 865
    .line 866
    .line 867
    goto :goto_16

    .line 868
    :cond_14
    iget-boolean v0, v1, Lcom/octopus/ad/internal/b/a$2;->c:Z

    .line 869
    .line 870
    if-nez v0, :cond_15

    .line 871
    .line 872
    iget-object v0, v1, Lcom/octopus/ad/internal/b/a$2;->g:Lcom/octopus/ad/internal/b/a;

    .line 873
    .line 874
    invoke-virtual {v0, v8}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 875
    .line 876
    .line 877
    :cond_15
    :goto_16
    if-eqz v11, :cond_16

    .line 878
    .line 879
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 880
    .line 881
    .line 882
    :cond_16
    if-eqz v10, :cond_17

    .line 883
    .line 884
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 885
    .line 886
    .line 887
    :cond_17
    if-eqz v9, :cond_18

    .line 888
    .line 889
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 890
    .line 891
    .line 892
    goto :goto_18

    .line 893
    :goto_17
    invoke-static {v4, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 894
    .line 895
    .line 896
    :cond_18
    :goto_18
    throw v5
.end method

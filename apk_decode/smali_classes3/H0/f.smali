.class public LH0/f;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements LH0/h;


# instance fields
.field public final b:LH0/b;

.field public final c:LH0/a;

.field public volatile d:I

.field public volatile e:I

.field public volatile f:J

.field public volatile g:Z

.field public volatile h:I

.field public i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(LH0/b;LH0/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LH0/f;->d:I

    .line 6
    .line 7
    iput v0, p0, LH0/f;->e:I

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, p0, LH0/f;->f:J

    .line 12
    .line 13
    iput-boolean v0, p0, LH0/f;->g:Z

    .line 14
    .line 15
    iput v0, p0, LH0/f;->h:I

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, LH0/f;->i:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    iput-object p1, p0, LH0/f;->b:LH0/b;

    .line 26
    .line 27
    iput-object p2, p0, LH0/f;->c:LH0/a;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(LH0/f;Ljava/io/File;LI0/b;Ljava/lang/String;LI0/a;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 9

    .line 1
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    .line 2
    .line 3
    iget-boolean v1, p0, LH0/f;->g:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, LH0/f;->i:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, LI0/b;->f()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    new-instance v1, Ljava/io/File;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, LI0/b;->d()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v2, 0x0

    .line 77
    if-nez p1, :cond_12

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    :try_start_1
    new-instance v3, Ljava/net/URL;

    .line 81
    .line 82
    invoke-virtual {p2, p3}, LI0/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    check-cast p3, Ljava/net/HttpURLConnection;

    .line 98
    .line 99
    iget-object v3, p0, LH0/f;->b:LH0/b;

    .line 100
    .line 101
    invoke-virtual {v3}, LH0/b;->b()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {p3, v3}, LJ0/b;->e(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/16 v3, 0x3a98

    .line 109
    .line 110
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    const/16 v5, 0x12e

    .line 121
    .line 122
    const/4 v6, -0x1

    .line 123
    const/16 v7, 0x400

    .line 124
    .line 125
    const/16 v8, 0xc8

    .line 126
    .line 127
    if-eq v4, v5, :cond_6

    .line 128
    .line 129
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    const/16 v5, 0x12d

    .line 134
    .line 135
    if-ne v4, v5, :cond_1

    .line 136
    .line 137
    goto/16 :goto_4

    .line 138
    .line 139
    :cond_1
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-ne v3, v8, :cond_5

    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 146
    .line 147
    .line 148
    move-result-object p3
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 149
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    .line 150
    .line 151
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    .line 153
    .line 154
    :try_start_3
    new-array v4, v7, [B

    .line 155
    .line 156
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 157
    .line 158
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .line 160
    .line 161
    :goto_1
    invoke-virtual {p3, v4}, Ljava/io/InputStream;->read([B)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eq v7, v6, :cond_2

    .line 166
    .line 167
    invoke-virtual {v5, v4, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    :goto_2
    move-object p1, p3

    .line 173
    goto/16 :goto_12

    .line 174
    .line 175
    :catch_1
    move-exception p1

    .line 176
    goto/16 :goto_b

    .line 177
    .line 178
    :catch_2
    move-exception p1

    .line 179
    goto/16 :goto_d

    .line 180
    .line 181
    :catch_3
    move-exception p1

    .line 182
    goto/16 :goto_f

    .line 183
    .line 184
    :cond_2
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-nez v4, :cond_3

    .line 193
    .line 194
    invoke-virtual {p4}, LI0/a;->d()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_3

    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {p4}, LI0/a;->d()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p4

    .line 216
    invoke-static {p1, v4, p4}, LJ0/a;->a([BLjava/lang/String;Ljava/lang/String;)[B

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_3
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    if-nez v4, :cond_4

    .line 233
    .line 234
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p4

    .line 242
    invoke-static {v4, p4, p1}, LJ0/a;->a([BLjava/lang/String;Ljava/lang/String;)[B

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .line 256
    .line 257
    :goto_3
    move-object p1, p3

    .line 258
    goto/16 :goto_8

    .line 259
    .line 260
    :catchall_1
    move-exception p0

    .line 261
    move-object v3, p1

    .line 262
    goto :goto_2

    .line 263
    :catch_4
    move-exception p4

    .line 264
    move-object v3, p1

    .line 265
    move-object p1, p4

    .line 266
    goto/16 :goto_b

    .line 267
    .line 268
    :catch_5
    move-exception p4

    .line 269
    move-object v3, p1

    .line 270
    move-object p1, p4

    .line 271
    goto/16 :goto_d

    .line 272
    .line 273
    :catch_6
    move-exception p4

    .line 274
    move-object v3, p1

    .line 275
    move-object p1, p4

    .line 276
    goto/16 :goto_f

    .line 277
    .line 278
    :catchall_2
    move-exception p0

    .line 279
    move-object v3, p1

    .line 280
    goto/16 :goto_12

    .line 281
    .line 282
    :catch_7
    move-exception p3

    .line 283
    move-object v3, p1

    .line 284
    move-object p1, p3

    .line 285
    move-object p3, v3

    .line 286
    goto/16 :goto_b

    .line 287
    .line 288
    :catch_8
    move-exception p3

    .line 289
    move-object v3, p1

    .line 290
    move-object p1, p3

    .line 291
    move-object p3, v3

    .line 292
    goto/16 :goto_d

    .line 293
    .line 294
    :catch_9
    move-exception p3

    .line 295
    move-object v3, p1

    .line 296
    move-object p1, p3

    .line 297
    move-object p3, v3

    .line 298
    goto/16 :goto_f

    .line 299
    .line 300
    :cond_5
    :try_start_4
    iget-object p3, p0, LH0/f;->c:LH0/a;

    .line 301
    .line 302
    iget-object p4, p0, LH0/f;->b:LH0/b;

    .line 303
    .line 304
    invoke-virtual {p4}, LH0/b;->a()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p4

    .line 308
    invoke-interface {p3, p4, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    move-object v3, p1

    .line 312
    goto/16 :goto_8

    .line 313
    .line 314
    :cond_6
    :goto_4
    const-string v4, "Location"

    .line 315
    .line 316
    invoke-virtual {p3, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p3

    .line 320
    new-instance v4, Ljava/net/URL;

    .line 321
    .line 322
    invoke-direct {v4, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 326
    .line 327
    .line 328
    move-result-object p3

    .line 329
    check-cast p3, Ljava/net/HttpURLConnection;

    .line 330
    .line 331
    iget-object v4, p0, LH0/f;->b:LH0/b;

    .line 332
    .line 333
    invoke-virtual {v4}, LH0/b;->b()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-static {p3, v4}, LJ0/b;->e(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p3, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-ne v3, v8, :cond_a

    .line 351
    .line 352
    invoke-virtual {p3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 353
    .line 354
    .line 355
    move-result-object p3
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 356
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    .line 357
    .line 358
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 359
    .line 360
    .line 361
    :try_start_6
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 362
    .line 363
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 364
    .line 365
    .line 366
    new-array v5, v7, [B

    .line 367
    .line 368
    :goto_5
    invoke-virtual {p3, v5}, Ljava/io/InputStream;->read([B)I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-eq v7, v6, :cond_7

    .line 373
    .line 374
    invoke-virtual {v4, v5, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 375
    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_7
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v5

    .line 382
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-nez v5, :cond_8

    .line 387
    .line 388
    invoke-virtual {p4}, LI0/a;->d()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v5

    .line 392
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-nez v5, :cond_8

    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {p4}, LI0/a;->d()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object p4

    .line 410
    invoke-static {p1, v4, p4}, LJ0/a;->a([BLjava/lang/String;Ljava/lang/String;)[B

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 415
    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_8
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-nez v5, :cond_9

    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    invoke-virtual {p4}, LI0/a;->e()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p4

    .line 436
    invoke-static {v4, p4, p1}, LJ0/a;->a([BLjava/lang/String;Ljava/lang/String;)[B

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 441
    .line 442
    .line 443
    goto :goto_6

    .line 444
    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 449
    .line 450
    .line 451
    :goto_6
    move-object p1, v3

    .line 452
    goto :goto_7

    .line 453
    :cond_a
    :try_start_7
    iget-object p3, p0, LH0/f;->c:LH0/a;

    .line 454
    .line 455
    iget-object p4, p0, LH0/f;->b:LH0/b;

    .line 456
    .line 457
    invoke-virtual {p4}, LH0/b;->a()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p4

    .line 461
    invoke-interface {p3, p4, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 462
    .line 463
    .line 464
    move-object p3, p1

    .line 465
    :goto_7
    move-object v3, p1

    .line 466
    goto/16 :goto_3

    .line 467
    .line 468
    :goto_8
    if-eqz p1, :cond_b

    .line 469
    .line 470
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 471
    .line 472
    .line 473
    goto :goto_9

    .line 474
    :catch_a
    move-exception p1

    .line 475
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    .line 477
    .line 478
    :cond_b
    :goto_9
    if-eqz v3, :cond_f

    .line 479
    .line 480
    :goto_a
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    .line 481
    .line 482
    .line 483
    goto :goto_11

    .line 484
    :catch_b
    move-exception p1

    .line 485
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 486
    .line 487
    .line 488
    goto :goto_11

    .line 489
    :goto_b
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 490
    .line 491
    .line 492
    iget-object p1, p0, LH0/f;->c:LH0/a;

    .line 493
    .line 494
    iget-object p4, p0, LH0/f;->b:LH0/b;

    .line 495
    .line 496
    invoke-virtual {p4}, LH0/b;->a()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p4

    .line 500
    invoke-interface {p1, p4, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 501
    .line 502
    .line 503
    if-eqz p3, :cond_c

    .line 504
    .line 505
    :try_start_b
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    .line 506
    .line 507
    .line 508
    goto :goto_c

    .line 509
    :catch_c
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    .line 512
    .line 513
    :cond_c
    :goto_c
    if-eqz v3, :cond_f

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :goto_d
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 517
    .line 518
    .line 519
    iget-object p1, p0, LH0/f;->c:LH0/a;

    .line 520
    .line 521
    iget-object p4, p0, LH0/f;->b:LH0/b;

    .line 522
    .line 523
    invoke-virtual {p4}, LH0/b;->a()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p4

    .line 527
    invoke-interface {p1, p4, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 528
    .line 529
    .line 530
    if-eqz p3, :cond_d

    .line 531
    .line 532
    :try_start_d
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 533
    .line 534
    .line 535
    goto :goto_e

    .line 536
    :catch_d
    move-exception p1

    .line 537
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 538
    .line 539
    .line 540
    :cond_d
    :goto_e
    if-eqz v3, :cond_f

    .line 541
    .line 542
    goto :goto_a

    .line 543
    :goto_f
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 544
    .line 545
    .line 546
    iget-object p1, p0, LH0/f;->c:LH0/a;

    .line 547
    .line 548
    iget-object p4, p0, LH0/f;->b:LH0/b;

    .line 549
    .line 550
    invoke-virtual {p4}, LH0/b;->a()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p4

    .line 554
    invoke-interface {p1, p4, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 555
    .line 556
    .line 557
    if-eqz p3, :cond_e

    .line 558
    .line 559
    :try_start_f
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 560
    .line 561
    .line 562
    goto :goto_10

    .line 563
    :catch_e
    move-exception p1

    .line 564
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 565
    .line 566
    .line 567
    :cond_e
    :goto_10
    if-eqz v3, :cond_f

    .line 568
    .line 569
    goto :goto_a

    .line 570
    :cond_f
    :goto_11
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 571
    .line 572
    .line 573
    move-result-wide p3

    .line 574
    iput-wide p3, p0, LH0/f;->f:J

    .line 575
    .line 576
    iget-wide p3, p0, LH0/f;->f:J

    .line 577
    .line 578
    invoke-virtual {p2, p3, p4}, LI0/b;->h(J)V

    .line 579
    .line 580
    .line 581
    iget p1, p0, LH0/f;->d:I

    .line 582
    .line 583
    add-int/lit8 p1, p1, 0x1

    .line 584
    .line 585
    iput p1, p0, LH0/f;->d:I

    .line 586
    .line 587
    goto :goto_15

    .line 588
    :goto_12
    if-eqz p1, :cond_10

    .line 589
    .line 590
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 591
    .line 592
    .line 593
    goto :goto_13

    .line 594
    :catch_f
    move-exception p1

    .line 595
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 596
    .line 597
    .line 598
    :cond_10
    :goto_13
    if-eqz v3, :cond_11

    .line 599
    .line 600
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 601
    .line 602
    .line 603
    goto :goto_14

    .line 604
    :catch_10
    move-exception p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 606
    .line 607
    .line 608
    :cond_11
    :goto_14
    throw p0

    .line 609
    :cond_12
    iget p1, p0, LH0/f;->d:I

    .line 610
    .line 611
    add-int/lit8 p1, p1, 0x1

    .line 612
    .line 613
    iput p1, p0, LH0/f;->d:I

    .line 614
    .line 615
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 616
    .line 617
    .line 618
    move-result-wide p3

    .line 619
    iput-wide p3, p0, LH0/f;->f:J

    .line 620
    .line 621
    iget-wide p3, p0, LH0/f;->f:J

    .line 622
    .line 623
    invoke-virtual {p2, p3, p4}, LI0/b;->h(J)V

    .line 624
    .line 625
    .line 626
    :goto_15
    iget p1, p0, LH0/f;->d:I

    .line 627
    .line 628
    int-to-float p1, p1

    .line 629
    const/high16 p2, 0x3f800000    # 1.0f

    .line 630
    .line 631
    mul-float/2addr p1, p2

    .line 632
    iget p2, p0, LH0/f;->e:I

    .line 633
    .line 634
    int-to-float p2, p2

    .line 635
    div-float/2addr p1, p2

    .line 636
    const/high16 p2, 0x42c80000    # 100.0f

    .line 637
    .line 638
    mul-float/2addr p1, p2

    .line 639
    float-to-int p1, p1

    .line 640
    iget-boolean p2, p0, LH0/f;->g:Z

    .line 641
    .line 642
    if-nez p2, :cond_13

    .line 643
    .line 644
    const/16 p2, 0x64

    .line 645
    .line 646
    if-eq p1, p2, :cond_13

    .line 647
    .line 648
    if-lez p1, :cond_13

    .line 649
    .line 650
    iget p2, p0, LH0/f;->h:I

    .line 651
    .line 652
    if-eq p2, p1, :cond_13

    .line 653
    .line 654
    iput p1, p0, LH0/f;->h:I

    .line 655
    .line 656
    aget-wide p2, p5, v2

    .line 657
    .line 658
    iget-wide v0, p0, LH0/f;->f:J

    .line 659
    .line 660
    add-long/2addr p2, v0

    .line 661
    aput-wide p2, p5, v2

    .line 662
    .line 663
    iget-object p2, p0, LH0/f;->c:LH0/a;

    .line 664
    .line 665
    iget-object p0, p0, LH0/f;->b:LH0/b;

    .line 666
    .line 667
    invoke-virtual {p0}, LH0/b;->d()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object p0

    .line 671
    aget-wide p3, p5, v2

    .line 672
    .line 673
    invoke-interface {p2, p0, p1, p3, p4}, LH0/a;->a(Ljava/lang/String;IJ)V

    .line 674
    .line 675
    .line 676
    :cond_13
    invoke-virtual {p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 677
    .line 678
    .line 679
    return-void
.end method

.method public static b(LH0/b;)LH0/h;
    .locals 2

    .line 1
    new-instance v0, LH0/f;

    .line 2
    .line 3
    new-instance v1, LH0/f$a;

    .line 4
    .line 5
    invoke-direct {v1}, LH0/f$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, LH0/f;-><init>(LH0/b;LH0/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/util/concurrent/CountDownLatch;LI0/a;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25: "

    .line 2
    .line 3
    new-instance v4, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, LI0/a;->e()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p2}, LI0/a;->e()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p3, "key.key"

    .line 45
    .line 46
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {v0, p3}, LJ0/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move-object p3, v0

    .line 59
    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    move-object p3, v0

    .line 62
    goto :goto_1

    .line 63
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, LH0/f;->c:LH0/a;

    .line 67
    .line 68
    iget-object v2, p0, LH0/f;->b:LH0/b;

    .line 69
    .line 70
    invoke-virtual {v2}, LH0/b;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-interface {v0, v2, p3}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, LH0/f;->c:LH0/a;

    .line 101
    .line 102
    iget-object v2, p0, LH0/f;->b:LH0/b;

    .line 103
    .line 104
    invoke-virtual {v2}, LH0/b;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    invoke-interface {v0, v2, p3}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_2
    invoke-virtual {p2}, LI0/a;->i()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    iput p3, p0, LH0/f;->e:I

    .line 139
    .line 140
    invoke-virtual {p2}, LI0/a;->b()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    const/4 p3, 0x1

    .line 145
    new-array v8, p3, [J

    .line 146
    .line 147
    const-wide/16 v0, 0x0

    .line 148
    .line 149
    const/4 p3, 0x0

    .line 150
    aput-wide v0, v8, p3

    .line 151
    .line 152
    invoke-virtual {p2}, LI0/a;->i()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_2

    .line 165
    .line 166
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    move-object v5, v0

    .line 171
    check-cast v5, LI0/b;

    .line 172
    .line 173
    iget-object v0, p0, LH0/f;->i:Ljava/util/concurrent/ExecutorService;

    .line 174
    .line 175
    new-instance v2, LH0/e;

    .line 176
    .line 177
    move-object v3, p0

    .line 178
    move-object v9, p1

    .line 179
    move-object v7, p2

    .line 180
    invoke-direct/range {v2 .. v9}, LH0/e;-><init>(LH0/f;Ljava/io/File;LI0/b;Ljava/lang/String;LI0/a;[JLjava/util/concurrent/CountDownLatch;)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_2
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LH0/f;->g:Z

    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25: "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, LH0/f;->b:LH0/b;

    .line 9
    .line 10
    invoke-virtual {v2}, LH0/b;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, LH0/f;->b:LH0/b;

    .line 23
    .line 24
    invoke-virtual {v2}, LH0/b;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, "-plus"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :try_start_0
    iget-object v2, p0, LH0/f;->b:LH0/b;

    .line 41
    .line 42
    invoke-virtual {v2}, LH0/b;->e()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v3, p0, LH0/f;->b:LH0/b;

    .line 47
    .line 48
    invoke-virtual {v3}, LH0/b;->b()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, LJ0/b;->c(Ljava/lang/String;Ljava/lang/String;)LI0/a;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, LI0/a;->q(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 60
    .line 61
    invoke-virtual {v2}, LI0/a;->i()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v3, v2, v1}, LH0/f;->c(Ljava/util/concurrent/CountDownLatch;LI0/a;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, LH0/f;->b:LH0/b;

    .line 79
    .line 80
    invoke-virtual {v1}, LH0/b;->c()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v2, v1}, LI0/a;->k(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/io/File;

    .line 88
    .line 89
    iget-object v3, p0, LH0/f;->b:LH0/b;

    .line 90
    .line 91
    invoke-virtual {v3}, LH0/b;->c()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, LH0/f;->b:LH0/b;

    .line 99
    .line 100
    invoke-virtual {v3}, LH0/b;->a()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v1, v3, v2}, LJ0/b;->a(Ljava/io/File;Ljava/lang/String;LI0/a;)Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v2, v1}, LI0/a;->n(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, LI0/a;->i()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-wide/16 v2, 0x0

    .line 124
    .line 125
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_0

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, LI0/b;

    .line 136
    .line 137
    invoke-virtual {v4}, LI0/b;->b()J

    .line 138
    .line 139
    .line 140
    move-result-wide v4

    .line 141
    add-long/2addr v2, v4

    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    goto :goto_1

    .line 145
    :catch_1
    move-exception v1

    .line 146
    goto :goto_2

    .line 147
    :cond_0
    iget-object v1, p0, LH0/f;->c:LH0/a;

    .line 148
    .line 149
    iget-object v4, p0, LH0/f;->b:LH0/b;

    .line 150
    .line 151
    invoke-virtual {v4}, LH0/b;->d()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    const/16 v5, 0x64

    .line 156
    .line 157
    invoke-interface {v1, v4, v5, v2, v3}, LH0/a;->a(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, LH0/f;->c:LH0/a;

    .line 165
    .line 166
    iget-object v3, p0, LH0/f;->b:LH0/b;

    .line 167
    .line 168
    invoke-virtual {v3}, LH0/b;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {v2, v3, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, LH0/f;->c:LH0/a;

    .line 199
    .line 200
    iget-object v3, p0, LH0/f;->b:LH0/b;

    .line 201
    .line 202
    invoke-virtual {v3}, LH0/b;->a()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-interface {v2, v3, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_3
    return-void
.end method

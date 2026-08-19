.class public LH0/g;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements LH0/h;


# instance fields
.field public final b:LH0/b;

.field public final c:LH0/a;

.field public volatile d:Z

.field public e:I


# direct methods
.method public constructor <init>(LH0/b;LH0/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LH0/g;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, LH0/g;->b:LH0/b;

    .line 8
    .line 9
    iput-object p2, p0, LH0/g;->c:LH0/a;

    .line 10
    .line 11
    return-void
.end method

.method public static a(LH0/b;)LH0/h;
    .locals 2

    .line 1
    new-instance v0, LH0/g;

    .line 2
    .line 3
    new-instance v1, LH0/g$a;

    .line 4
    .line 5
    invoke-direct {v1}, LH0/g$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, LH0/g;-><init>(LH0/b;LH0/a;)V

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
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LH0/g;->d:Z

    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 11

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    .line 7
    .line 8
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, LH0/g;->b:LH0/b;

    .line 12
    .line 13
    invoke-virtual {v2}, LH0/b;->e()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, LH0/g;->b:LH0/b;

    .line 27
    .line 28
    invoke-virtual {v3}, LH0/b;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, LH0/g;->b:LH0/b;

    .line 35
    .line 36
    invoke-virtual {v3}, LH0/b;->b()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 47
    .line 48
    iget-object v4, p0, LH0/g;->b:LH0/b;

    .line 49
    .line 50
    invoke-virtual {v4}, LH0/b;->b()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :catch_1
    move-exception v0

    .line 85
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_0
    iget-object v3, p0, LH0/g;->b:LH0/b;

    .line 90
    .line 91
    invoke-virtual {v3}, LH0/b;->b()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_1

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_1

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_2

    .line 150
    .line 151
    iget-object v1, p0, LH0/g;->c:LH0/a;

    .line 152
    .line 153
    iget-object v2, p0, LH0/g;->b:LH0/b;

    .line 154
    .line 155
    invoke-virtual {v2}, LH0/b;->a()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v4, "Download failed with HTTP code "

    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {v1, v2, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    .line 189
    .line 190
    .line 191
    move-result-wide v1

    .line 192
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    new-instance v3, Ljava/io/File;

    .line 201
    .line 202
    iget-object v4, p0, LH0/g;->b:LH0/b;

    .line 203
    .line 204
    invoke-virtual {v4}, LH0/b;->c()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    iget-object v5, p0, LH0/g;->b:LH0/b;

    .line 209
    .line 210
    invoke-virtual {v5}, LH0/b;->a()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    if-eqz v4, :cond_3

    .line 222
    .line 223
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_3

    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-nez v5, :cond_3

    .line 234
    .line 235
    iget-object v0, p0, LH0/g;->c:LH0/a;

    .line 236
    .line 237
    iget-object v1, p0, LH0/g;->b:LH0/b;

    .line 238
    .line 239
    invoke-virtual {v1}, LH0/b;->a()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    const-string v3, "\u65e0\u6cd5\u521b\u5efa\u76ee\u5f55: "

    .line 249
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-interface {v0, v1, v2}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    .line 269
    .line 270
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 271
    .line 272
    .line 273
    const/16 v5, 0x2000

    .line 274
    .line 275
    new-array v5, v5, [B

    .line 276
    .line 277
    const-wide/16 v6, 0x0

    .line 278
    .line 279
    :cond_4
    :goto_2
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    .line 280
    .line 281
    .line 282
    move-result v8

    .line 283
    const/4 v9, -0x1

    .line 284
    if-eq v8, v9, :cond_7

    .line 285
    .line 286
    iget-boolean v9, p0, LH0/g;->d:Z

    .line 287
    .line 288
    if-eqz v9, :cond_5

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    .line 305
    .line 306
    .line 307
    move-result v9

    .line 308
    if-eqz v9, :cond_6

    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_6
    int-to-long v9, v8

    .line 321
    add-long/2addr v6, v9

    .line 322
    const/4 v9, 0x0

    .line 323
    invoke-virtual {v4, v5, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 324
    .line 325
    .line 326
    const-wide/16 v8, 0x64

    .line 327
    .line 328
    mul-long/2addr v8, v6

    .line 329
    div-long/2addr v8, v1

    .line 330
    long-to-int v8, v8

    .line 331
    if-lez v8, :cond_4

    .line 332
    .line 333
    iget v9, p0, LH0/g;->e:I

    .line 334
    .line 335
    if-eq v9, v8, :cond_4

    .line 336
    .line 337
    iput v8, p0, LH0/g;->e:I

    .line 338
    .line 339
    iget-object v9, p0, LH0/g;->c:LH0/a;

    .line 340
    .line 341
    iget-object v10, p0, LH0/g;->b:LH0/b;

    .line 342
    .line 343
    invoke-virtual {v10}, LH0/b;->d()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    invoke-interface {v9, v10, v8, v6, v7}, LH0/a;->a(Ljava/lang/String;IJ)V

    .line 348
    .line 349
    .line 350
    goto :goto_2

    .line 351
    :cond_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, LH0/g;->c:LH0/a;

    .line 365
    .line 366
    iget-object v2, p0, LH0/g;->b:LH0/b;

    .line 367
    .line 368
    invoke-virtual {v2}, LH0/b;->a()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v4, "\u4e0b\u8f7d\u5931\u8d25: "

    .line 378
    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-interface {v1, v2, v0}, LH0/a;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    return-void
.end method

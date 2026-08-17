.class Lcom/octopus/ad/internal/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/c/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/c/d;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/c/d$1;->a:Lcom/octopus/ad/internal/c/d;

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
    .locals 11

    .line 1
    const-string v0, "Catch An Exception: "

    .line 2
    .line 3
    const-string v1, "OctopusAd"

    .line 4
    .line 5
    new-instance v2, Lcom/octopus/ad/internal/c/e;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/octopus/ad/internal/c/e;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 13
    .line 14
    iget-object v6, p0, Lcom/octopus/ad/internal/c/d$1;->a:Lcom/octopus/ad/internal/c/d;

    .line 15
    .line 16
    invoke-virtual {v6}, Lcom/octopus/ad/internal/c/d;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/c/e;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    new-instance v3, Lcom/octopus/ad/internal/c/d$1$1;

    .line 33
    .line 34
    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/c/d$1$1;-><init>(Lcom/octopus/ad/internal/c/d$1;Lcom/octopus/ad/internal/c/e;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-object v6, v4

    .line 66
    move-object v8, v6

    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :catch_1
    move-object v6, v4

    .line 70
    move-object v8, v6

    .line 71
    goto/16 :goto_b

    .line 72
    .line 73
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/octopus/ad/internal/c/d$1;->a:Lcom/octopus/ad/internal/c/d;

    .line 74
    .line 75
    invoke-static {v6, v5}, Lcom/octopus/ad/internal/c/d;->a(Lcom/octopus/ad/internal/c/d;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 76
    .line 77
    .line 78
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :try_start_3
    iget-object v6, p0, Lcom/octopus/ad/internal/c/d$1;->a:Lcom/octopus/ad/internal/c/d;

    .line 80
    .line 81
    invoke-static {v6, v5}, Lcom/octopus/ad/internal/c/d;->a(Lcom/octopus/ad/internal/c/d;Ljava/net/HttpURLConnection;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v2, v6}, Lcom/octopus/ad/internal/c/e;->a(I)V

    .line 92
    .line 93
    .line 94
    const-string v7, "HTTPGet"

    .line 95
    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v9, "HTTPGet code:"

    .line 102
    .line 103
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-static {v7, v6}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v6, p0, Lcom/octopus/ad/internal/c/d$1;->a:Lcom/octopus/ad/internal/c/d;

    .line 117
    .line 118
    invoke-static {v6}, Lcom/octopus/ad/internal/c/d;->a(Lcom/octopus/ad/internal/c/d;)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_2

    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 125
    .line 126
    .line 127
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 128
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v8, Ljava/io/BufferedReader;

    .line 134
    .line 135
    new-instance v9, Ljava/io/InputStreamReader;

    .line 136
    .line 137
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-direct {v9, v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    .line 146
    .line 147
    :goto_0
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    if-eqz v4, :cond_1

    .line 152
    .line 153
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catchall_1
    :goto_1
    move-object v4, v5

    .line 158
    goto/16 :goto_8

    .line 159
    .line 160
    :catch_2
    :goto_2
    move-object v4, v5

    .line 161
    goto/16 :goto_b

    .line 162
    .line 163
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v2, v4}, Lcom/octopus/ad/internal/c/e;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    .line 169
    .line 170
    move-object v4, v6

    .line 171
    goto :goto_3

    .line 172
    :catchall_2
    move-object v8, v4

    .line 173
    goto :goto_1

    .line 174
    :catch_3
    move-object v8, v4

    .line 175
    goto :goto_2

    .line 176
    :catchall_3
    move-object v6, v4

    .line 177
    move-object v8, v6

    .line 178
    goto :goto_1

    .line 179
    :catch_4
    move-object v6, v4

    .line 180
    move-object v8, v6

    .line 181
    goto :goto_2

    .line 182
    :cond_2
    :try_start_6
    const-string v6, ""

    .line 183
    .line 184
    invoke-virtual {v2, v6}, Lcom/octopus/ad/internal/c/e;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 185
    .line 186
    .line 187
    move-object v8, v4

    .line 188
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-virtual {v2, v6}, Lcom/octopus/ad/internal/c/e;->a(Ljava/util/Map;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    const/16 v7, 0xc8

    .line 200
    .line 201
    if-lt v6, v7, :cond_3

    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    const/16 v7, 0x190

    .line 208
    .line 209
    if-ge v6, v7, :cond_3

    .line 210
    .line 211
    const/4 v6, 0x1

    .line 212
    goto :goto_4

    .line 213
    :catchall_4
    move-object v6, v4

    .line 214
    goto :goto_1

    .line 215
    :catch_5
    move-object v6, v4

    .line 216
    goto :goto_2

    .line 217
    :cond_3
    move v6, v3

    .line 218
    :goto_4
    invoke-virtual {v2, v6}, Lcom/octopus/ad/internal/c/e;->a(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 219
    .line 220
    .line 221
    :try_start_8
    new-instance v3, Lcom/octopus/ad/internal/c/d$1$1;

    .line 222
    .line 223
    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/c/d$1$1;-><init>(Lcom/octopus/ad/internal/c/d$1;Lcom/octopus/ad/internal/c/e;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v3}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 230
    .line 231
    .line 232
    if-eqz v4, :cond_4

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :catch_6
    move-exception v2

    .line 239
    goto :goto_6

    .line 240
    :cond_4
    :goto_5
    if-eqz v8, :cond_9

    .line 241
    .line 242
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    :goto_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_e

    .line 269
    :goto_8
    :try_start_9
    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/c/e;->a(Z)V

    .line 270
    .line 271
    .line 272
    sget-object v3, Lcom/octopus/ad/internal/c/i;->e:Lcom/octopus/ad/internal/c/i;

    .line 273
    .line 274
    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/c/e;->a(Lcom/octopus/ad/internal/c/i;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 275
    .line 276
    .line 277
    :try_start_a
    new-instance v3, Lcom/octopus/ad/internal/c/d$1$1;

    .line 278
    .line 279
    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/c/d$1$1;-><init>(Lcom/octopus/ad/internal/c/d$1;Lcom/octopus/ad/internal/c/e;)V

    .line 280
    .line 281
    .line 282
    invoke-static {v3}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 283
    .line 284
    .line 285
    if-eqz v4, :cond_5

    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 288
    .line 289
    .line 290
    goto :goto_9

    .line 291
    :catch_7
    move-exception v2

    .line 292
    goto :goto_a

    .line 293
    :cond_5
    :goto_9
    if-eqz v6, :cond_6

    .line 294
    .line 295
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 296
    .line 297
    .line 298
    :cond_6
    if-eqz v8, :cond_9

    .line 299
    .line 300
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 301
    .line 302
    .line 303
    goto :goto_e

    .line 304
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :catchall_5
    move-exception v3

    .line 311
    goto :goto_f

    .line 312
    :goto_b
    :try_start_b
    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/c/e;->a(Z)V

    .line 313
    .line 314
    .line 315
    sget-object v3, Lcom/octopus/ad/internal/c/i;->e:Lcom/octopus/ad/internal/c/i;

    .line 316
    .line 317
    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/c/e;->a(Lcom/octopus/ad/internal/c/i;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 318
    .line 319
    .line 320
    :try_start_c
    new-instance v3, Lcom/octopus/ad/internal/c/d$1$1;

    .line 321
    .line 322
    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/c/d$1$1;-><init>(Lcom/octopus/ad/internal/c/d$1;Lcom/octopus/ad/internal/c/e;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v3}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 326
    .line 327
    .line 328
    if-eqz v4, :cond_7

    .line 329
    .line 330
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    .line 332
    .line 333
    goto :goto_c

    .line 334
    :catch_8
    move-exception v2

    .line 335
    goto :goto_d

    .line 336
    :cond_7
    :goto_c
    if-eqz v6, :cond_8

    .line 337
    .line 338
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 339
    .line 340
    .line 341
    :cond_8
    if-eqz v8, :cond_9

    .line 342
    .line 343
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 344
    .line 345
    .line 346
    goto :goto_e

    .line 347
    :goto_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    goto :goto_7

    .line 353
    :cond_9
    :goto_e
    return-void

    .line 354
    :goto_f
    :try_start_d
    new-instance v5, Lcom/octopus/ad/internal/c/d$1$1;

    .line 355
    .line 356
    invoke-direct {v5, p0, v2}, Lcom/octopus/ad/internal/c/d$1$1;-><init>(Lcom/octopus/ad/internal/c/d$1;Lcom/octopus/ad/internal/c/e;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v5}, Lcom/octopus/ad/utils/ThreadUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 360
    .line 361
    .line 362
    if-eqz v4, :cond_a

    .line 363
    .line 364
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 365
    .line 366
    .line 367
    goto :goto_10

    .line 368
    :catch_9
    move-exception v2

    .line 369
    goto :goto_11

    .line 370
    :cond_a
    :goto_10
    if-eqz v6, :cond_b

    .line 371
    .line 372
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 373
    .line 374
    .line 375
    :cond_b
    if-eqz v8, :cond_c

    .line 376
    .line 377
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 378
    .line 379
    .line 380
    goto :goto_12

    .line 381
    :goto_11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-static {v1, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    :cond_c
    :goto_12
    throw v3
.end method

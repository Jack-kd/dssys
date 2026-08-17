.class public final Lcom/smartdigimkt/q1/w;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final a:Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;

.field public b:Lcom/smartdigimkt/f1/f;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/smartdigimkt/q1/w;->a:Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 9

    .line 1
    const-string p1, "UTF-8"

    .line 2
    .line 3
    iget-object p2, p0, Lcom/smartdigimkt/q1/w;->a:Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;->getSignalCommunication()Lcom/smartdigimkt/q1/b;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p2, :cond_1b

    .line 11
    .line 12
    if-eqz p4, :cond_1b

    .line 13
    .line 14
    sget-object v1, Lcom/smartdigimkt/g1/c;->a:[Ljava/lang/String;

    .line 15
    .line 16
    move v2, v0

    .line 17
    :goto_0
    const/4 v3, 0x4

    .line 18
    if-ge v2, v3, :cond_1b

    .line 19
    .line 20
    aget-object v4, v1, v2

    .line 21
    .line 22
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1a

    .line 27
    .line 28
    const-string v1, "wv_hybrid:"

    .line 29
    .line 30
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    sget-object p4, Lcom/smartdigimkt/g1/c;->a:[Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string v1, "mraid:"

    .line 40
    .line 41
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    sget-object p4, Lcom/smartdigimkt/g1/c;->a:[Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string v1, "ssp:"

    .line 51
    .line 52
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    sget-object p4, Lcom/smartdigimkt/g1/c;->a:[Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string v1, "mvb_hybrid:"

    .line 62
    .line 63
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p4

    .line 67
    if-eqz p4, :cond_3

    .line 68
    .line 69
    sget-object p4, Lcom/smartdigimkt/g1/c;->a:[Ljava/lang/String;

    .line 70
    .line 71
    :cond_3
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    const/4 v1, 0x1

    .line 76
    if-eqz p4, :cond_4

    .line 77
    .line 78
    goto/16 :goto_e

    .line 79
    .line 80
    :cond_4
    const/4 p4, 0x0

    .line 81
    const/4 v2, -0x1

    .line 82
    if-nez p3, :cond_5

    .line 83
    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_5
    new-instance v4, Lcom/smartdigimkt/q1/a;

    .line 87
    .line 88
    invoke-direct {v4}, Lcom/smartdigimkt/q1/a;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-nez v6, :cond_d

    .line 104
    .line 105
    const-string v6, "mraid"

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_d

    .line 112
    .line 113
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iput-object v5, v4, Lcom/smartdigimkt/q1/a;->a:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v6, p2, Lcom/smartdigimkt/q1/b;->b:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-nez v6, :cond_6

    .line 126
    .line 127
    iget-object v6, p2, Lcom/smartdigimkt/q1/b;->a:Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;

    .line 128
    .line 129
    if-eqz v6, :cond_6

    .line 130
    .line 131
    :try_start_0
    invoke-static {v5, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    goto :goto_2

    .line 136
    :catchall_0
    move-object p3, v5

    .line 137
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v7, "javascript:window.mraidbridge.nativeCallComplete(\'"

    .line 140
    .line 141
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p3, "\');"

    .line 148
    .line 149
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    :try_start_1
    invoke-virtual {v6, p3}, Lcom/smartdigimkt/sdk/basead/express/web/BaseWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    .line 158
    .line 159
    goto :goto_3

    .line 160
    :catchall_1
    move-exception p3

    .line 161
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    :goto_3
    iget-object p3, p2, Lcom/smartdigimkt/q1/b;->a:Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;

    .line 165
    .line 166
    const-string v4, "Specified command is not implemented"

    .line 167
    .line 168
    :try_start_2
    invoke-static {v4, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v5, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 176
    :catchall_2
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string v4, "javascript:window.mraidbridge.fireErrorEvent(\'%1s\', \'%2s\');"

    .line 181
    .line 182
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p3, :cond_d

    .line 187
    .line 188
    :try_start_3
    invoke-virtual {p3, p1}, Lcom/smartdigimkt/sdk/basead/express/web/BaseWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 189
    .line 190
    .line 191
    goto/16 :goto_7

    .line 192
    .line 193
    :catchall_3
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_6
    invoke-virtual {p3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-nez p1, :cond_7

    .line 203
    .line 204
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 210
    .line 211
    .line 212
    move v6, v0

    .line 213
    :cond_8
    const/16 v7, 0x26

    .line 214
    .line 215
    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(II)I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-ne v7, v2, :cond_9

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    :cond_9
    const/16 v8, 0x3d

    .line 226
    .line 227
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-gt v8, v7, :cond_a

    .line 232
    .line 233
    if-ne v8, v2, :cond_b

    .line 234
    .line 235
    :cond_a
    move v8, v7

    .line 236
    :cond_b
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    add-int/lit8 v6, v7, 0x1

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 250
    .line 251
    .line 252
    move-result v7

    .line 253
    if-lt v6, v7, :cond_8

    .line 254
    .line 255
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    :goto_4
    :try_start_4
    new-instance v5, Lorg/json/JSONObject;

    .line 260
    .line 261
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_c

    .line 273
    .line 274
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v6

    .line 278
    check-cast v6, Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {p3, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :catch_0
    move-exception p1

    .line 289
    goto :goto_6

    .line 290
    :cond_c
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iput-object p1, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 298
    .line 299
    .line 300
    goto :goto_8

    .line 301
    :cond_d
    :goto_7
    move-object v4, p4

    .line 302
    :goto_8
    if-nez v4, :cond_e

    .line 303
    .line 304
    goto/16 :goto_e

    .line 305
    .line 306
    :cond_e
    iget-object p1, p2, Lcom/smartdigimkt/q1/b;->a:Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;

    .line 307
    .line 308
    invoke-virtual {p1, p4}, Lcom/smartdigimkt/sdk/basead/mraid/MraidBaseWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    if-nez p1, :cond_f

    .line 313
    .line 314
    goto/16 :goto_e

    .line 315
    .line 316
    :cond_f
    :try_start_5
    instance-of p2, p1, Lcom/smartdigimkt/q1/p;

    .line 317
    .line 318
    if-nez p2, :cond_10

    .line 319
    .line 320
    goto/16 :goto_e

    .line 321
    .line 322
    :cond_10
    iget-object p2, v4, Lcom/smartdigimkt/q1/a;->a:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 325
    .line 326
    .line 327
    move-result p3

    .line 328
    const/4 p4, 0x2

    .line 329
    const/4 v5, 0x3

    .line 330
    sparse-switch p3, :sswitch_data_0

    .line 331
    .line 332
    .line 333
    goto :goto_9

    .line 334
    :sswitch_0
    const-string p3, "useCustomClose"

    .line 335
    .line 336
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-eqz p2, :cond_11

    .line 341
    .line 342
    move v0, v5

    .line 343
    goto :goto_a

    .line 344
    :sswitch_1
    const-string p3, "close"

    .line 345
    .line 346
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    if-eqz p2, :cond_11

    .line 351
    .line 352
    move v0, v1

    .line 353
    goto :goto_a

    .line 354
    :sswitch_2
    const-string p3, "open"

    .line 355
    .line 356
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p2

    .line 360
    if-eqz p2, :cond_11

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :sswitch_3
    const-string p3, "unload"

    .line 364
    .line 365
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result p2

    .line 369
    if-eqz p2, :cond_11

    .line 370
    .line 371
    move v0, p4

    .line 372
    goto :goto_a

    .line 373
    :sswitch_4
    const-string p3, "expand"

    .line 374
    .line 375
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 379
    if-eqz p2, :cond_11

    .line 380
    .line 381
    move v0, v3

    .line 382
    goto :goto_a

    .line 383
    :cond_11
    :goto_9
    move v0, v2

    .line 384
    :goto_a
    const-string p2, "{}"

    .line 385
    .line 386
    if-eqz v0, :cond_18

    .line 387
    .line 388
    if-eq v0, v1, :cond_17

    .line 389
    .line 390
    if-eq v0, p4, :cond_16

    .line 391
    .line 392
    if-eq v0, v5, :cond_14

    .line 393
    .line 394
    if-eq v0, v3, :cond_12

    .line 395
    .line 396
    goto :goto_e

    .line 397
    :cond_12
    :try_start_6
    check-cast p1, Lcom/smartdigimkt/q1/p;

    .line 398
    .line 399
    iget-object p3, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 400
    .line 401
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 402
    .line 403
    .line 404
    move-result p3

    .line 405
    if-eqz p3, :cond_13

    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_13
    iget-object p2, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 409
    .line 410
    :goto_b
    invoke-virtual {p1, p2}, Lcom/smartdigimkt/q1/p;->a(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    goto :goto_e

    .line 414
    :cond_14
    check-cast p1, Lcom/smartdigimkt/q1/p;

    .line 415
    .line 416
    iget-object p3, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 417
    .line 418
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 419
    .line 420
    .line 421
    move-result p3

    .line 422
    if-eqz p3, :cond_15

    .line 423
    .line 424
    goto :goto_c

    .line 425
    :cond_15
    iget-object p2, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 426
    .line 427
    :goto_c
    invoke-virtual {p1, p2}, Lcom/smartdigimkt/q1/p;->c(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_e

    .line 431
    :cond_16
    check-cast p1, Lcom/smartdigimkt/q1/p;

    .line 432
    .line 433
    iget-object p2, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 434
    .line 435
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1}, Lcom/smartdigimkt/q1/p;->b()V

    .line 439
    .line 440
    .line 441
    goto :goto_e

    .line 442
    :cond_17
    check-cast p1, Lcom/smartdigimkt/q1/p;

    .line 443
    .line 444
    iget-object p2, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 445
    .line 446
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1}, Lcom/smartdigimkt/q1/p;->a()V

    .line 450
    .line 451
    .line 452
    goto :goto_e

    .line 453
    :cond_18
    check-cast p1, Lcom/smartdigimkt/q1/p;

    .line 454
    .line 455
    iget-object p3, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result p3

    .line 461
    if-eqz p3, :cond_19

    .line 462
    .line 463
    goto :goto_d

    .line 464
    :cond_19
    iget-object p2, v4, Lcom/smartdigimkt/q1/a;->b:Ljava/lang/String;

    .line 465
    .line 466
    :goto_d
    invoke-virtual {p1, p2}, Lcom/smartdigimkt/q1/p;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 467
    .line 468
    .line 469
    :catchall_4
    :goto_e
    const-string p1, ""

    .line 470
    .line 471
    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    return v1

    .line 475
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :cond_1b
    return v0

    .line 480
    nop

    .line 481
    :sswitch_data_0
    .sparse-switch
        -0x4cd72166 -> :sswitch_4
        -0x32182101 -> :sswitch_3
        0x34264a -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.class public LN1/f;
.super LN1/c;
.source "SourceFile"


# static fields
.field public static final B:LR1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LN1/f;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LN1/f;->B:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(LN1/g;LL1/k;LN1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LN1/c;-><init>(LN1/g;LL1/k;LN1/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public handle()LL1/j;
    .locals 11

    .line 1
    const-string v0, "Safety net oshut!!! Please open a bugzilla"

    .line 2
    .line 3
    const-string v1, "org.eclipse.jetty.io.Connection"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, LN1/c;->J(LN1/c;)V

    .line 7
    .line 8
    .line 9
    move-object v3, p0

    .line 10
    :cond_0
    :goto_0
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 11
    .line 12
    invoke-interface {v4}, LL1/k;->isOpen()Z

    .line 13
    .line 14
    .line 15
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-eqz v4, :cond_b

    .line 17
    .line 18
    if-ne v3, p0, :cond_b

    .line 19
    .line 20
    const/16 v4, 0x65

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    :try_start_1
    iget-object v6, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 24
    .line 25
    invoke-interface {v6}, Lorg/eclipse/jetty/http/r;->b()Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    iget-object v6, p0, LL1/b;->c:LL1/k;

    .line 32
    .line 33
    invoke-interface {v6}, LL1/k;->s()Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    iget-object v6, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 40
    .line 41
    invoke-interface {v6}, Lorg/eclipse/jetty/http/r;->d()Z

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v3

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :catch_0
    move-exception v6

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    :goto_1
    iget-object v6, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 52
    .line 53
    invoke-interface {v6}, Lorg/eclipse/jetty/http/c;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    iget-object v6, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 60
    .line 61
    invoke-interface {v6}, Lorg/eclipse/jetty/http/c;->b()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_2

    .line 66
    .line 67
    iget-object v6, p0, LL1/b;->c:LL1/k;

    .line 68
    .line 69
    invoke-interface {v6}, LL1/k;->o()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_2

    .line 74
    .line 75
    iget-object v6, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 76
    .line 77
    invoke-interface {v6}, Lorg/eclipse/jetty/http/c;->l()I

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v6, p0, LL1/b;->c:LL1/k;

    .line 81
    .line 82
    invoke-interface {v6}, LL1/k;->flush()V
    :try_end_1
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :try_start_2
    iget-object v6, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 86
    .line 87
    invoke-interface {v6}, Lorg/eclipse/jetty/http/r;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    iget-object v6, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 94
    .line 95
    invoke-interface {v6}, Lorg/eclipse/jetty/http/c;->b()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, LN1/c;->I()V

    .line 102
    .line 103
    .line 104
    iget-object v6, p0, LN1/c;->n:LN1/l;

    .line 105
    .line 106
    invoke-virtual {v6}, LN1/l;->f()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-ne v6, v4, :cond_3

    .line 111
    .line 112
    iget-object v4, p0, LN1/c;->k:LN1/k;

    .line 113
    .line 114
    invoke-virtual {v4, v1}, LN1/k;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, LL1/j;

    .line 119
    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    move-object v3, v4

    .line 123
    goto :goto_2

    .line 124
    :catchall_1
    move-exception v0

    .line 125
    goto/16 :goto_6

    .line 126
    .line 127
    :cond_3
    :goto_2
    iget-object v4, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 128
    .line 129
    invoke-interface {v4}, Lorg/eclipse/jetty/http/c;->isPersistent()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_4

    .line 134
    .line 135
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 136
    .line 137
    invoke-interface {v4}, LL1/k;->o()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-nez v4, :cond_4

    .line 142
    .line 143
    sget-object v4, LN1/f;->B:LR1/c;

    .line 144
    .line 145
    new-array v5, v5, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-interface {v4, v0, v5}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 151
    .line 152
    invoke-interface {v4}, LL1/k;->j()V

    .line 153
    .line 154
    .line 155
    :cond_4
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 156
    .line 157
    invoke-interface {v4}, LL1/k;->s()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_0

    .line 162
    .line 163
    iget-object v4, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 164
    .line 165
    invoke-interface {v4}, Lorg/eclipse/jetty/http/c;->isIdle()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_0

    .line 170
    .line 171
    iget-object v4, p0, LN1/c;->k:LN1/k;

    .line 172
    .line 173
    invoke-virtual {v4}, LN1/k;->b()LN1/d;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4}, LN1/d;->o()Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_0

    .line 182
    .line 183
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 184
    .line 185
    :goto_3
    invoke-interface {v4}, LL1/k;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :goto_4
    :try_start_3
    sget-object v7, LN1/f;->B:LR1/c;

    .line 191
    .line 192
    invoke-interface {v7}, LR1/c;->f()Z

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v8, :cond_5

    .line 197
    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v9, "uri="

    .line 204
    .line 205
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget-object v9, p0, LN1/c;->h:Lorg/eclipse/jetty/http/o;

    .line 209
    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    new-array v9, v5, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-interface {v7, v8, v9}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v9, "fields="

    .line 228
    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v9, p0, LN1/c;->j:Lorg/eclipse/jetty/http/g;

    .line 233
    .line 234
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    new-array v9, v5, [Ljava/lang/Object;

    .line 242
    .line 243
    invoke-interface {v7, v8, v9}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v7, v6}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 247
    .line 248
    .line 249
    :cond_5
    iget-object v8, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 250
    .line 251
    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const/4 v10, 0x1

    .line 260
    invoke-interface {v8, v9, v6, v2, v10}, Lorg/eclipse/jetty/http/c;->n(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 261
    .line 262
    .line 263
    iget-object v6, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 264
    .line 265
    invoke-interface {v6}, Lorg/eclipse/jetty/http/r;->reset()V

    .line 266
    .line 267
    .line 268
    iget-object v6, p0, LL1/b;->c:LL1/k;

    .line 269
    .line 270
    invoke-interface {v6}, LL1/k;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    .line 272
    .line 273
    :try_start_4
    iget-object v6, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 274
    .line 275
    invoke-interface {v6}, Lorg/eclipse/jetty/http/r;->b()Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_7

    .line 280
    .line 281
    iget-object v6, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 282
    .line 283
    invoke-interface {v6}, Lorg/eclipse/jetty/http/c;->b()Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-eqz v6, :cond_7

    .line 288
    .line 289
    invoke-virtual {p0}, LN1/c;->I()V

    .line 290
    .line 291
    .line 292
    iget-object v6, p0, LN1/c;->n:LN1/l;

    .line 293
    .line 294
    invoke-virtual {v6}, LN1/l;->f()I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-ne v6, v4, :cond_6

    .line 299
    .line 300
    iget-object v4, p0, LN1/c;->k:LN1/k;

    .line 301
    .line 302
    invoke-virtual {v4, v1}, LN1/k;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    check-cast v4, LL1/j;

    .line 307
    .line 308
    if-eqz v4, :cond_6

    .line 309
    .line 310
    move-object v3, v4

    .line 311
    :cond_6
    iget-object v4, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 312
    .line 313
    invoke-interface {v4}, Lorg/eclipse/jetty/http/c;->isPersistent()Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-nez v4, :cond_7

    .line 318
    .line 319
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 320
    .line 321
    invoke-interface {v4}, LL1/k;->o()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-nez v4, :cond_7

    .line 326
    .line 327
    new-array v4, v5, [Ljava/lang/Object;

    .line 328
    .line 329
    invoke-interface {v7, v0, v4}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 333
    .line 334
    invoke-interface {v4}, LL1/k;->j()V

    .line 335
    .line 336
    .line 337
    :cond_7
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 338
    .line 339
    invoke-interface {v4}, LL1/k;->s()Z

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    if-eqz v4, :cond_0

    .line 344
    .line 345
    iget-object v4, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 346
    .line 347
    invoke-interface {v4}, Lorg/eclipse/jetty/http/c;->isIdle()Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-eqz v4, :cond_0

    .line 352
    .line 353
    iget-object v4, p0, LN1/c;->k:LN1/k;

    .line 354
    .line 355
    invoke-virtual {v4}, LN1/k;->b()LN1/d;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v4}, LN1/d;->o()Z

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    if-nez v4, :cond_0

    .line 364
    .line 365
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 366
    .line 367
    goto/16 :goto_3

    .line 368
    .line 369
    :goto_5
    iget-object v6, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 370
    .line 371
    invoke-interface {v6}, Lorg/eclipse/jetty/http/r;->b()Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-eqz v6, :cond_9

    .line 376
    .line 377
    iget-object v6, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 378
    .line 379
    invoke-interface {v6}, Lorg/eclipse/jetty/http/c;->b()Z

    .line 380
    .line 381
    .line 382
    move-result v6

    .line 383
    if-eqz v6, :cond_9

    .line 384
    .line 385
    invoke-virtual {p0}, LN1/c;->I()V

    .line 386
    .line 387
    .line 388
    iget-object v6, p0, LN1/c;->n:LN1/l;

    .line 389
    .line 390
    invoke-virtual {v6}, LN1/l;->f()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    if-ne v6, v4, :cond_8

    .line 395
    .line 396
    iget-object v4, p0, LN1/c;->k:LN1/k;

    .line 397
    .line 398
    invoke-virtual {v4, v1}, LN1/k;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    check-cast v1, LL1/j;

    .line 403
    .line 404
    :cond_8
    iget-object v1, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 405
    .line 406
    invoke-interface {v1}, Lorg/eclipse/jetty/http/c;->isPersistent()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-nez v1, :cond_9

    .line 411
    .line 412
    iget-object v1, p0, LL1/b;->c:LL1/k;

    .line 413
    .line 414
    invoke-interface {v1}, LL1/k;->o()Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-nez v1, :cond_9

    .line 419
    .line 420
    sget-object v1, LN1/f;->B:LR1/c;

    .line 421
    .line 422
    new-array v4, v5, [Ljava/lang/Object;

    .line 423
    .line 424
    invoke-interface {v1, v0, v4}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 428
    .line 429
    invoke-interface {v0}, LL1/k;->j()V

    .line 430
    .line 431
    .line 432
    :cond_9
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 433
    .line 434
    invoke-interface {v0}, LL1/k;->s()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_a

    .line 439
    .line 440
    iget-object v0, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 441
    .line 442
    invoke-interface {v0}, Lorg/eclipse/jetty/http/c;->isIdle()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_a

    .line 447
    .line 448
    iget-object v0, p0, LN1/c;->k:LN1/k;

    .line 449
    .line 450
    invoke-virtual {v0}, LN1/k;->b()LN1/d;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v0}, LN1/d;->o()Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-nez v0, :cond_a

    .line 459
    .line 460
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 461
    .line 462
    invoke-interface {v0}, LL1/k;->close()V

    .line 463
    .line 464
    .line 465
    :cond_a
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 466
    :cond_b
    invoke-static {v2}, LN1/c;->J(LN1/c;)V

    .line 467
    .line 468
    .line 469
    iget-object v0, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 470
    .line 471
    invoke-interface {v0}, Lorg/eclipse/jetty/http/r;->a()V

    .line 472
    .line 473
    .line 474
    iget-object v0, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 475
    .line 476
    invoke-interface {v0}, Lorg/eclipse/jetty/http/c;->a()V

    .line 477
    .line 478
    .line 479
    return-object v3

    .line 480
    :goto_6
    invoke-static {v2}, LN1/c;->J(LN1/c;)V

    .line 481
    .line 482
    .line 483
    iget-object v1, p0, LN1/c;->i:Lorg/eclipse/jetty/http/r;

    .line 484
    .line 485
    invoke-interface {v1}, Lorg/eclipse/jetty/http/r;->a()V

    .line 486
    .line 487
    .line 488
    iget-object v1, p0, LN1/c;->l:Lorg/eclipse/jetty/http/c;

    .line 489
    .line 490
    invoke-interface {v1}, Lorg/eclipse/jetty/http/c;->a()V

    .line 491
    .line 492
    .line 493
    throw v0
.end method

.method public y()V
    .locals 0

    .line 1
    invoke-super {p0}, LN1/c;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

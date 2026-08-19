.class public Lorg/eclipse/jetty/client/c;
.super Lorg/eclipse/jetty/client/a;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/a;


# static fields
.field public static final t:LR1/c;


# instance fields
.field public q:Z

.field public r:LL1/d;

.field public final s:LL1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/client/c;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/client/c;->t:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;LL1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jetty/client/a;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;LL1/k;)V

    .line 2
    .line 3
    .line 4
    check-cast p3, LL1/c;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/eclipse/jetty/client/c;->s:LL1/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/a;->isIdle()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 10
    .line 11
    invoke-interface {v0}, LL1/k;->j()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public handle()LL1/j;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v3, p0

    .line 4
    move v2, v0

    .line 5
    move v4, v1

    .line 6
    :goto_0
    if-eqz v2, :cond_2a

    .line 7
    .line 8
    if-ne v3, p0, :cond_2a

    .line 9
    .line 10
    :try_start_0
    sget-object v5, Lorg/eclipse/jetty/client/c;->t:LR1/c;

    .line 11
    .line 12
    const-string v6, "while open={} more={} progress={}"

    .line 13
    .line 14
    iget-object v7, p0, LL1/b;->c:LL1/k;

    .line 15
    .line 16
    invoke-interface {v7}, LL1/k;->isOpen()Z

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    iget-object v8, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 25
    .line 26
    invoke-virtual {v8}, Lorg/eclipse/jetty/http/l;->i()Z

    .line 27
    .line 28
    .line 29
    move-result v8

    .line 30
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    filled-new-array {v7, v8, v2}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v5, v6, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 46
    .line 47
    const-string v6, "exchange {} on {}"

    .line 48
    .line 49
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {v5, v6, v7}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 54
    .line 55
    .line 56
    const/16 v6, 0x65

    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    :try_start_1
    iget-object v8, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 60
    .line 61
    invoke-virtual {v8}, Lorg/eclipse/jetty/http/a;->e()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const/4 v9, 0x2

    .line 66
    if-nez v8, :cond_0

    .line 67
    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-ne v8, v9, :cond_0

    .line 75
    .line 76
    const-string v8, "commit {}"

    .line 77
    .line 78
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-interface {v5, v8, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    .line 85
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    move v8, v0

    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v5

    .line 91
    move v8, v0

    .line 92
    goto/16 :goto_d

    .line 93
    .line 94
    :catchall_1
    move-exception v5

    .line 95
    move v8, v1

    .line 96
    goto/16 :goto_d

    .line 97
    .line 98
    :cond_0
    move v8, v1

    .line 99
    :goto_1
    :try_start_3
    iget-object v10, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 100
    .line 101
    invoke-virtual {v10}, Lorg/eclipse/jetty/http/a;->e()Z

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eqz v10, :cond_6

    .line 106
    .line 107
    iget-object v10, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 108
    .line 109
    invoke-virtual {v10}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-nez v10, :cond_6

    .line 114
    .line 115
    iget-object v10, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 116
    .line 117
    invoke-virtual {v10}, Lorg/eclipse/jetty/http/h;->l()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-lez v10, :cond_1

    .line 122
    .line 123
    const-string v10, "flushed"

    .line 124
    .line 125
    new-array v11, v1, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-interface {v5, v10, v11}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    move v8, v0

    .line 131
    goto :goto_2

    .line 132
    :catchall_2
    move-exception v5

    .line 133
    goto/16 :goto_d

    .line 134
    .line 135
    :cond_1
    :goto_2
    iget-object v10, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 136
    .line 137
    invoke-virtual {v10, v9}, Lorg/eclipse/jetty/http/a;->w(I)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    if-eqz v9, :cond_6

    .line 142
    .line 143
    iget-object v9, p0, Lorg/eclipse/jetty/client/c;->r:LL1/d;

    .line 144
    .line 145
    if-nez v9, :cond_2

    .line 146
    .line 147
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/client/j;->getRequestContentChunk(LL1/d;)LL1/d;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    iput-object v9, p0, Lorg/eclipse/jetty/client/c;->r:LL1/d;

    .line 152
    .line 153
    :cond_2
    iget-object v9, p0, Lorg/eclipse/jetty/client/c;->r:LL1/d;

    .line 154
    .line 155
    const/4 v10, 0x4

    .line 156
    if-nez v9, :cond_4

    .line 157
    .line 158
    const-string v9, "complete {}"

    .line 159
    .line 160
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-interface {v5, v9, v11}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 165
    .line 166
    .line 167
    :try_start_4
    iget-object v8, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 168
    .line 169
    invoke-virtual {v8}, Lorg/eclipse/jetty/http/h;->complete()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-ge v8, v10, :cond_3

    .line 177
    .line 178
    invoke-virtual {v2, v10}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    .line 180
    .line 181
    :cond_3
    :goto_3
    move v8, v0

    .line 182
    goto :goto_5

    .line 183
    :cond_4
    :try_start_5
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 184
    .line 185
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/h;->B()Z

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-eqz v9, :cond_6

    .line 190
    .line 191
    const-string v9, "addChunk"

    .line 192
    .line 193
    new-array v11, v1, [Ljava/lang/Object;

    .line 194
    .line 195
    invoke-interface {v5, v9, v11}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 196
    .line 197
    .line 198
    :try_start_6
    iget-object v8, p0, Lorg/eclipse/jetty/client/c;->r:LL1/d;

    .line 199
    .line 200
    invoke-virtual {v2, v7}, Lorg/eclipse/jetty/client/j;->getRequestContentChunk(LL1/d;)LL1/d;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    iput-object v9, p0, Lorg/eclipse/jetty/client/c;->r:LL1/d;

    .line 205
    .line 206
    iget-object v11, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 207
    .line 208
    if-nez v9, :cond_5

    .line 209
    .line 210
    move v9, v0

    .line 211
    goto :goto_4

    .line 212
    :cond_5
    move v9, v1

    .line 213
    :goto_4
    invoke-virtual {v11, v8, v9}, Lorg/eclipse/jetty/http/h;->g(LL1/d;Z)V

    .line 214
    .line 215
    .line 216
    iget-object v8, p0, Lorg/eclipse/jetty/client/c;->r:LL1/d;

    .line 217
    .line 218
    if-nez v8, :cond_3

    .line 219
    .line 220
    invoke-virtual {v2, v10}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_6
    :goto_5
    :try_start_7
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 225
    .line 226
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    if-eqz v9, :cond_7

    .line 231
    .line 232
    iget-boolean v9, p0, Lorg/eclipse/jetty/client/c;->q:Z

    .line 233
    .line 234
    if-nez v9, :cond_7

    .line 235
    .line 236
    const-string v9, "requestComplete {}"

    .line 237
    .line 238
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    invoke-interface {v5, v9, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 243
    .line 244
    .line 245
    :try_start_8
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/c;->q:Z

    .line 246
    .line 247
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-interface {v8}, Lorg/eclipse/jetty/client/h;->e()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 252
    .line 253
    .line 254
    move v8, v0

    .line 255
    :cond_7
    :try_start_9
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 256
    .line 257
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-nez v9, :cond_8

    .line 262
    .line 263
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 264
    .line 265
    invoke-virtual {v9}, Lorg/eclipse/jetty/http/l;->d()Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    if-eqz v9, :cond_8

    .line 270
    .line 271
    const-string v9, "parsed {}"

    .line 272
    .line 273
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    invoke-interface {v5, v9, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    move v8, v0

    .line 281
    :cond_8
    iget-object v9, p0, LL1/b;->c:LL1/k;

    .line 282
    .line 283
    invoke-interface {v9}, LL1/k;->flush()V

    .line 284
    .line 285
    .line 286
    iget-object v9, p0, Lorg/eclipse/jetty/client/c;->s:LL1/c;

    .line 287
    .line 288
    invoke-interface {v9}, LL1/c;->k()Z

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    if-eqz v9, :cond_9

    .line 293
    .line 294
    const-string v9, "hasProgressed {}"

    .line 295
    .line 296
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-interface {v5, v9, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 301
    .line 302
    .line 303
    move v8, v0

    .line 304
    :cond_9
    :try_start_a
    const-string v9, "finally {} on {} progress={} {}"

    .line 305
    .line 306
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    iget-object v11, p0, LL1/b;->c:LL1/k;

    .line 311
    .line 312
    filled-new-array {v2, p0, v10, v11}, [Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-interface {v5, v9, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    if-nez v4, :cond_a

    .line 320
    .line 321
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 322
    .line 323
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_14

    .line 328
    .line 329
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 330
    .line 331
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_14

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catchall_3
    move-exception v0

    .line 339
    goto/16 :goto_17

    .line 340
    .line 341
    :cond_a
    :goto_6
    if-nez v4, :cond_b

    .line 342
    .line 343
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 344
    .line 345
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/l;->isPersistent()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_b

    .line 350
    .line 351
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 352
    .line 353
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/a;->isPersistent()Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_b

    .line 358
    .line 359
    move v2, v0

    .line 360
    goto :goto_7

    .line 361
    :cond_b
    move v2, v1

    .line 362
    :goto_7
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 363
    .line 364
    invoke-virtual {v5, v2}, Lorg/eclipse/jetty/http/a;->c(Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/c;->p()V

    .line 368
    .line 369
    .line 370
    if-eqz v2, :cond_c

    .line 371
    .line 372
    iget-object v5, p0, LL1/b;->c:LL1/k;

    .line 373
    .line 374
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 375
    .line 376
    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    invoke-virtual {v9}, Lorg/eclipse/jetty/client/g;->g0()J

    .line 381
    .line 382
    .line 383
    move-result-wide v9

    .line 384
    long-to-int v9, v9

    .line 385
    invoke-interface {v5, v9}, LL1/k;->l(I)V

    .line 386
    .line 387
    .line 388
    :cond_c
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 389
    :try_start_b
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 390
    .line 391
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 392
    .line 393
    if-eqz v5, :cond_d

    .line 394
    .line 395
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 396
    .line 397
    invoke-virtual {v9}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 398
    .line 399
    .line 400
    move-result-object v9

    .line 401
    invoke-virtual {v5, v9}, Lorg/eclipse/jetty/client/j;->cancelTimeout(Lorg/eclipse/jetty/client/g;)V

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :catchall_4
    move-exception v0

    .line 406
    goto :goto_c

    .line 407
    :cond_d
    :goto_8
    iget v9, p0, Lorg/eclipse/jetty/client/a;->i:I

    .line 408
    .line 409
    if-ne v9, v6, :cond_f

    .line 410
    .line 411
    iget-object v6, p0, LL1/b;->c:LL1/k;

    .line 412
    .line 413
    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/client/j;->onSwitchProtocol(LL1/k;)LL1/j;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    if-eqz v5, :cond_f

    .line 418
    .line 419
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 420
    .line 421
    if-eqz v3, :cond_e

    .line 422
    .line 423
    iget-object v6, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 424
    .line 425
    invoke-virtual {v6, v3}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 426
    .line 427
    .line 428
    :cond_e
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 429
    .line 430
    move-object v3, v5

    .line 431
    :cond_f
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 432
    .line 433
    if-eqz v5, :cond_12

    .line 434
    .line 435
    if-eqz v2, :cond_11

    .line 436
    .line 437
    if-eq v3, p0, :cond_10

    .line 438
    .line 439
    goto :goto_9

    .line 440
    :cond_10
    iput-object v5, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 441
    .line 442
    goto :goto_a

    .line 443
    :cond_11
    :goto_9
    iget-object v6, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 444
    .line 445
    invoke-virtual {v6, v5}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 446
    .line 447
    .line 448
    :goto_a
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 449
    .line 450
    :cond_12
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 451
    .line 452
    if-nez v5, :cond_13

    .line 453
    .line 454
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->o()Z

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    if-nez v5, :cond_13

    .line 459
    .line 460
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 461
    .line 462
    xor-int/lit8 v2, v2, 0x1

    .line 463
    .line 464
    invoke-virtual {v5, p0, v2}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V

    .line 465
    .line 466
    .line 467
    :cond_13
    monitor-exit p0

    .line 468
    :cond_14
    :goto_b
    move v2, v8

    .line 469
    goto/16 :goto_0

    .line 470
    .line 471
    :goto_c
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 472
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 473
    :goto_d
    :try_start_d
    sget-object v9, Lorg/eclipse/jetty/client/c;->t:LR1/c;

    .line 474
    .line 475
    new-instance v10, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v11, "Failure on "

    .line 481
    .line 482
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    iget-object v11, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 486
    .line 487
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    invoke-interface {v9, v10, v5}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 495
    .line 496
    .line 497
    :try_start_e
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 498
    if-eqz v2, :cond_1b

    .line 499
    .line 500
    :try_start_f
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    const/16 v10, 0xa

    .line 505
    .line 506
    if-eq v4, v10, :cond_15

    .line 507
    .line 508
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    const/16 v10, 0xb

    .line 513
    .line 514
    if-eq v4, v10, :cond_15

    .line 515
    .line 516
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->isDone()Z

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    if-nez v4, :cond_15

    .line 521
    .line 522
    const/16 v4, 0x9

    .line 523
    .line 524
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 525
    .line 526
    .line 527
    move-result v4

    .line 528
    if-eqz v4, :cond_15

    .line 529
    .line 530
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    invoke-interface {v4, v5}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 535
    .line 536
    .line 537
    goto :goto_e

    .line 538
    :catchall_5
    move-exception v4

    .line 539
    goto/16 :goto_11

    .line 540
    .line 541
    :cond_15
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 542
    :try_start_10
    const-string v4, "finally {} on {} progress={} {}"

    .line 543
    .line 544
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    iget-object v10, p0, LL1/b;->c:LL1/k;

    .line 549
    .line 550
    filled-new-array {v2, p0, v5, v10}, [Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    invoke-interface {v9, v4, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 558
    .line 559
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/a;->c(Z)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/c;->p()V

    .line 563
    .line 564
    .line 565
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 566
    :try_start_11
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 567
    .line 568
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 569
    .line 570
    if-eqz v2, :cond_16

    .line 571
    .line 572
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 573
    .line 574
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/j;->cancelTimeout(Lorg/eclipse/jetty/client/g;)V

    .line 579
    .line 580
    .line 581
    goto :goto_f

    .line 582
    :catchall_6
    move-exception v0

    .line 583
    goto :goto_10

    .line 584
    :cond_16
    :goto_f
    iget v4, p0, Lorg/eclipse/jetty/client/a;->i:I

    .line 585
    .line 586
    if-ne v4, v6, :cond_18

    .line 587
    .line 588
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 589
    .line 590
    invoke-virtual {v2, v4}, Lorg/eclipse/jetty/client/j;->onSwitchProtocol(LL1/k;)LL1/j;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    if-eqz v2, :cond_18

    .line 595
    .line 596
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 597
    .line 598
    if-eqz v3, :cond_17

    .line 599
    .line 600
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 601
    .line 602
    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 603
    .line 604
    .line 605
    :cond_17
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 606
    .line 607
    move-object v3, v2

    .line 608
    :cond_18
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 609
    .line 610
    if-eqz v2, :cond_19

    .line 611
    .line 612
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 613
    .line 614
    invoke-virtual {v4, v2}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 615
    .line 616
    .line 617
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 618
    .line 619
    :cond_19
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 620
    .line 621
    if-nez v2, :cond_1a

    .line 622
    .line 623
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->o()Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    if-nez v2, :cond_1a

    .line 628
    .line 629
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 630
    .line 631
    invoke-virtual {v2, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V

    .line 632
    .line 633
    .line 634
    :cond_1a
    monitor-exit p0

    .line 635
    move v4, v0

    .line 636
    goto/16 :goto_b

    .line 637
    .line 638
    :goto_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 639
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 640
    :cond_1b
    :try_start_13
    instance-of v4, v5, Ljava/io/IOException;

    .line 641
    .line 642
    if-nez v4, :cond_1e

    .line 643
    .line 644
    instance-of v4, v5, Ljava/lang/Error;

    .line 645
    .line 646
    if-nez v4, :cond_1d

    .line 647
    .line 648
    instance-of v4, v5, Ljava/lang/RuntimeException;

    .line 649
    .line 650
    if-eqz v4, :cond_1c

    .line 651
    .line 652
    check-cast v5, Ljava/lang/RuntimeException;

    .line 653
    .line 654
    throw v5

    .line 655
    :cond_1c
    new-instance v4, Ljava/lang/RuntimeException;

    .line 656
    .line 657
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 658
    .line 659
    .line 660
    throw v4

    .line 661
    :cond_1d
    check-cast v5, Ljava/lang/Error;

    .line 662
    .line 663
    throw v5

    .line 664
    :cond_1e
    check-cast v5, Ljava/io/IOException;

    .line 665
    .line 666
    throw v5

    .line 667
    :goto_11
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 668
    :try_start_14
    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 669
    :catchall_7
    move-exception v4

    .line 670
    move v5, v0

    .line 671
    goto :goto_12

    .line 672
    :catchall_8
    move-exception v5

    .line 673
    move-object v12, v5

    .line 674
    move v5, v4

    .line 675
    move-object v4, v12

    .line 676
    :goto_12
    :try_start_15
    sget-object v9, Lorg/eclipse/jetty/client/c;->t:LR1/c;

    .line 677
    .line 678
    const-string v10, "finally {} on {} progress={} {}"

    .line 679
    .line 680
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 681
    .line 682
    .line 683
    move-result-object v8

    .line 684
    iget-object v11, p0, LL1/b;->c:LL1/k;

    .line 685
    .line 686
    filled-new-array {v2, p0, v8, v11}, [Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-interface {v9, v10, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    if-nez v5, :cond_1f

    .line 694
    .line 695
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 696
    .line 697
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    if-eqz v2, :cond_29

    .line 702
    .line 703
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 704
    .line 705
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    if-eqz v2, :cond_29

    .line 710
    .line 711
    :cond_1f
    if-nez v5, :cond_20

    .line 712
    .line 713
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 714
    .line 715
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/l;->isPersistent()Z

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    if-eqz v2, :cond_20

    .line 720
    .line 721
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 722
    .line 723
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/a;->isPersistent()Z

    .line 724
    .line 725
    .line 726
    move-result v2

    .line 727
    if-eqz v2, :cond_20

    .line 728
    .line 729
    move v1, v0

    .line 730
    :cond_20
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 731
    .line 732
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/a;->c(Z)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/c;->p()V

    .line 736
    .line 737
    .line 738
    if-eqz v1, :cond_21

    .line 739
    .line 740
    iget-object v2, p0, LL1/b;->c:LL1/k;

    .line 741
    .line 742
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 743
    .line 744
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 745
    .line 746
    .line 747
    move-result-object v5

    .line 748
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/g;->g0()J

    .line 749
    .line 750
    .line 751
    move-result-wide v8

    .line 752
    long-to-int v5, v8

    .line 753
    invoke-interface {v2, v5}, LL1/k;->l(I)V

    .line 754
    .line 755
    .line 756
    :cond_21
    monitor-enter p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 757
    :try_start_16
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 758
    .line 759
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 760
    .line 761
    if-eqz v2, :cond_22

    .line 762
    .line 763
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 764
    .line 765
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/client/j;->cancelTimeout(Lorg/eclipse/jetty/client/g;)V

    .line 770
    .line 771
    .line 772
    goto :goto_13

    .line 773
    :catchall_9
    move-exception v0

    .line 774
    goto :goto_16

    .line 775
    :cond_22
    :goto_13
    iget v5, p0, Lorg/eclipse/jetty/client/a;->i:I

    .line 776
    .line 777
    if-ne v5, v6, :cond_24

    .line 778
    .line 779
    iget-object v5, p0, LL1/b;->c:LL1/k;

    .line 780
    .line 781
    invoke-virtual {v2, v5}, Lorg/eclipse/jetty/client/j;->onSwitchProtocol(LL1/k;)LL1/j;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    if-eqz v2, :cond_24

    .line 786
    .line 787
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 788
    .line 789
    if-eqz v3, :cond_23

    .line 790
    .line 791
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 792
    .line 793
    invoke-virtual {v5, v3}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 794
    .line 795
    .line 796
    :cond_23
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 797
    .line 798
    move-object v3, v2

    .line 799
    :cond_24
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 800
    .line 801
    if-eqz v2, :cond_27

    .line 802
    .line 803
    if-eqz v1, :cond_26

    .line 804
    .line 805
    if-eq v3, p0, :cond_25

    .line 806
    .line 807
    goto :goto_14

    .line 808
    :cond_25
    iput-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 809
    .line 810
    goto :goto_15

    .line 811
    :cond_26
    :goto_14
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 812
    .line 813
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 814
    .line 815
    .line 816
    :goto_15
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 817
    .line 818
    :cond_27
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 819
    .line 820
    if-nez v2, :cond_28

    .line 821
    .line 822
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->o()Z

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    if-nez v2, :cond_28

    .line 827
    .line 828
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 829
    .line 830
    xor-int/2addr v0, v1

    .line 831
    invoke-virtual {v2, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V

    .line 832
    .line 833
    .line 834
    :cond_28
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 835
    :cond_29
    :try_start_17
    throw v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 836
    :goto_16
    :try_start_18
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 837
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 838
    :goto_17
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 839
    .line 840
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/l;->a()V

    .line 841
    .line 842
    .line 843
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 844
    .line 845
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->a()V

    .line 846
    .line 847
    .line 848
    sget-object v1, Lorg/eclipse/jetty/client/c;->t:LR1/c;

    .line 849
    .line 850
    const-string v2, "unhandle {} on {}"

    .line 851
    .line 852
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 853
    .line 854
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 855
    .line 856
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    invoke-interface {v1, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    throw v0

    .line 864
    :cond_2a
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 865
    .line 866
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l;->a()V

    .line 867
    .line 868
    .line 869
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 870
    .line 871
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/a;->a()V

    .line 872
    .line 873
    .line 874
    sget-object v0, Lorg/eclipse/jetty/client/c;->t:LR1/c;

    .line 875
    .line 876
    const-string v1, "unhandle {} on {}"

    .line 877
    .line 878
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 879
    .line 880
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 881
    .line 882
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    return-object v3
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/c;->q:Z

    .line 3
    .line 4
    invoke-super {p0}, Lorg/eclipse/jetty/client/a;->p()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public q(Lorg/eclipse/jetty/client/j;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/a;->q(Lorg/eclipse/jetty/client/j;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/eclipse/jetty/client/c;->s:LL1/c;

    .line 8
    .line 9
    invoke-interface {v0}, LL1/c;->q()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return p1
.end method

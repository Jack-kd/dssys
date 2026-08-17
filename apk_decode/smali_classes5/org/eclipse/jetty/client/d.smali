.class public Lorg/eclipse/jetty/client/d;
.super Lorg/eclipse/jetty/client/a;
.source "SourceFile"


# static fields
.field public static final t:LR1/c;


# instance fields
.field public q:Z

.field public r:LL1/d;

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/client/d;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/client/d;->t:LR1/c;

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
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/d;->s:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 2
    .line 3
    const-string v1, "onIdleExpired {}ms {} {}"

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, LL1/b;->c:LL1/k;

    .line 10
    .line 11
    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, v1, p1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/d;->s:Z

    .line 20
    .line 21
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 22
    .line 23
    invoke-interface {p1}, LL1/k;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    sget-object p2, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 29
    .line 30
    invoke-interface {p2, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :try_start_1
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 34
    .line 35
    invoke-interface {p1}, LL1/k;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p1

    .line 40
    sget-object p2, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 41
    .line 42
    invoke-interface {p2, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    monitor-enter p0

    .line 46
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p1
.end method

.method public handle()LL1/j;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    move v2, v0

    .line 4
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 5
    .line 6
    invoke-interface {v3}, LL1/k;->isOpen()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-eqz v3, :cond_23

    .line 11
    .line 12
    if-ne v1, p0, :cond_23

    .line 13
    .line 14
    sget-object v3, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 15
    .line 16
    const-string v4, "open={} more={}"

    .line 17
    .line 18
    iget-object v5, p0, LL1/b;->c:LL1/k;

    .line 19
    .line 20
    invoke-interface {v5}, LL1/k;->isOpen()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iget-object v6, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 29
    .line 30
    invoke-virtual {v6}, Lorg/eclipse/jetty/http/l;->i()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v3, v4, v5}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    :goto_1
    if-nez v3, :cond_2

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 54
    .line 55
    iget-boolean v4, p0, Lorg/eclipse/jetty/client/d;->s:Z

    .line 56
    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_14

    .line 68
    .line 69
    :catch_0
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    sget-object v4, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 77
    .line 78
    const-string v5, "exchange {}"

    .line 79
    .line 80
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-interface {v4, v5, v6}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 85
    .line 86
    .line 87
    const/16 v5, 0x65

    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    const/4 v7, 0x0

    .line 91
    :try_start_5
    iget-object v8, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 92
    .line 93
    invoke-virtual {v8}, Lorg/eclipse/jetty/http/a;->e()Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    const/4 v9, 0x2

    .line 98
    if-nez v8, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-ne v8, v9, :cond_3

    .line 105
    .line 106
    const-string v8, "commit"

    .line 107
    .line 108
    new-array v10, v0, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-interface {v4, v8, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->l()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_1
    move-exception v4

    .line 118
    goto/16 :goto_a

    .line 119
    .line 120
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 121
    .line 122
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/a;->e()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-eqz v4, :cond_8

    .line 127
    .line 128
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 129
    .line 130
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_8

    .line 135
    .line 136
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 137
    .line 138
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/h;->l()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-lez v4, :cond_4

    .line 143
    .line 144
    sget-object v4, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 145
    .line 146
    const-string v8, "flushed"

    .line 147
    .line 148
    new-array v10, v0, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-interface {v4, v8, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 154
    .line 155
    invoke-virtual {v4, v9}, Lorg/eclipse/jetty/http/a;->w(I)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    iget-object v4, p0, Lorg/eclipse/jetty/client/d;->r:LL1/d;

    .line 162
    .line 163
    if-nez v4, :cond_5

    .line 164
    .line 165
    invoke-virtual {v3, v7}, Lorg/eclipse/jetty/client/j;->getRequestContentChunk(LL1/d;)LL1/d;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    iput-object v4, p0, Lorg/eclipse/jetty/client/d;->r:LL1/d;

    .line 170
    .line 171
    :cond_5
    iget-object v4, p0, Lorg/eclipse/jetty/client/d;->r:LL1/d;

    .line 172
    .line 173
    if-nez v4, :cond_6

    .line 174
    .line 175
    sget-object v4, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 176
    .line 177
    const-string v8, "complete"

    .line 178
    .line 179
    new-array v10, v0, [Ljava/lang/Object;

    .line 180
    .line 181
    invoke-interface {v4, v8, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 185
    .line 186
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/h;->complete()V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_6
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 191
    .line 192
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/h;->B()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_3

    .line 197
    .line 198
    sget-object v4, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 199
    .line 200
    const-string v8, "addChunk"

    .line 201
    .line 202
    new-array v10, v0, [Ljava/lang/Object;

    .line 203
    .line 204
    invoke-interface {v4, v8, v10}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iget-object v4, p0, Lorg/eclipse/jetty/client/d;->r:LL1/d;

    .line 208
    .line 209
    invoke-virtual {v3, v7}, Lorg/eclipse/jetty/client/j;->getRequestContentChunk(LL1/d;)LL1/d;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    iput-object v8, p0, Lorg/eclipse/jetty/client/d;->r:LL1/d;

    .line 214
    .line 215
    iget-object v10, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 216
    .line 217
    if-nez v8, :cond_7

    .line 218
    .line 219
    move v8, v6

    .line 220
    goto :goto_3

    .line 221
    :cond_7
    move v8, v0

    .line 222
    :goto_3
    invoke-virtual {v10, v4, v8}, Lorg/eclipse/jetty/http/h;->g(LL1/d;Z)V

    .line 223
    .line 224
    .line 225
    iget-object v4, p0, Lorg/eclipse/jetty/client/d;->r:LL1/d;

    .line 226
    .line 227
    if-nez v4, :cond_3

    .line 228
    .line 229
    const/4 v4, 0x4

    .line 230
    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_8
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 235
    .line 236
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_9

    .line 241
    .line 242
    iget-boolean v4, p0, Lorg/eclipse/jetty/client/d;->q:Z

    .line 243
    .line 244
    if-nez v4, :cond_9

    .line 245
    .line 246
    sget-object v4, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 247
    .line 248
    const-string v8, "requestComplete"

    .line 249
    .line 250
    new-array v9, v0, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-interface {v4, v8, v9}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    iput-boolean v6, p0, Lorg/eclipse/jetty/client/d;->q:Z

    .line 256
    .line 257
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-interface {v4}, Lorg/eclipse/jetty/client/h;->e()V

    .line 262
    .line 263
    .line 264
    :cond_9
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 265
    .line 266
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-nez v4, :cond_a

    .line 271
    .line 272
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 273
    .line 274
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/l;->d()Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_a

    .line 279
    .line 280
    sget-object v4, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 281
    .line 282
    const-string v8, "parsed"

    .line 283
    .line 284
    new-array v9, v0, [Ljava/lang/Object;

    .line 285
    .line 286
    invoke-interface {v4, v8, v9}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    :cond_a
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 290
    .line 291
    invoke-interface {v4}, LL1/k;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 292
    .line 293
    .line 294
    :try_start_6
    sget-object v3, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 295
    .line 296
    const-string v4, "{} {}"

    .line 297
    .line 298
    iget-object v8, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 299
    .line 300
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 301
    .line 302
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-interface {v3, v4, v8}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    const-string v4, "{}"

    .line 310
    .line 311
    iget-object v8, p0, LL1/b;->c:LL1/k;

    .line 312
    .line 313
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    invoke-interface {v3, v4, v8}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    if-nez v2, :cond_b

    .line 321
    .line 322
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 323
    .line 324
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    if-eqz v3, :cond_0

    .line 329
    .line 330
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 331
    .line 332
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_0

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :catchall_2
    move-exception v0

    .line 340
    goto/16 :goto_15

    .line 341
    .line 342
    :cond_b
    :goto_4
    if-nez v2, :cond_c

    .line 343
    .line 344
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 345
    .line 346
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/l;->isPersistent()Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-eqz v3, :cond_c

    .line 351
    .line 352
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 353
    .line 354
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/a;->isPersistent()Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_c

    .line 359
    .line 360
    goto :goto_5

    .line 361
    :cond_c
    move v6, v0

    .line 362
    :goto_5
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 363
    .line 364
    invoke-virtual {v3, v6}, Lorg/eclipse/jetty/http/a;->c(Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/d;->p()V

    .line 368
    .line 369
    .line 370
    if-eqz v6, :cond_d

    .line 371
    .line 372
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 373
    .line 374
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 375
    .line 376
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/g;->g0()J

    .line 381
    .line 382
    .line 383
    move-result-wide v8

    .line 384
    long-to-int v4, v8

    .line 385
    invoke-interface {v3, v4}, LL1/k;->l(I)V

    .line 386
    .line 387
    .line 388
    :cond_d
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 389
    :try_start_7
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 390
    .line 391
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 392
    .line 393
    if-eqz v3, :cond_e

    .line 394
    .line 395
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 396
    .line 397
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/j;->cancelTimeout(Lorg/eclipse/jetty/client/g;)V

    .line 402
    .line 403
    .line 404
    goto :goto_6

    .line 405
    :catchall_3
    move-exception v0

    .line 406
    goto :goto_9

    .line 407
    :cond_e
    :goto_6
    iget v4, p0, Lorg/eclipse/jetty/client/a;->i:I

    .line 408
    .line 409
    if-ne v4, v5, :cond_f

    .line 410
    .line 411
    iget-object v1, p0, LL1/b;->c:LL1/k;

    .line 412
    .line 413
    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/client/j;->onSwitchProtocol(LL1/k;)LL1/j;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 418
    .line 419
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 420
    .line 421
    :cond_f
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 422
    .line 423
    if-eqz v3, :cond_12

    .line 424
    .line 425
    if-eqz v6, :cond_11

    .line 426
    .line 427
    if-eq v1, p0, :cond_10

    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_10
    iput-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_11
    :goto_7
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 434
    .line 435
    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 436
    .line 437
    .line 438
    :goto_8
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 439
    .line 440
    :cond_12
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 441
    .line 442
    if-nez v3, :cond_13

    .line 443
    .line 444
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->o()Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-nez v3, :cond_13

    .line 449
    .line 450
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 451
    .line 452
    xor-int/lit8 v4, v6, 0x1

    .line 453
    .line 454
    invoke-virtual {v3, p0, v4}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V

    .line 455
    .line 456
    .line 457
    :cond_13
    monitor-exit p0

    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :goto_9
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 461
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 462
    :goto_a
    :try_start_9
    sget-object v8, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 463
    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    const-string v10, "Failure on "

    .line 470
    .line 471
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object v10, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 475
    .line 476
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-interface {v8, v9, v4}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 484
    .line 485
    .line 486
    :try_start_a
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 487
    :try_start_b
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    const/16 v9, 0xa

    .line 492
    .line 493
    if-eq v2, v9, :cond_14

    .line 494
    .line 495
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    const/16 v9, 0xb

    .line 500
    .line 501
    if-eq v2, v9, :cond_14

    .line 502
    .line 503
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->isDone()Z

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    if-nez v2, :cond_14

    .line 508
    .line 509
    const/16 v2, 0x9

    .line 510
    .line 511
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_14

    .line 516
    .line 517
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-interface {v2, v4}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 522
    .line 523
    .line 524
    goto :goto_b

    .line 525
    :catchall_4
    move-exception v2

    .line 526
    goto :goto_e

    .line 527
    :cond_14
    :goto_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 528
    :try_start_c
    const-string v2, "{} {}"

    .line 529
    .line 530
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 531
    .line 532
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 533
    .line 534
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-interface {v8, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    const-string v2, "{}"

    .line 542
    .line 543
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 544
    .line 545
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-interface {v8, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 553
    .line 554
    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/http/a;->c(Z)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/d;->p()V

    .line 558
    .line 559
    .line 560
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 561
    :try_start_d
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 562
    .line 563
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 564
    .line 565
    if-eqz v2, :cond_15

    .line 566
    .line 567
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 568
    .line 569
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/client/j;->cancelTimeout(Lorg/eclipse/jetty/client/g;)V

    .line 574
    .line 575
    .line 576
    goto :goto_c

    .line 577
    :catchall_5
    move-exception v0

    .line 578
    goto :goto_d

    .line 579
    :cond_15
    :goto_c
    iget v3, p0, Lorg/eclipse/jetty/client/a;->i:I

    .line 580
    .line 581
    if-ne v3, v5, :cond_16

    .line 582
    .line 583
    iget-object v1, p0, LL1/b;->c:LL1/k;

    .line 584
    .line 585
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/client/j;->onSwitchProtocol(LL1/k;)LL1/j;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 590
    .line 591
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 592
    .line 593
    :cond_16
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 594
    .line 595
    if-eqz v2, :cond_17

    .line 596
    .line 597
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 598
    .line 599
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 600
    .line 601
    .line 602
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 603
    .line 604
    :cond_17
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 605
    .line 606
    if-nez v2, :cond_18

    .line 607
    .line 608
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->o()Z

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    if-nez v2, :cond_18

    .line 613
    .line 614
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 615
    .line 616
    invoke-virtual {v2, p0, v6}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V

    .line 617
    .line 618
    .line 619
    :cond_18
    monitor-exit p0

    .line 620
    move v2, v6

    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :goto_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 624
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 625
    :goto_e
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 626
    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 627
    :catchall_6
    move-exception v2

    .line 628
    move v3, v6

    .line 629
    goto :goto_f

    .line 630
    :catchall_7
    move-exception v3

    .line 631
    move-object v11, v3

    .line 632
    move v3, v2

    .line 633
    move-object v2, v11

    .line 634
    :goto_f
    :try_start_11
    sget-object v4, Lorg/eclipse/jetty/client/d;->t:LR1/c;

    .line 635
    .line 636
    const-string v8, "{} {}"

    .line 637
    .line 638
    iget-object v9, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 639
    .line 640
    iget-object v10, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 641
    .line 642
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    invoke-interface {v4, v8, v9}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    .line 648
    .line 649
    const-string v8, "{}"

    .line 650
    .line 651
    iget-object v9, p0, LL1/b;->c:LL1/k;

    .line 652
    .line 653
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v9

    .line 657
    invoke-interface {v4, v8, v9}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    if-nez v3, :cond_19

    .line 661
    .line 662
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 663
    .line 664
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/a;->b()Z

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    if-eqz v4, :cond_22

    .line 669
    .line 670
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 671
    .line 672
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/l;->b()Z

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    if-eqz v4, :cond_22

    .line 677
    .line 678
    :cond_19
    if-nez v3, :cond_1a

    .line 679
    .line 680
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 681
    .line 682
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/l;->isPersistent()Z

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    if-eqz v3, :cond_1a

    .line 687
    .line 688
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 689
    .line 690
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/a;->isPersistent()Z

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    if-eqz v3, :cond_1a

    .line 695
    .line 696
    move v0, v6

    .line 697
    :cond_1a
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 698
    .line 699
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/http/a;->c(Z)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/d;->p()V

    .line 703
    .line 704
    .line 705
    if-eqz v0, :cond_1b

    .line 706
    .line 707
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 708
    .line 709
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 710
    .line 711
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 712
    .line 713
    .line 714
    move-result-object v4

    .line 715
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/g;->g0()J

    .line 716
    .line 717
    .line 718
    move-result-wide v8

    .line 719
    long-to-int v4, v8

    .line 720
    invoke-interface {v3, v4}, LL1/k;->l(I)V

    .line 721
    .line 722
    .line 723
    :cond_1b
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 724
    :try_start_12
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 725
    .line 726
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 727
    .line 728
    if-eqz v3, :cond_1c

    .line 729
    .line 730
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 731
    .line 732
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/client/j;->cancelTimeout(Lorg/eclipse/jetty/client/g;)V

    .line 737
    .line 738
    .line 739
    goto :goto_10

    .line 740
    :catchall_8
    move-exception v0

    .line 741
    goto :goto_13

    .line 742
    :cond_1c
    :goto_10
    iget v4, p0, Lorg/eclipse/jetty/client/a;->i:I

    .line 743
    .line 744
    if-ne v4, v5, :cond_1d

    .line 745
    .line 746
    iget-object v1, p0, LL1/b;->c:LL1/k;

    .line 747
    .line 748
    invoke-virtual {v3, v1}, Lorg/eclipse/jetty/client/j;->onSwitchProtocol(LL1/k;)LL1/j;

    .line 749
    .line 750
    .line 751
    move-result-object v1

    .line 752
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 753
    .line 754
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 755
    .line 756
    :cond_1d
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 757
    .line 758
    if-eqz v3, :cond_20

    .line 759
    .line 760
    if-eqz v0, :cond_1f

    .line 761
    .line 762
    if-eq v1, p0, :cond_1e

    .line 763
    .line 764
    goto :goto_11

    .line 765
    :cond_1e
    iput-object v3, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 766
    .line 767
    goto :goto_12

    .line 768
    :cond_1f
    :goto_11
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 769
    .line 770
    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/client/HttpDestination;->v(Lorg/eclipse/jetty/client/j;)V

    .line 771
    .line 772
    .line 773
    :goto_12
    iput-object v7, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 774
    .line 775
    :cond_20
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 776
    .line 777
    if-nez v1, :cond_21

    .line 778
    .line 779
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->o()Z

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    if-nez v1, :cond_21

    .line 784
    .line 785
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 786
    .line 787
    xor-int/2addr v0, v6

    .line 788
    invoke-virtual {v1, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V

    .line 789
    .line 790
    .line 791
    :cond_21
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 792
    :cond_22
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 793
    :goto_13
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 794
    :try_start_15
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 795
    :goto_14
    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 796
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 797
    :cond_23
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 798
    .line 799
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l;->a()V

    .line 800
    .line 801
    .line 802
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 803
    .line 804
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/a;->a()V

    .line 805
    .line 806
    .line 807
    return-object v1

    .line 808
    :goto_15
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 809
    .line 810
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/l;->a()V

    .line 811
    .line 812
    .line 813
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 814
    .line 815
    invoke-virtual {v1}, Lorg/eclipse/jetty/http/a;->a()V

    .line 816
    .line 817
    .line 818
    throw v0
.end method

.method public n(Lorg/eclipse/jetty/client/j;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/client/a;->n(Lorg/eclipse/jetty/client/j;)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/d;->s:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/d;->q:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/d;->s:Z

    .line 5
    .line 6
    invoke-super {p0}, Lorg/eclipse/jetty/client/a;->p()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public q(Lorg/eclipse/jetty/client/j;)Z
    .locals 0

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
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1

    .line 16
    :cond_0
    return p1
.end method

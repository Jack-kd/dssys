.class public LW1/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW1/b;


# direct methods
.method public constructor <init>(LW1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW1/b$c;->b:LW1/b;

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
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 3
    .line 4
    invoke-static {v1}, LW1/b;->P(LW1/b;)Ljava/util/concurrent/BlockingQueue;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    .line 14
    move v2, v0

    .line 15
    :goto_0
    :try_start_1
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 16
    .line 17
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_8

    .line 22
    .line 23
    :goto_1
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 26
    .line 27
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 34
    .line 35
    invoke-virtual {v3, v1}, LW1/b;->c0(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 39
    .line 40
    invoke-static {v1}, LW1/b;->P(LW1/b;)Ljava/util/concurrent/BlockingQueue;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto/16 :goto_a

    .line 53
    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :catch_1
    move-exception v0

    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :cond_0
    :try_start_2
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 61
    .line 62
    invoke-static {v3}, LW1/b;->Q(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 67
    .line 68
    .line 69
    :goto_2
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 70
    .line 71
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_7

    .line 76
    .line 77
    if-nez v1, :cond_7

    .line 78
    .line 79
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 80
    .line 81
    invoke-static {v1}, LW1/b;->R(LW1/b;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-gtz v1, :cond_1

    .line 86
    .line 87
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 88
    .line 89
    invoke-static {v1}, LW1/b;->P(LW1/b;)Ljava/util/concurrent/BlockingQueue;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/lang/Runnable;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_1
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 104
    .line 105
    invoke-static {v1}, LW1/b;->S(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 114
    .line 115
    invoke-static {v3}, LW1/b;->T(LW1/b;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-le v1, v3, :cond_6

    .line 120
    .line 121
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 122
    .line 123
    invoke-static {v3}, LW1/b;->U(LW1/b;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    const-wide/16 v7, 0x0

    .line 136
    .line 137
    cmp-long v7, v3, v7

    .line 138
    .line 139
    if-eqz v7, :cond_2

    .line 140
    .line 141
    sub-long v7, v5, v3

    .line 142
    .line 143
    iget-object v9, p0, LW1/b$c;->b:LW1/b;

    .line 144
    .line 145
    invoke-static {v9}, LW1/b;->R(LW1/b;)I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    int-to-long v9, v9

    .line 150
    cmp-long v7, v7, v9

    .line 151
    .line 152
    if-lez v7, :cond_6

    .line 153
    .line 154
    :cond_2
    iget-object v7, p0, LW1/b$c;->b:LW1/b;

    .line 155
    .line 156
    invoke-static {v7}, LW1/b;->U(LW1/b;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {v7, v3, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_3

    .line 165
    .line 166
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 167
    .line 168
    invoke-static {v3}, LW1/b;->S(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    add-int/lit8 v4, v1, -0x1

    .line 173
    .line 174
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 175
    .line 176
    .line 177
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    if-eqz v1, :cond_3

    .line 179
    .line 180
    const/4 v1, 0x1

    .line 181
    goto :goto_3

    .line 182
    :cond_3
    move v1, v0

    .line 183
    :goto_3
    if-eqz v1, :cond_5

    .line 184
    .line 185
    :try_start_3
    iget-object v0, p0, LW1/b$c;->b:LW1/b;

    .line 186
    .line 187
    invoke-static {v0}, LW1/b;->Q(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 192
    .line 193
    .line 194
    if-nez v1, :cond_4

    .line 195
    .line 196
    :goto_4
    iget-object v0, p0, LW1/b$c;->b:LW1/b;

    .line 197
    .line 198
    invoke-static {v0}, LW1/b;->S(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 203
    .line 204
    .line 205
    :cond_4
    iget-object v0, p0, LW1/b$c;->b:LW1/b;

    .line 206
    .line 207
    invoke-static {v0}, LW1/b;->X(LW1/b;)Lorg/eclipse/jetty/util/g;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/g;->remove(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :catchall_2
    move-exception v0

    .line 220
    move v2, v1

    .line 221
    goto/16 :goto_a

    .line 222
    .line 223
    :catch_2
    move-exception v0

    .line 224
    move v2, v1

    .line 225
    goto :goto_6

    .line 226
    :catch_3
    move-exception v0

    .line 227
    move v2, v1

    .line 228
    goto :goto_8

    .line 229
    :cond_5
    move v2, v1

    .line 230
    :cond_6
    :try_start_4
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 231
    .line 232
    invoke-static {v1}, LW1/b;->V(LW1/b;)Ljava/lang/Runnable;

    .line 233
    .line 234
    .line 235
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 236
    goto/16 :goto_2

    .line 237
    .line 238
    :cond_7
    :try_start_5
    iget-object v3, p0, LW1/b$c;->b:LW1/b;

    .line 239
    .line 240
    invoke-static {v3}, LW1/b;->Q(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :goto_5
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 250
    .line 251
    invoke-static {v1}, LW1/b;->Q(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 256
    .line 257
    .line 258
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    :cond_8
    if-nez v2, :cond_4

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :catchall_3
    move-exception v1

    .line 263
    move v2, v0

    .line 264
    move-object v0, v1

    .line 265
    goto :goto_a

    .line 266
    :catch_4
    move-exception v1

    .line 267
    move v2, v0

    .line 268
    move-object v0, v1

    .line 269
    goto :goto_6

    .line 270
    :catch_5
    move-exception v1

    .line 271
    move v2, v0

    .line 272
    move-object v0, v1

    .line 273
    goto :goto_8

    .line 274
    :goto_6
    :try_start_6
    invoke-static {}, LW1/b;->W()LR1/c;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 279
    .line 280
    .line 281
    if-nez v2, :cond_9

    .line 282
    .line 283
    :goto_7
    iget-object v0, p0, LW1/b$c;->b:LW1/b;

    .line 284
    .line 285
    invoke-static {v0}, LW1/b;->S(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 290
    .line 291
    .line 292
    :cond_9
    iget-object v0, p0, LW1/b$c;->b:LW1/b;

    .line 293
    .line 294
    invoke-static {v0}, LW1/b;->X(LW1/b;)Lorg/eclipse/jetty/util/g;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/g;->remove(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    goto :goto_9

    .line 306
    :goto_8
    :try_start_7
    invoke-static {}, LW1/b;->W()LR1/c;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 311
    .line 312
    .line 313
    if-nez v2, :cond_9

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :goto_9
    return-void

    .line 317
    :goto_a
    if-nez v2, :cond_a

    .line 318
    .line 319
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 320
    .line 321
    invoke-static {v1}, LW1/b;->S(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 326
    .line 327
    .line 328
    :cond_a
    iget-object v1, p0, LW1/b$c;->b:LW1/b;

    .line 329
    .line 330
    invoke-static {v1}, LW1/b;->X(LW1/b;)Lorg/eclipse/jetty/util/g;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/g;->remove(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    throw v0
.end method

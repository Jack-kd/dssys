.class public LO1/a$a;
.super Lorg/eclipse/jetty/io/bio/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements LL1/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public volatile k:LL1/j;

.field public final l:Ljava/net/Socket;

.field public final synthetic m:LO1/a;


# direct methods
.method public constructor <init>(LO1/a;Ljava/net/Socket;)V
    .locals 1

    .line 1
    iput-object p1, p0, LO1/a$a;->m:LO1/a;

    .line 2
    .line 3
    invoke-static {p1}, LO1/a;->y0(LO1/a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, p2, v0}, Lorg/eclipse/jetty/io/bio/a;-><init>(Ljava/net/Socket;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, LO1/a;->B0(LL1/k;)LL1/j;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, LO1/a$a;->k:LL1/j;

    .line 15
    .line 16
    iput-object p2, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LO1/a$a;->k:LL1/j;

    .line 2
    .line 3
    instance-of v0, v0, LN1/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LO1/a$a;->k:LL1/j;

    .line 8
    .line 9
    check-cast v0, LN1/c;

    .line 10
    .line 11
    invoke-virtual {v0}, LN1/c;->r()LN1/k;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, LN1/k;->b()LN1/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, LN1/d;->a()V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/a;->close()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, LN1/a;->u0()LW1/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 10
    .line 11
    invoke-virtual {v0}, LN1/a;->u0()LW1/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p0}, LW1/d;->dispatch(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, LO1/a$a;->k:LL1/j;

    .line 28
    .line 29
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "dispatch failed for {}"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, LO1/a$a;->close()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 2
    .line 3
    iget-object v1, p0, LO1/a$a;->k:LL1/j;

    .line 4
    .line 5
    invoke-static {v0, v1}, LO1/a;->z0(LO1/a;LL1/j;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 9
    .line 10
    iget-object v0, v0, LO1/a;->L:Ljava/util/Set;

    .line 11
    .line 12
    monitor-enter v0
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 14
    .line 15
    iget-object v1, v1, LO1/a;->L:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 21
    :goto_0
    :try_start_2
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->v()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, LO1/a$a;->k:LL1/j;

    .line 36
    .line 37
    invoke-interface {v0}, LL1/j;->isIdle()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 44
    .line 45
    invoke-virtual {v0}, LN1/a;->r()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 52
    .line 53
    invoke-virtual {v0}, LN1/a;->r0()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/bio/a;->l(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto/16 :goto_d

    .line 63
    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :catch_1
    move-exception v0

    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :catch_2
    move-exception v0

    .line 71
    goto/16 :goto_8

    .line 72
    .line 73
    :catch_3
    move-exception v0

    .line 74
    goto/16 :goto_a

    .line 75
    .line 76
    :cond_0
    :goto_1
    iget-object v0, p0, LO1/a$a;->k:LL1/j;

    .line 77
    .line 78
    invoke-interface {v0}, LL1/j;->handle()LL1/j;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, LO1/a$a;->k:LL1/j;
    :try_end_2
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 86
    .line 87
    iget-object v1, p0, LO1/a$a;->k:LL1/j;

    .line 88
    .line 89
    invoke-static {v0, v1}, LO1/a;->A0(LO1/a;LL1/j;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 93
    .line 94
    iget-object v0, v0, LO1/a;->L:Ljava/util/Set;

    .line 95
    .line 96
    monitor-enter v0

    .line 97
    :try_start_3
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 98
    .line 99
    iget-object v1, v1, LO1/a;->L:Ljava/util/Set;

    .line 100
    .line 101
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :try_start_4
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_c

    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 122
    .line 123
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 128
    .line 129
    .line 130
    :cond_2
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-ltz v3, :cond_3

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    sub-long/2addr v3, v0

    .line 147
    int-to-long v5, v2

    .line 148
    cmp-long v3, v3, v5

    .line 149
    .line 150
    if-ltz v3, :cond_2

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catch_4
    move-exception v0

    .line 154
    goto :goto_3

    .line 155
    :cond_3
    :goto_2
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_c

    .line 162
    .line 163
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :goto_3
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_c

    .line 177
    .line 178
    :catchall_1
    move-exception v1

    .line 179
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 180
    throw v1

    .line 181
    :catchall_2
    move-exception v1

    .line 182
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 183
    :try_start_7
    throw v1
    :try_end_7
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 184
    :goto_4
    :try_start_8
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v2, "handle failed?"

    .line 189
    .line 190
    invoke-interface {v1, v2, v0}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 191
    .line 192
    .line 193
    :try_start_9
    invoke-virtual {p0}, LO1/a$a;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :catch_5
    move-exception v0

    .line 198
    :try_start_a
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 203
    .line 204
    .line 205
    :goto_5
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 206
    .line 207
    iget-object v1, p0, LO1/a$a;->k:LL1/j;

    .line 208
    .line 209
    invoke-static {v0, v1}, LO1/a;->A0(LO1/a;LL1/j;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 213
    .line 214
    iget-object v0, v0, LO1/a;->L:Ljava/util/Set;

    .line 215
    .line 216
    monitor-enter v0

    .line 217
    :try_start_b
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 218
    .line 219
    iget-object v1, v1, LO1/a;->L:Ljava/util/Set;

    .line 220
    .line 221
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 225
    :try_start_c
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_c

    .line 232
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    .line 235
    .line 236
    move-result-wide v0

    .line 237
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 242
    .line 243
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 248
    .line 249
    .line 250
    :cond_4
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 251
    .line 252
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-ltz v3, :cond_5

    .line 261
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 263
    .line 264
    .line 265
    move-result-wide v3

    .line 266
    sub-long/2addr v3, v0

    .line 267
    int-to-long v5, v2

    .line 268
    cmp-long v3, v3, v5

    .line 269
    .line 270
    if-ltz v3, :cond_4

    .line 271
    .line 272
    :cond_5
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_c

    .line 279
    .line 280
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 283
    .line 284
    .line 285
    goto/16 :goto_c

    .line 286
    .line 287
    :catchall_3
    move-exception v1

    .line 288
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 289
    throw v1

    .line 290
    :goto_6
    :try_start_e
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    const-string v2, "BAD"

    .line 295
    .line 296
    invoke-interface {v1, v2, v0}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 297
    .line 298
    .line 299
    :try_start_f
    invoke-virtual {p0}, LO1/a$a;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 300
    .line 301
    .line 302
    goto :goto_7

    .line 303
    :catch_6
    move-exception v0

    .line 304
    :try_start_10
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 309
    .line 310
    .line 311
    :goto_7
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 312
    .line 313
    iget-object v1, p0, LO1/a$a;->k:LL1/j;

    .line 314
    .line 315
    invoke-static {v0, v1}, LO1/a;->A0(LO1/a;LL1/j;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 319
    .line 320
    iget-object v0, v0, LO1/a;->L:Ljava/util/Set;

    .line 321
    .line 322
    monitor-enter v0

    .line 323
    :try_start_11
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 324
    .line 325
    iget-object v1, v1, LO1/a;->L:Ljava/util/Set;

    .line 326
    .line 327
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 331
    :try_start_12
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_c

    .line 338
    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 340
    .line 341
    .line 342
    move-result-wide v0

    .line 343
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 348
    .line 349
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 354
    .line 355
    .line 356
    :cond_6
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 357
    .line 358
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-ltz v3, :cond_7

    .line 367
    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 369
    .line 370
    .line 371
    move-result-wide v3

    .line 372
    sub-long/2addr v3, v0

    .line 373
    int-to-long v5, v2

    .line 374
    cmp-long v3, v3, v5

    .line 375
    .line 376
    if-ltz v3, :cond_6

    .line 377
    .line 378
    :cond_7
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-nez v0, :cond_c

    .line 385
    .line 386
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    .line 389
    .line 390
    .line 391
    goto/16 :goto_c

    .line 392
    .line 393
    :catchall_4
    move-exception v1

    .line 394
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 395
    throw v1

    .line 396
    :goto_8
    :try_start_14
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    const-string v2, "EOF"

    .line 401
    .line 402
    invoke-interface {v1, v2, v0}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 403
    .line 404
    .line 405
    :try_start_15
    invoke-virtual {p0}, LO1/a$a;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 406
    .line 407
    .line 408
    goto :goto_9

    .line 409
    :catch_7
    move-exception v0

    .line 410
    :try_start_16
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 415
    .line 416
    .line 417
    :goto_9
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 418
    .line 419
    iget-object v1, p0, LO1/a$a;->k:LL1/j;

    .line 420
    .line 421
    invoke-static {v0, v1}, LO1/a;->A0(LO1/a;LL1/j;)V

    .line 422
    .line 423
    .line 424
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 425
    .line 426
    iget-object v0, v0, LO1/a;->L:Ljava/util/Set;

    .line 427
    .line 428
    monitor-enter v0

    .line 429
    :try_start_17
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 430
    .line 431
    iget-object v1, v1, LO1/a;->L:Ljava/util/Set;

    .line 432
    .line 433
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 437
    :try_start_18
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-nez v0, :cond_c

    .line 444
    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 446
    .line 447
    .line 448
    move-result-wide v0

    .line 449
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 454
    .line 455
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 460
    .line 461
    .line 462
    :cond_8
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 463
    .line 464
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    if-ltz v3, :cond_9

    .line 473
    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 475
    .line 476
    .line 477
    move-result-wide v3

    .line 478
    sub-long/2addr v3, v0

    .line 479
    int-to-long v5, v2

    .line 480
    cmp-long v3, v3, v5

    .line 481
    .line 482
    if-ltz v3, :cond_8

    .line 483
    .line 484
    :cond_9
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-nez v0, :cond_c

    .line 491
    .line 492
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4

    .line 495
    .line 496
    .line 497
    goto :goto_c

    .line 498
    :catchall_5
    move-exception v1

    .line 499
    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 500
    throw v1

    .line 501
    :goto_a
    :try_start_1a
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    const-string v2, "EOF"

    .line 506
    .line 507
    invoke-interface {v1, v2, v0}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 508
    .line 509
    .line 510
    :try_start_1b
    invoke-virtual {p0}, LO1/a$a;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 511
    .line 512
    .line 513
    goto :goto_b

    .line 514
    :catch_8
    move-exception v0

    .line 515
    :try_start_1c
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 520
    .line 521
    .line 522
    :goto_b
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 523
    .line 524
    iget-object v1, p0, LO1/a$a;->k:LL1/j;

    .line 525
    .line 526
    invoke-static {v0, v1}, LO1/a;->A0(LO1/a;LL1/j;)V

    .line 527
    .line 528
    .line 529
    iget-object v0, p0, LO1/a$a;->m:LO1/a;

    .line 530
    .line 531
    iget-object v0, v0, LO1/a;->L:Ljava/util/Set;

    .line 532
    .line 533
    monitor-enter v0

    .line 534
    :try_start_1d
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 535
    .line 536
    iget-object v1, v1, LO1/a;->L:Ljava/util/Set;

    .line 537
    .line 538
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 542
    :try_start_1e
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 543
    .line 544
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 545
    .line 546
    .line 547
    move-result v0

    .line 548
    if-nez v0, :cond_c

    .line 549
    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 551
    .line 552
    .line 553
    move-result-wide v0

    .line 554
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 559
    .line 560
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 565
    .line 566
    .line 567
    :cond_a
    iget-object v3, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 568
    .line 569
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 574
    .line 575
    .line 576
    move-result v3

    .line 577
    if-ltz v3, :cond_b

    .line 578
    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 580
    .line 581
    .line 582
    move-result-wide v3

    .line 583
    sub-long/2addr v3, v0

    .line 584
    int-to-long v5, v2

    .line 585
    cmp-long v3, v3, v5

    .line 586
    .line 587
    if-ltz v3, :cond_a

    .line 588
    .line 589
    :cond_b
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 590
    .line 591
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_c

    .line 596
    .line 597
    iget-object v0, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_4

    .line 600
    .line 601
    .line 602
    :cond_c
    :goto_c
    return-void

    .line 603
    :catchall_6
    move-exception v1

    .line 604
    :try_start_1f
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 605
    throw v1

    .line 606
    :goto_d
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 607
    .line 608
    iget-object v2, p0, LO1/a$a;->k:LL1/j;

    .line 609
    .line 610
    invoke-static {v1, v2}, LO1/a;->A0(LO1/a;LL1/j;)V

    .line 611
    .line 612
    .line 613
    iget-object v1, p0, LO1/a$a;->m:LO1/a;

    .line 614
    .line 615
    iget-object v1, v1, LO1/a;->L:Ljava/util/Set;

    .line 616
    .line 617
    monitor-enter v1

    .line 618
    :try_start_20
    iget-object v2, p0, LO1/a$a;->m:LO1/a;

    .line 619
    .line 620
    iget-object v2, v2, LO1/a;->L:Ljava/util/Set;

    .line 621
    .line 622
    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 626
    :try_start_21
    iget-object v1, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    if-nez v1, :cond_f

    .line 633
    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 635
    .line 636
    .line 637
    move-result-wide v1

    .line 638
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    iget-object v4, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 643
    .line 644
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 645
    .line 646
    .line 647
    move-result v5

    .line 648
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 649
    .line 650
    .line 651
    :cond_d
    iget-object v4, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 652
    .line 653
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    if-ltz v4, :cond_e

    .line 662
    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 664
    .line 665
    .line 666
    move-result-wide v4

    .line 667
    sub-long/2addr v4, v1

    .line 668
    int-to-long v6, v3

    .line 669
    cmp-long v4, v4, v6

    .line 670
    .line 671
    if-ltz v4, :cond_d

    .line 672
    .line 673
    goto :goto_e

    .line 674
    :catch_9
    move-exception v1

    .line 675
    goto :goto_f

    .line 676
    :cond_e
    :goto_e
    iget-object v1, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 677
    .line 678
    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-nez v1, :cond_f

    .line 683
    .line 684
    iget-object v1, p0, LO1/a$a;->l:Ljava/net/Socket;

    .line 685
    .line 686
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_9

    .line 687
    .line 688
    .line 689
    goto :goto_10

    .line 690
    :goto_f
    invoke-static {}, LO1/a;->d0()LR1/c;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-interface {v2, v1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 695
    .line 696
    .line 697
    :cond_f
    :goto_10
    throw v0

    .line 698
    :catchall_7
    move-exception v0

    .line 699
    :try_start_22
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 700
    throw v0
.end method

.method public t(LL1/d;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/b;->t(LL1/d;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gez p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/a;->s()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/a;->h()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/a;->o()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, LO1/a$a;->close()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return p1
.end method

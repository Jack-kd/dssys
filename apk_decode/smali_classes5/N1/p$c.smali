.class public LN1/p$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:LN1/p;


# direct methods
.method public constructor <init>(LN1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN1/p$c;->b:LN1/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 8
    .line 9
    .line 10
    const-string p1, "ShutdownMonitor"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 8

    .line 1
    const-string v0, "%s"

    .line 2
    .line 3
    const-string v1, "STOP.KEY=%s"

    .line 4
    .line 5
    const-string v2, "STOP.PORT=%d"

    .line 6
    .line 7
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 8
    .line 9
    invoke-static {v3}, LN1/p;->k(LN1/p;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-gez v3, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, LN1/p$c;->b:LN1/p;

    .line 16
    .line 17
    invoke-static {v0}, LN1/p;->j(LN1/p;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "ShutdownMonitor not in use (port < 0): "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 36
    .line 37
    invoke-static {v2}, LN1/p;->k(LN1/p;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :cond_1
    :try_start_0
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 53
    .line 54
    new-instance v4, Ljava/net/ServerSocket;

    .line 55
    .line 56
    iget-object v5, p0, LN1/p$c;->b:LN1/p;

    .line 57
    .line 58
    invoke-static {v5}, LN1/p;->k(LN1/p;)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const-string v6, "127.0.0.1"

    .line 63
    .line 64
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v7, 0x1

    .line 69
    invoke-direct {v4, v5, v7, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v4}, LN1/p;->b(LN1/p;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 73
    .line 74
    .line 75
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 76
    .line 77
    invoke-static {v3}, LN1/p;->k(LN1/p;)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_2

    .line 82
    .line 83
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 84
    .line 85
    invoke-static {v3}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-static {v3, v4}, LN1/p;->l(LN1/p;I)I

    .line 94
    .line 95
    .line 96
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 97
    .line 98
    const-string v4, "STOP.PORT=%d%n"

    .line 99
    .line 100
    iget-object v5, p0, LN1/p$c;->b:LN1/p;

    .line 101
    .line 102
    invoke-static {v5}, LN1/p;->k(LN1/p;)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v3

    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :catch_0
    move-exception v3

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    :goto_0
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 124
    .line 125
    invoke-static {v3}, LN1/p;->c(LN1/p;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-nez v3, :cond_3

    .line 130
    .line 131
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 132
    .line 133
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    .line 138
    .line 139
    mul-double/2addr v4, v6

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    int-to-double v6, v6

    .line 145
    add-double/2addr v4, v6

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v6

    .line 150
    long-to-double v6, v6

    .line 151
    add-double/2addr v4, v6

    .line 152
    double-to-long v4, v4

    .line 153
    const/16 v6, 0x24

    .line 154
    .line 155
    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-static {v3, v4}, LN1/p;->d(LN1/p;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 163
    .line 164
    const-string v4, "STOP.KEY=%s%n"

    .line 165
    .line 166
    iget-object v5, p0, LN1/p$c;->b:LN1/p;

    .line 167
    .line 168
    invoke-static {v5}, LN1/p;->c(LN1/p;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    .line 179
    :cond_3
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 180
    .line 181
    invoke-static {v3}, LN1/p;->k(LN1/p;)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v3, v2, v4}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 197
    .line 198
    invoke-static {v2}, LN1/p;->c(LN1/p;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v2, v1, v3}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 210
    .line 211
    invoke-static {v1}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {v1, v0, v2}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :goto_1
    :try_start_1
    iget-object v4, p0, LN1/p$c;->b:LN1/p;

    .line 224
    .line 225
    invoke-static {v4, v3}, LN1/p;->i(LN1/p;Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 229
    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v6, "Error binding monitor port "

    .line 236
    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-object v6, p0, LN1/p$c;->b:LN1/p;

    .line 241
    .line 242
    invoke-static {v6}, LN1/p;->k(LN1/p;)I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v6, ": "

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 269
    .line 270
    const/4 v4, 0x0

    .line 271
    invoke-static {v3, v4}, LN1/p;->b(LN1/p;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .line 273
    .line 274
    iget-object v3, p0, LN1/p$c;->b:LN1/p;

    .line 275
    .line 276
    invoke-static {v3}, LN1/p;->k(LN1/p;)I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-static {v3, v2, v4}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 292
    .line 293
    invoke-static {v2}, LN1/p;->c(LN1/p;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-static {v2, v1, v3}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 305
    .line 306
    invoke-static {v1}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {v1, v0, v2}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :goto_2
    iget-object v4, p0, LN1/p$c;->b:LN1/p;

    .line 319
    .line 320
    invoke-static {v4}, LN1/p;->k(LN1/p;)I

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-static {v4, v2, v5}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 336
    .line 337
    invoke-static {v2}, LN1/p;->c(LN1/p;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    invoke-static {v2, v1, v4}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 349
    .line 350
    invoke-static {v1}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v1, v0, v2}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    throw v3
.end method

.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, LN1/p$c;->b:LN1/p;

    .line 2
    .line 3
    invoke-static {v0}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    :goto_0
    iget-object v0, p0, LN1/p$c;->b:LN1/p;

    .line 12
    .line 13
    invoke-static {v0}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 21
    .line 22
    invoke-static {v1}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    new-instance v2, Ljava/io/LineNumberReader;

    .line 31
    .line 32
    new-instance v3, Ljava/io/InputStreamReader;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v4, p0, LN1/p$c;->b:LN1/p;

    .line 49
    .line 50
    invoke-static {v4}, LN1/p;->c(LN1/p;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 61
    .line 62
    const-string v2, "Ignoring command with incorrect key"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object v0, p0, LN1/p$c;->b:LN1/p;

    .line 68
    .line 69
    invoke-static {v0, v1}, LN1/p;->f(LN1/p;Ljava/net/Socket;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v4, p0, LN1/p$c;->b:LN1/p;

    .line 88
    .line 89
    const-string v5, "command=%s"

    .line 90
    .line 91
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-static {v4, v5, v6}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const-string v4, "stop"

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    const-string v5, "UTF-8"

    .line 105
    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    :try_start_3
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 109
    .line 110
    const-string v4, "Issuing graceful shutdown.."

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    new-array v7, v6, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-static {v2, v4, v7}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, LW1/c;->b()LW1/c;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, LW1/c;->run()V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 126
    .line 127
    const-string v4, "Informing client that we are stopped."

    .line 128
    .line 129
    new-array v7, v6, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v2, v4, v7}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    const-string v2, "Stopped\r\n"

    .line 135
    .line 136
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 147
    .line 148
    const-string v3, "Shutting down monitor"

    .line 149
    .line 150
    new-array v4, v6, [Ljava/lang/Object;

    .line 151
    .line 152
    invoke-static {v2, v3, v4}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 156
    .line 157
    invoke-static {v2, v1}, LN1/p;->f(LN1/p;Ljava/net/Socket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    .line 159
    .line 160
    :try_start_4
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 161
    .line 162
    invoke-static {v1}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v1, v2}, LN1/p;->g(LN1/p;Ljava/net/ServerSocket;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 170
    .line 171
    invoke-static {v1, v0}, LN1/p;->b(LN1/p;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 175
    .line 176
    invoke-static {v1}, LN1/p;->h(LN1/p;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    .line 182
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 183
    .line 184
    const-string v2, "Killing JVM"

    .line 185
    .line 186
    new-array v3, v6, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-static {v1, v2, v3}, LN1/p;->e(LN1/p;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v6}, Ljava/lang/System;->exit(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :catchall_1
    move-exception v1

    .line 196
    move-object v8, v1

    .line 197
    move-object v1, v0

    .line 198
    move-object v0, v8

    .line 199
    goto :goto_4

    .line 200
    :catch_1
    move-exception v1

    .line 201
    move-object v8, v1

    .line 202
    move-object v1, v0

    .line 203
    move-object v0, v8

    .line 204
    goto :goto_3

    .line 205
    :cond_2
    :try_start_5
    const-string v0, "status"

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_3

    .line 212
    .line 213
    const-string v0, "OK\r\n"

    .line 214
    .line 215
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    .line 224
    .line 225
    :cond_3
    move-object v0, v1

    .line 226
    :cond_4
    :goto_2
    iget-object v1, p0, LN1/p$c;->b:LN1/p;

    .line 227
    .line 228
    invoke-static {v1, v0}, LN1/p;->f(LN1/p;Ljava/net/Socket;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :goto_3
    :try_start_6
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 234
    .line 235
    invoke-static {v2, v0}, LN1/p;->i(LN1/p;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :goto_4
    iget-object v2, p0, LN1/p$c;->b:LN1/p;

    .line 250
    .line 251
    invoke-static {v2, v1}, LN1/p;->f(LN1/p;Ljava/net/Socket;)V

    .line 252
    .line 253
    .line 254
    throw v0

    .line 255
    :cond_5
    :goto_5
    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v2, "ShutdownMonitorThread already started"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, LN1/p$c;->b()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, LN1/p$c;->b:LN1/p;

    .line 22
    .line 23
    invoke-static {v0}, LN1/p;->a(LN1/p;)Ljava/net/ServerSocket;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, LN1/p$c;->b:LN1/p;

    .line 31
    .line 32
    invoke-static {v0}, LN1/p;->j(LN1/p;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 39
    .line 40
    const-string v1, "Starting ShutdownMonitorThread"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

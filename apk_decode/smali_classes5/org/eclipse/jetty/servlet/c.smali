.class public Lorg/eclipse/jetty/servlet/c;
.super Lorg/eclipse/jetty/server/handler/i;
.source "SourceFile"


# static fields
.field public static final C:LR1/c;

.field public static final D:LR1/c;


# instance fields
.field public final A:[Ljava/util/concurrent/ConcurrentMap;

.field public final B:[Ljava/util/Queue;

.field public k:Lorg/eclipse/jetty/servlet/b;

.field public l:Lorg/eclipse/jetty/server/handler/d$d;

.field public m:[Lorg/eclipse/jetty/servlet/a;

.field public n:[LQ1/a;

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:Z

.field public t:[Lorg/eclipse/jetty/servlet/d;

.field public u:[LQ1/b;

.field public final v:Ljava/util/Map;

.field public w:Ljava/util/List;

.field public x:Lorg/eclipse/jetty/util/MultiMap;

.field public final y:Ljava/util/Map;

.field public z:Lorg/eclipse/jetty/http/PathMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    .line 8
    .line 9
    const-string v1, "unhandled"

    .line 10
    .line 11
    invoke-interface {v0, v1}, LR1/c;->j(Ljava/lang/String;)LR1/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/eclipse/jetty/servlet/c;->D:LR1/c;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/i;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Lorg/eclipse/jetty/servlet/a;

    .line 6
    .line 7
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lorg/eclipse/jetty/servlet/c;->o:I

    .line 11
    .line 12
    iput v1, p0, Lorg/eclipse/jetty/servlet/c;->p:I

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/c;->q:Z

    .line 16
    .line 17
    const/16 v1, 0x200

    .line 18
    .line 19
    iput v1, p0, Lorg/eclipse/jetty/servlet/c;->r:I

    .line 20
    .line 21
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/c;->s:Z

    .line 22
    .line 23
    new-array v0, v0, [Lorg/eclipse/jetty/servlet/d;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->v:Ljava/util/Map;

    .line 33
    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 40
    .line 41
    const/16 v0, 0x1f

    .line 42
    .line 43
    new-array v1, v0, [Ljava/util/concurrent/ConcurrentMap;

    .line 44
    .line 45
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 46
    .line 47
    new-array v0, v0, [Ljava/util/Queue;

    .line 48
    .line 49
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized A0()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/c;->w:Ljava/util/List;

    .line 9
    .line 10
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto/16 :goto_8

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->w:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Lorg/eclipse/jetty/util/MultiMap;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 29
    .line 30
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    .line 31
    .line 32
    array-length v3, v0

    .line 33
    if-gtz v3, :cond_d

    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 36
    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    .line 45
    .line 46
    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    .line 47
    .line 48
    .line 49
    move v1, v2

    .line 50
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 51
    .line 52
    array-length v4, v3

    .line 53
    if-ge v1, v4, :cond_5

    .line 54
    .line 55
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 56
    .line 57
    aget-object v3, v3, v1

    .line 58
    .line 59
    invoke-virtual {v3}, LQ1/b;->b()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lorg/eclipse/jetty/servlet/d;

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/d;->j0()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 78
    .line 79
    aget-object v4, v4, v1

    .line 80
    .line 81
    invoke-virtual {v4}, LQ1/b;->a()[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 88
    .line 89
    aget-object v4, v4, v1

    .line 90
    .line 91
    invoke-virtual {v4}, LQ1/b;->a()[Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    move v5, v2

    .line 96
    :goto_2
    array-length v6, v4

    .line 97
    if-ge v5, v6, :cond_3

    .line 98
    .line 99
    aget-object v6, v4, v5

    .line 100
    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    invoke-virtual {v0, v6, v3}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v3, "No such servlet: "

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 125
    .line 126
    aget-object v1, v3, v1

    .line 127
    .line 128
    invoke-virtual {v1}, LQ1/b;->b()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw v0

    .line 143
    :cond_5
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->z:Lorg/eclipse/jetty/http/PathMap;

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    :goto_3
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/c;->z:Lorg/eclipse/jetty/http/PathMap;

    .line 147
    .line 148
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    array-length v0, v0

    .line 153
    :goto_5
    add-int/lit8 v1, v0, -0x1

    .line 154
    .line 155
    if-lez v0, :cond_8

    .line 156
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 158
    .line 159
    aget-object v0, v0, v1

    .line 160
    .line 161
    if-eqz v0, :cond_7

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    .line 165
    .line 166
    :cond_7
    move v0, v1

    .line 167
    goto :goto_5

    .line 168
    :cond_8
    sget-object v0, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    .line 169
    .line 170
    invoke-interface {v0}, LR1/c;->f()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_9

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v3, "filterNameMap="

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->v:Ljava/util/Map;

    .line 187
    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    new-array v3, v2, [Ljava/lang/Object;

    .line 196
    .line 197
    invoke-interface {v0, v1, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v3, "pathFilters="

    .line 206
    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->w:Ljava/util/List;

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-array v3, v2, [Ljava/lang/Object;

    .line 220
    .line 221
    invoke-interface {v0, v1, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v3, "servletFilterMap="

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 235
    .line 236
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    new-array v3, v2, [Ljava/lang/Object;

    .line 244
    .line 245
    invoke-interface {v0, v1, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v3, "servletPathMap="

    .line 254
    .line 255
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->z:Lorg/eclipse/jetty/http/PathMap;

    .line 259
    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    new-array v3, v2, [Ljava/lang/Object;

    .line 268
    .line 269
    invoke-interface {v0, v1, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v3, "servletNameMap="

    .line 278
    .line 279
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 283
    .line 284
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    new-array v2, v2, [Ljava/lang/Object;

    .line 292
    .line 293
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .line 295
    .line 296
    :cond_9
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->k:Lorg/eclipse/jetty/servlet/b;

    .line 297
    .line 298
    if-eqz v0, :cond_a

    .line 299
    .line 300
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_b

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :catch_0
    move-exception v0

    .line 308
    goto :goto_7

    .line 309
    :cond_a
    :goto_6
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->k:Lorg/eclipse/jetty/servlet/b;

    .line 310
    .line 311
    if-nez v0, :cond_c

    .line 312
    .line 313
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_c

    .line 318
    .line 319
    :cond_b
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->u0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .line 321
    .line 322
    :cond_c
    monitor-exit p0

    .line 323
    return-void

    .line 324
    :goto_7
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 325
    .line 326
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 327
    .line 328
    .line 329
    throw v1

    .line 330
    :cond_d
    aget-object v0, v0, v2

    .line 331
    .line 332
    throw v1

    .line 333
    :goto_8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    throw v0
.end method

.method public declared-synchronized B0()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->v:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    if-gtz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    aget-object v0, v0, v1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    throw v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 32
    .line 33
    array-length v2, v0

    .line 34
    if-ge v1, v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 37
    .line 38
    aget-object v0, v0, v1

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 45
    .line 46
    aget-object v3, v3, v1

    .line 47
    .line 48
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 52
    .line 53
    aget-object v0, v0, v1

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/servlet/Holder;->Z(Lorg/eclipse/jetty/servlet/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw v0
.end method

.method public a(LN1/m;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 18
    .line 19
    const-string v6, "filter"

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v3, p0

    .line 24
    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    move-object v9, v3

    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    iget-object v10, v9, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    .line 37
    .line 38
    const-string v12, "filterMapping"

    .line 39
    .line 40
    const/4 v13, 0x1

    .line 41
    const/4 v11, 0x0

    .line 42
    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    iget-object v10, v9, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 54
    .line 55
    const-string v12, "servlet"

    .line 56
    .line 57
    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    iget-object v10, v9, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 69
    .line 70
    const-string v12, "servletMapping"

    .line 71
    .line 72
    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move-object v9, p0

    .line 77
    :goto_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/h;->a(LN1/m;)V

    .line 78
    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    if-eq v0, p1, :cond_1

    .line 83
    .line 84
    invoke-virtual {p1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    iget-object v11, v9, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 89
    .line 90
    const-string v12, "filter"

    .line 91
    .line 92
    const/4 v13, 0x1

    .line 93
    const/4 v10, 0x0

    .line 94
    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    iget-object v11, v9, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    .line 102
    .line 103
    const-string v12, "filterMapping"

    .line 104
    .line 105
    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    iget-object v11, v9, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 113
    .line 114
    const-string v12, "servlet"

    .line 115
    .line 116
    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    iget-object v11, v9, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 124
    .line 125
    const-string v12, "servletMapping"

    .line 126
    .line 127
    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    :cond_1
    return-void
.end method

.method public declared-synchronized doStart()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/eclipse/jetty/server/handler/d;->w0()Lorg/eclipse/jetty/server/handler/d$d;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->l:Lorg/eclipse/jetty/server/handler/d$d;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d$d;->c()Lorg/eclipse/jetty/server/handler/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    check-cast v0, Lorg/eclipse/jetty/servlet/b;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->k:Lorg/eclipse/jetty/servlet/b;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-class v1, LM1/c;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/b;->c0(Ljava/lang/Class;)LN1/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lt/f;->a(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->B0()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->A0()V

    .line 38
    .line 39
    .line 40
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/c;->q:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 45
    .line 46
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 55
    .line 56
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    aput-object v1, v0, v3

    .line 63
    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 65
    .line 66
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v4, 0x4

    .line 72
    aput-object v1, v0, v4

    .line 73
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 75
    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 79
    .line 80
    .line 81
    const/16 v5, 0x8

    .line 82
    .line 83
    aput-object v1, v0, v5

    .line 84
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 86
    .line 87
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    const/16 v6, 0x10

    .line 93
    .line 94
    aput-object v1, v0, v6

    .line 95
    .line 96
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 97
    .line 98
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 101
    .line 102
    .line 103
    aput-object v1, v0, v2

    .line 104
    .line 105
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 106
    .line 107
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 108
    .line 109
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 110
    .line 111
    .line 112
    aput-object v1, v0, v3

    .line 113
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 115
    .line 116
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 119
    .line 120
    .line 121
    aput-object v1, v0, v4

    .line 122
    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 124
    .line 125
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 128
    .line 129
    .line 130
    aput-object v1, v0, v5

    .line 131
    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 133
    .line 134
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 137
    .line 138
    .line 139
    aput-object v1, v0, v6

    .line 140
    .line 141
    :cond_2
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/i;->doStart()V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->k:Lorg/eclipse/jetty/servlet/b;

    .line 145
    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    if-nez v0, :cond_4

    .line 149
    .line 150
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->u0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    :cond_4
    monitor-exit p0

    .line 154
    return-void

    .line 155
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw v0
.end method

.method public declared-synchronized doStop()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/h;->doStop()V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    .line 11
    .line 12
    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    array-length v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    add-int/lit8 v5, v4, -0x1

    .line 23
    .line 24
    if-gtz v4, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    aget-object v0, v2, v5

    .line 28
    .line 29
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :catch_0
    move-exception v0

    .line 34
    :try_start_2
    sget-object v1, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    .line 35
    .line 36
    const-string v2, "EXCEPTION "

    .line 37
    .line 38
    invoke-interface {v1, v2, v0}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 42
    .line 43
    aget-object v0, v0, v5

    .line 44
    .line 45
    throw v3

    .line 46
    :cond_1
    :goto_0
    const-class v2, Lorg/eclipse/jetty/servlet/a;

    .line 47
    .line 48
    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, [Lorg/eclipse/jetty/servlet/a;

    .line 53
    .line 54
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 55
    .line 56
    const-class v0, LQ1/a;

    .line 57
    .line 58
    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, [LQ1/a;

    .line 63
    .line 64
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    .line 65
    .line 66
    const/4 v1, -0x1

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    array-length v2, v0

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    array-length v0, v0

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    move v0, v1

    .line 78
    :goto_2
    iput v0, p0, Lorg/eclipse/jetty/servlet/c;->p:I

    .line 79
    .line 80
    iput v1, p0, Lorg/eclipse/jetty/servlet/c;->o:I

    .line 81
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 88
    .line 89
    invoke-static {v1}, Lorg/eclipse/jetty/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 94
    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    array-length v2, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    :goto_3
    add-int/lit8 v4, v2, -0x1

    .line 99
    .line 100
    if-lez v2, :cond_7

    .line 101
    .line 102
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 103
    .line 104
    aget-object v2, v2, v4

    .line 105
    .line 106
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/component/a;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :catch_1
    move-exception v2

    .line 111
    :try_start_4
    sget-object v5, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    .line 112
    .line 113
    const-string v6, "EXCEPTION "

    .line 114
    .line 115
    invoke-interface {v5, v6, v2}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :goto_4
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 119
    .line 120
    aget-object v2, v2, v4

    .line 121
    .line 122
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/Holder;->T()Lorg/eclipse/jetty/servlet/Holder$Source;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    sget-object v5, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    .line 127
    .line 128
    if-eq v2, v5, :cond_5

    .line 129
    .line 130
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 131
    .line 132
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 133
    .line 134
    aget-object v5, v5, v4

    .line 135
    .line 136
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_4
    :goto_5
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_6

    .line 152
    .line 153
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, LQ1/b;

    .line 158
    .line 159
    invoke-virtual {v5}, LQ1/b;->b()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 164
    .line 165
    aget-object v6, v6, v4

    .line 166
    .line 167
    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_4

    .line 176
    .line 177
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 182
    .line 183
    aget-object v2, v2, v4

    .line 184
    .line 185
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :cond_6
    move v2, v4

    .line 189
    goto :goto_3

    .line 190
    :cond_7
    const-class v2, Lorg/eclipse/jetty/servlet/d;

    .line 191
    .line 192
    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, [Lorg/eclipse/jetty/servlet/d;

    .line 197
    .line 198
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 199
    .line 200
    const-class v0, LQ1/b;

    .line 201
    .line 202
    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    check-cast v0, [LQ1/b;

    .line 207
    .line 208
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 209
    .line 210
    iput-object v3, p0, Lorg/eclipse/jetty/servlet/c;->w:Ljava/util/List;

    .line 211
    .line 212
    iput-object v3, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 213
    .line 214
    iput-object v3, p0, Lorg/eclipse/jetty/servlet/c;->z:Lorg/eclipse/jetty/http/PathMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 218
    :goto_6
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    throw v0
.end method

.method public f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-virtual {v2}, LN1/k;->f()Ljavax/servlet/DispatcherType;

    move-result-object v5

    .line 2
    invoke-virtual {v2}, LN1/k;->w()LN1/q$a;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/servlet/d;

    .line 3
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    if-eqz v6, :cond_1

    .line 4
    iget-object v7, v1, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    if-eqz v7, :cond_1

    array-length v7, v7

    if-lez v7, :cond_1

    .line 5
    invoke-virtual {v1, v2, v0, v6}, Lorg/eclipse/jetty/servlet/c;->m0(LN1/k;Ljava/lang/String;Lorg/eclipse/jetty/servlet/d;)Ljavax/servlet/FilterChain;

    move-result-object v7

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    .line 6
    iget-object v7, v1, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    if-eqz v7, :cond_1

    array-length v7, v7

    if-lez v7, :cond_1

    .line 7
    invoke-virtual {v1, v2, v8, v6}, Lorg/eclipse/jetty/servlet/c;->m0(LN1/k;Ljava/lang/String;Lorg/eclipse/jetty/servlet/d;)Ljavax/servlet/FilterChain;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v8

    .line 8
    :goto_0
    sget-object v9, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    const-string v10, "chain={}"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    const-string v9, "Response already committed for handling "

    const/16 v10, 0x1f4

    const-string v11, "javax.servlet.error.exception"

    const-string v12, "javax.servlet.error.exception_type"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v6, :cond_3

    .line 10
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/h;->d0()LN1/h;

    move-result-object v7

    if-nez v7, :cond_2

    .line 11
    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jetty/servlet/c;->x0(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object v7, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_d

    :catch_4
    move-exception v0

    goto/16 :goto_e

    .line 12
    :cond_2
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/server/handler/i;->i0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    .line 13
    invoke-interface {v7, v3, v4}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v6, v2, v3, v4}, Lorg/eclipse/jetty/servlet/d;->f0(LN1/k;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v6, :cond_12

    .line 15
    invoke-virtual {v2, v14}, LN1/k;->M(Z)V

    return-void

    .line 16
    :goto_2
    :try_start_1
    sget-object v0, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v0, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v0, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_6
    :goto_3
    :try_start_2
    sget-object v0, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v7}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-interface {v0}, LR1/c;->f()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v13, [Ljava/lang/Object;

    invoke-interface {v0, v5, v8}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v7

    goto/16 :goto_f

    .line 20
    :cond_7
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3, v12, v5}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    invoke-interface {v3, v11, v7}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-interface {v4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_8

    .line 23
    invoke-interface {v4, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_5

    .line 24
    :cond_8
    invoke-interface {v0, v9, v7}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    if-eqz v6, :cond_9

    .line 25
    invoke-virtual {v2, v14}, LN1/k;->M(Z)V

    .line 26
    :cond_9
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 27
    :goto_6
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v0

    check-cast v0, LN1/d;

    invoke-virtual {v0}, LN1/d;->e()V

    goto/16 :goto_b

    .line 28
    :goto_7
    :try_start_3
    sget-object v0, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v0, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v0, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 29
    instance-of v0, v7, Ljava/io/IOException;

    if-nez v0, :cond_b

    .line 30
    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-nez v0, :cond_a

    goto :goto_8

    .line 31
    :cond_a
    check-cast v7, Ljava/lang/RuntimeException;

    throw v7

    .line 32
    :cond_b
    check-cast v7, Ljava/io/IOException;

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :cond_c
    :goto_8
    :try_start_4
    instance-of v0, v7, Lorg/eclipse/jetty/http/HttpException;

    if-nez v0, :cond_15

    .line 34
    instance-of v0, v7, Lorg/eclipse/jetty/io/RuntimeIOException;

    if-nez v0, :cond_14

    .line 35
    instance-of v0, v7, Lorg/eclipse/jetty/io/EofException;

    if-nez v0, :cond_13

    .line 36
    sget-object v0, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    invoke-interface {v0}, LR1/c;->f()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 37
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v7}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v13, [Ljava/lang/Object;

    invoke-interface {v0, v5, v8}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 39
    :cond_d
    instance-of v5, v7, Ljava/io/IOException;

    if-nez v5, :cond_e

    .line 40
    const-string v5, "Error Processing URI: {} - ({}) {}"

    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v8, v15, v14}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v5, v8}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v5, Lorg/eclipse/jetty/servlet/c;->D:LR1/c;

    invoke-interface {v5}, LR1/c;->f()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 42
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v7}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 43
    :cond_e
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v7}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_f
    :goto_9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3, v12, v5}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v3, v11, v7}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-interface {v4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v5

    if-nez v5, :cond_10

    .line 47
    invoke-interface {v4, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_a

    .line 48
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_a
    if-eqz v6, :cond_11

    const/4 v4, 0x1

    .line 49
    invoke-virtual {v2, v4}, LN1/k;->M(Z)V

    .line 50
    :cond_11
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_6

    :cond_12
    :goto_b
    return-void

    .line 51
    :cond_13
    :try_start_5
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jetty/io/EofException;

    throw v0

    .line 52
    :cond_14
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jetty/io/RuntimeIOException;

    throw v0

    .line 53
    :cond_15
    move-object v0, v7

    check-cast v0, Lorg/eclipse/jetty/http/HttpException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    :goto_c
    :try_start_6
    throw v0

    .line 55
    :goto_d
    throw v0

    .line 56
    :goto_e
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_f
    if-eqz v6, :cond_16

    const/4 v4, 0x1

    .line 57
    invoke-virtual {v2, v4}, LN1/k;->M(Z)V

    :cond_16
    if-eqz v8, :cond_17

    .line 58
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 59
    invoke-interface {v3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v2

    check-cast v2, LN1/d;

    invoke-virtual {v2}, LN1/d;->e()V

    :cond_17
    throw v0
.end method

.method public g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, LN1/k;->q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, LN1/k;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p2}, LN1/k;->f()Ljavax/servlet/DispatcherType;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "/"

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/c;->p0(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$a;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$a;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lorg/eclipse/jetty/servlet/d;

    .line 33
    .line 34
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$a;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$a;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3}, Lorg/eclipse/jetty/http/PathMap$a;->a()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v6, p1}, Lorg/eclipse/jetty/http/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :goto_0
    invoke-static {v6, p1}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    sget-object v7, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    .line 60
    .line 61
    invoke-virtual {v7, v2}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_1

    .line 66
    .line 67
    const-string v7, "javax.servlet.include.servlet_path"

    .line 68
    .line 69
    invoke-virtual {p2, v7, v3}, LN1/k;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "javax.servlet.include.path_info"

    .line 73
    .line 74
    invoke-virtual {p2, v3, v6}, LN1/k;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p2, v3}, LN1/k;->Z(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v6}, LN1/k;->O(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move-object v5, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->y:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    move-object v5, v3

    .line 94
    check-cast v5, Lorg/eclipse/jetty/servlet/d;

    .line 95
    .line 96
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    .line 97
    .line 98
    invoke-interface {v3}, LR1/c;->f()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    invoke-virtual {p2}, LN1/k;->e()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {p2}, LN1/k;->q()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-virtual {p2}, LN1/k;->j()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    filled-new-array {v6, v7, v8, v5}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const-string v7, "servlet {}|{}|{} -> {}"

    .line 121
    .line 122
    invoke-interface {v3, v7, v6}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :try_start_0
    invoke-virtual {p2}, LN1/k;->w()LN1/q$a;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {p2, v5}, LN1/k;->e0(LN1/q$a;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/i;->h0()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->j0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    goto :goto_3

    .line 144
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    .line 148
    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 153
    .line 154
    if-eqz v3, :cond_7

    .line 155
    .line 156
    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/servlet/c;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    .line 163
    :goto_2
    if-eqz v4, :cond_8

    .line 164
    .line 165
    invoke-virtual {p2, v4}, LN1/k;->e0(LN1/q$a;)V

    .line 166
    .line 167
    .line 168
    :cond_8
    sget-object p1, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_9

    .line 175
    .line 176
    invoke-virtual {p2, v0}, LN1/k;->Z(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v1}, LN1/k;->O(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_9
    return-void

    .line 183
    :goto_3
    if-eqz v4, :cond_a

    .line 184
    .line 185
    invoke-virtual {p2, v4}, LN1/k;->e0(LN1/q$a;)V

    .line 186
    .line 187
    .line 188
    :cond_a
    sget-object p3, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    .line 189
    .line 190
    invoke-virtual {p3, v2}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    if-nez p3, :cond_b

    .line 195
    .line 196
    invoke-virtual {p2, v0}, LN1/k;->Z(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, v1}, LN1/k;->O(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_b
    throw p1
.end method

.method public k0(Lorg/eclipse/jetty/servlet/d;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->t0()[Lorg/eclipse/jetty/servlet/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, [Lorg/eclipse/jetty/servlet/d;->clone()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [Lorg/eclipse/jetty/servlet/d;

    .line 12
    .line 13
    :cond_0
    :try_start_0
    const-class v1, Lorg/eclipse/jetty/servlet/d;

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, [Lorg/eclipse/jetty/servlet/d;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/c;->z0([Lorg/eclipse/jetty/servlet/d;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, LQ1/b;

    .line 25
    .line 26
    invoke-direct {v1}, LQ1/b;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p1}, LQ1/b;->d(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, LQ1/b;->c(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->s0()[LQ1/b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-class p2, LQ1/b;

    .line 44
    .line 45
    invoke-static {p1, v1, p2}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, [LQ1/b;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/c;->y0([LQ1/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/c;->z0([Lorg/eclipse/jetty/servlet/d;)V

    .line 57
    .line 58
    .line 59
    instance-of p2, p1, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    check-cast p1, Ljava/lang/RuntimeException;

    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p2
.end method

.method public l0(Ljavax/servlet/Servlet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->k:Lorg/eclipse/jetty/servlet/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/b;->L0(Ljavax/servlet/Servlet;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/a;->V(Ljava/lang/Appendable;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/h;->B()[LN1/h;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/b;->X()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->n0()[LQ1/a;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->o0()[Lorg/eclipse/jetty/servlet/a;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v3}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->s0()[LQ1/b;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->t0()[Lorg/eclipse/jetty/servlet/d;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v5}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v6, 0x6

    .line 49
    new-array v6, v6, [Ljava/util/Collection;

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    aput-object v0, v6, v7

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    aput-object v1, v6, v0

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    aput-object v2, v6, v0

    .line 59
    .line 60
    const/4 v0, 0x3

    .line 61
    aput-object v3, v6, v0

    .line 62
    .line 63
    const/4 v0, 0x4

    .line 64
    aput-object v4, v6, v0

    .line 65
    .line 66
    const/4 v0, 0x5

    .line 67
    aput-object v5, v6, v0

    .line 68
    .line 69
    invoke-static {p1, p2, v6}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public m0(LN1/k;Ljava/lang/String;Lorg/eclipse/jetty/servlet/d;)Ljavax/servlet/FilterChain;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p2

    .line 9
    :goto_0
    invoke-virtual {p1}, LN1/k;->f()Ljavax/servlet/DispatcherType;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, LQ1/a;->a(Ljavax/servlet/DispatcherType;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/c;->q:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    aget-object p1, v1, p1

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljavax/servlet/FilterChain;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    const/4 v0, 0x0

    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/c;->w:Ljava/util/List;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-gtz p2, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/c;->w:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 62
    .line 63
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 64
    .line 65
    if-eqz p2, :cond_6

    .line 66
    .line 67
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-lez p2, :cond_6

    .line 72
    .line 73
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 74
    .line 75
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-lez p2, :cond_6

    .line 80
    .line 81
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 82
    .line 83
    invoke-virtual {p3}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p2, p3}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-gtz p3, :cond_5

    .line 96
    .line 97
    iget-object p2, p0, Lorg/eclipse/jetty/servlet/c;->x:Lorg/eclipse/jetty/util/MultiMap;

    .line 98
    .line 99
    const-string p3, "*"

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-static {p2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-gtz p3, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-static {p2, p1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_5
    invoke-static {p2, p1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_6
    :goto_2
    return-object v0
.end method

.method public n0()[LQ1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->n:[LQ1/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public o0()[Lorg/eclipse/jetty/servlet/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public p0(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->z:Lorg/eclipse/jetty/http/PathMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public q0()LM1/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public r0()Ljavax/servlet/ServletContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->l:Lorg/eclipse/jetty/server/handler/d$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public s0()[LQ1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public t0()[Lorg/eclipse/jetty/servlet/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public u0()V
    .locals 6

    .line 1
    new-instance v0, Lorg/eclipse/jetty/util/MultiException;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/c;->m:[Lorg/eclipse/jetty/servlet/a;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    array-length v3, v1

    .line 12
    if-gtz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    aget-object v0, v1, v2

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 20
    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/d;->clone()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Lorg/eclipse/jetty/servlet/d;

    .line 28
    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    array-length v3, v1

    .line 33
    if-ge v2, v3, :cond_5

    .line 34
    .line 35
    :try_start_0
    aget-object v3, v1, v2

    .line 36
    .line 37
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/Holder;->P()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v3, :cond_4

    .line 42
    .line 43
    aget-object v3, v1, v2

    .line 44
    .line 45
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/d;->c0()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->z:Lorg/eclipse/jetty/http/PathMap;

    .line 52
    .line 53
    aget-object v4, v1, v2

    .line 54
    .line 55
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/d;->c0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lorg/eclipse/jetty/servlet/d;

    .line 64
    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/Holder;->P()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    aget-object v4, v1, v2

    .line 75
    .line 76
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/Holder;->P()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/servlet/Holder;->V(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catchall_0
    move-exception v3

    .line 85
    goto :goto_4

    .line 86
    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v5, "No forced path servlet for "

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    aget-object v5, v1, v2

    .line 99
    .line 100
    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/d;->c0()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_4
    :goto_3
    aget-object v3, v1, v2

    .line 119
    .line 120
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/component/a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :goto_4
    sget-object v4, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    .line 125
    .line 126
    const-string v5, "EXCEPTION "

    .line 127
    .line 128
    invoke-interface {v4, v5, v3}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 138
    .line 139
    .line 140
    :cond_6
    return-void
.end method

.method public v0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    aget-object v0, v0, v2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    aget-object v0, v0, v3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 28
    .line 29
    const/16 v4, 0x8

    .line 30
    .line 31
    aget-object v0, v0, v4

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->B:[Ljava/util/Queue;

    .line 37
    .line 38
    const/16 v5, 0x10

    .line 39
    .line 40
    aget-object v0, v0, v5

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 46
    .line 47
    aget-object v0, v0, v1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 53
    .line 54
    aget-object v0, v0, v2

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 60
    .line 61
    aget-object v0, v0, v3

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 67
    .line 68
    aget-object v0, v0, v4

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/c;->A:[Ljava/util/concurrent/ConcurrentMap;

    .line 74
    .line 75
    aget-object v0, v0, v5

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public w0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/c;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public x0(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .line 1
    sget-object p2, Lorg/eclipse/jetty/servlet/c;->C:LR1/c;

    .line 2
    .line 3
    invoke-interface {p2}, LR1/c;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "Not Found "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {p2, p1, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public y0([LQ1/b;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 16
    .line 17
    const-string v5, "servletMapping"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    move-object v2, p0

    .line 21
    move-object v4, p1

    .line 22
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, p0

    .line 27
    move-object v4, p1

    .line 28
    :goto_0
    iput-object v4, v2, Lorg/eclipse/jetty/servlet/c;->u:[LQ1/b;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->A0()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->v0()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public declared-synchronized z0([Lorg/eclipse/jetty/servlet/d;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 17
    .line 18
    const-string v5, "servlet"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    move-object v2, p0

    .line 22
    move-object v4, p1

    .line 23
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    :goto_0
    move-object p1, v0

    .line 29
    goto :goto_2

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    move-object v2, p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v2, p0

    .line 34
    move-object v4, p1

    .line 35
    :goto_1
    iput-object v4, v2, Lorg/eclipse/jetty/servlet/c;->t:[Lorg/eclipse/jetty/servlet/d;

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->B0()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/c;->v0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw p1
.end method

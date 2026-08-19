.class final Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0010J\u001a\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0017\u001a\u00020\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;",
        "",
        "<init>",
        "()V",
        "wrapResult",
        "",
        "result",
        "wrapError",
        "exception",
        "",
        "doubleEquals",
        "",
        "a",
        "",
        "b",
        "floatEquals",
        "",
        "doubleHash",
        "",
        "d",
        "floatHash",
        "f",
        "deepEquals",
        "deepHash",
        "value",
        "url_launcher_android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;

    invoke-direct {v0}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;-><init>()V

    sput-object v0, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->INSTANCE:Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1c

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_1
    instance-of v2, p1, [B

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    instance-of v2, p2, [B

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    check-cast p1, [B

    .line 21
    .line 22
    check-cast p2, [B

    .line 23
    .line 24
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    instance-of v2, p1, [I

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    instance-of v2, p2, [I

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    check-cast p1, [I

    .line 38
    .line 39
    check-cast p2, [I

    .line 40
    .line 41
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_3
    instance-of v2, p1, [J

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    instance-of v2, p2, [J

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    check-cast p1, [J

    .line 55
    .line 56
    check-cast p2, [J

    .line 57
    .line 58
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([J[J)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    return p1

    .line 63
    :cond_4
    instance-of v2, p1, [D

    .line 64
    .line 65
    if-eqz v2, :cond_8

    .line 66
    .line 67
    instance-of v2, p2, [D

    .line 68
    .line 69
    if-eqz v2, :cond_8

    .line 70
    .line 71
    check-cast p1, [D

    .line 72
    .line 73
    array-length v2, p1

    .line 74
    check-cast p2, [D

    .line 75
    .line 76
    array-length v3, p2

    .line 77
    if-eq v2, v3, :cond_5

    .line 78
    .line 79
    return v1

    .line 80
    :cond_5
    array-length v2, p1

    .line 81
    move v3, v1

    .line 82
    :goto_0
    if-ge v3, v2, :cond_7

    .line 83
    .line 84
    aget-wide v4, p1, v3

    .line 85
    .line 86
    aget-wide v6, p2, v3

    .line 87
    .line 88
    invoke-virtual {p0, v4, v5, v6, v7}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->doubleEquals(DD)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_6

    .line 93
    .line 94
    return v1

    .line 95
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_7
    return v0

    .line 99
    :cond_8
    instance-of v2, p1, [F

    .line 100
    .line 101
    if-eqz v2, :cond_c

    .line 102
    .line 103
    instance-of v2, p2, [F

    .line 104
    .line 105
    if-eqz v2, :cond_c

    .line 106
    .line 107
    check-cast p1, [F

    .line 108
    .line 109
    array-length v2, p1

    .line 110
    check-cast p2, [F

    .line 111
    .line 112
    array-length v3, p2

    .line 113
    if-eq v2, v3, :cond_9

    .line 114
    .line 115
    return v1

    .line 116
    :cond_9
    array-length v2, p1

    .line 117
    move v3, v1

    .line 118
    :goto_1
    if-ge v3, v2, :cond_b

    .line 119
    .line 120
    aget v4, p1, v3

    .line 121
    .line 122
    aget v5, p2, v3

    .line 123
    .line 124
    invoke-virtual {p0, v4, v5}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->floatEquals(FF)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_a

    .line 129
    .line 130
    return v1

    .line 131
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_b
    return v0

    .line 135
    :cond_c
    instance-of v2, p1, [Ljava/lang/Object;

    .line 136
    .line 137
    if-eqz v2, :cond_10

    .line 138
    .line 139
    instance-of v2, p2, [Ljava/lang/Object;

    .line 140
    .line 141
    if-eqz v2, :cond_10

    .line 142
    .line 143
    check-cast p1, [Ljava/lang/Object;

    .line 144
    .line 145
    array-length v2, p1

    .line 146
    check-cast p2, [Ljava/lang/Object;

    .line 147
    .line 148
    array-length v3, p2

    .line 149
    if-eq v2, v3, :cond_d

    .line 150
    .line 151
    return v1

    .line 152
    :cond_d
    array-length v2, p1

    .line 153
    move v3, v1

    .line 154
    :goto_2
    if-ge v3, v2, :cond_f

    .line 155
    .line 156
    aget-object v4, p1, v3

    .line 157
    .line 158
    aget-object v5, p2, v3

    .line 159
    .line 160
    invoke-virtual {p0, v4, v5}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_e

    .line 165
    .line 166
    return v1

    .line 167
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_f
    return v0

    .line 171
    :cond_10
    instance-of v2, p1, Ljava/util/List;

    .line 172
    .line 173
    if-eqz v2, :cond_14

    .line 174
    .line 175
    instance-of v2, p2, Ljava/util/List;

    .line 176
    .line 177
    if-eqz v2, :cond_14

    .line 178
    .line 179
    check-cast p1, Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    check-cast p2, Ljava/util/List;

    .line 186
    .line 187
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eq v2, v3, :cond_11

    .line 192
    .line 193
    return v1

    .line 194
    :cond_11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_13

    .line 207
    .line 208
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_13

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {p0, v2, v3}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-nez v2, :cond_12

    .line 227
    .line 228
    return v1

    .line 229
    :cond_13
    return v0

    .line 230
    :cond_14
    instance-of v2, p1, Ljava/util/Map;

    .line 231
    .line 232
    if-eqz v2, :cond_19

    .line 233
    .line 234
    instance-of v2, p2, Ljava/util/Map;

    .line 235
    .line 236
    if-eqz v2, :cond_19

    .line 237
    .line 238
    check-cast p1, Ljava/util/Map;

    .line 239
    .line 240
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    check-cast p2, Ljava/util/Map;

    .line 245
    .line 246
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eq v2, v3, :cond_15

    .line 251
    .line 252
    return v1

    .line 253
    :cond_15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_18

    .line 266
    .line 267
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Ljava/util/Map$Entry;

    .line 272
    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-eqz v5, :cond_17

    .line 290
    .line 291
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    check-cast v5, Ljava/util/Map$Entry;

    .line 296
    .line 297
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {p0, v3, v6}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    if-eqz v6, :cond_16

    .line 306
    .line 307
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {p0, v2, v3}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_17

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_17
    return v1

    .line 323
    :cond_18
    return v0

    .line 324
    :cond_19
    instance-of v0, p1, Ljava/lang/Double;

    .line 325
    .line 326
    if-eqz v0, :cond_1a

    .line 327
    .line 328
    instance-of v0, p2, Ljava/lang/Double;

    .line 329
    .line 330
    if-eqz v0, :cond_1a

    .line 331
    .line 332
    check-cast p1, Ljava/lang/Number;

    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 335
    .line 336
    .line 337
    move-result-wide v0

    .line 338
    check-cast p2, Ljava/lang/Number;

    .line 339
    .line 340
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 341
    .line 342
    .line 343
    move-result-wide p1

    .line 344
    invoke-virtual {p0, v0, v1, p1, p2}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->doubleEquals(DD)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    return p1

    .line 349
    :cond_1a
    instance-of v0, p1, Ljava/lang/Float;

    .line 350
    .line 351
    if-eqz v0, :cond_1b

    .line 352
    .line 353
    instance-of v0, p2, Ljava/lang/Float;

    .line 354
    .line 355
    if-eqz v0, :cond_1b

    .line 356
    .line 357
    check-cast p1, Ljava/lang/Number;

    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    check-cast p2, Ljava/lang/Number;

    .line 364
    .line 365
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 366
    .line 367
    .line 368
    move-result p2

    .line 369
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->floatEquals(FF)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    return p1

    .line 374
    :cond_1b
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    return p1

    .line 379
    :cond_1c
    :goto_4
    return v1
.end method

.method public final deepHash(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, [B

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, [B

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_1
    instance-of v1, p1, [I

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    check-cast p1, [I

    .line 21
    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    instance-of v1, p1, [J

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    check-cast p1, [J

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([J)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_3
    instance-of v1, p1, [D

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    check-cast p1, [D

    .line 44
    .line 45
    array-length v1, p1

    .line 46
    :goto_0
    if-ge v0, v1, :cond_4

    .line 47
    .line 48
    aget-wide v3, p1, v0

    .line 49
    .line 50
    mul-int/lit8 v2, v2, 0x1f

    .line 51
    .line 52
    invoke-virtual {p0, v3, v4}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->doubleHash(D)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v2, v3

    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    return v2

    .line 61
    :cond_5
    instance-of v1, p1, [F

    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    check-cast p1, [F

    .line 66
    .line 67
    array-length v1, p1

    .line 68
    :goto_1
    if-ge v0, v1, :cond_6

    .line 69
    .line 70
    aget v3, p1, v0

    .line 71
    .line 72
    mul-int/lit8 v2, v2, 0x1f

    .line 73
    .line 74
    invoke-virtual {p0, v3}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->floatHash(F)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    add-int/2addr v2, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    return v2

    .line 83
    :cond_7
    instance-of v1, p1, [Ljava/lang/Object;

    .line 84
    .line 85
    if-eqz v1, :cond_9

    .line 86
    .line 87
    check-cast p1, [Ljava/lang/Object;

    .line 88
    .line 89
    array-length v1, p1

    .line 90
    :goto_2
    if-ge v0, v1, :cond_8

    .line 91
    .line 92
    aget-object v3, p1, v0

    .line 93
    .line 94
    mul-int/lit8 v2, v2, 0x1f

    .line 95
    .line 96
    invoke-virtual {p0, v3}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepHash(Ljava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    add-int/2addr v2, v3

    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_8
    return v2

    .line 105
    :cond_9
    instance-of v1, p1, Ljava/util/List;

    .line 106
    .line 107
    if-eqz v1, :cond_b

    .line 108
    .line 109
    check-cast p1, Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_a

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    mul-int/lit8 v2, v2, 0x1f

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepHash(Ljava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    add-int/2addr v2, v0

    .line 132
    goto :goto_3

    .line 133
    :cond_a
    return v2

    .line 134
    :cond_b
    instance-of v1, p1, Ljava/util/Map;

    .line 135
    .line 136
    if-eqz v1, :cond_d

    .line 137
    .line 138
    check-cast p1, Ljava/util/Map;

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_c

    .line 153
    .line 154
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p0, v2}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepHash(Ljava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    mul-int/lit8 v2, v2, 0x1f

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p0, v1}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->deepHash(Ljava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    xor-int/2addr v1, v2

    .line 179
    add-int/2addr v0, v1

    .line 180
    goto :goto_4

    .line 181
    :cond_c
    return v0

    .line 182
    :cond_d
    instance-of v0, p1, Ljava/lang/Double;

    .line 183
    .line 184
    if-eqz v0, :cond_e

    .line 185
    .line 186
    check-cast p1, Ljava/lang/Number;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 189
    .line 190
    .line 191
    move-result-wide v0

    .line 192
    invoke-virtual {p0, v0, v1}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->doubleHash(D)I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    return p1

    .line 197
    :cond_e
    instance-of v0, p1, Ljava/lang/Float;

    .line 198
    .line 199
    if-eqz v0, :cond_f

    .line 200
    .line 201
    check-cast p1, Ljava/lang/Number;

    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    invoke-virtual {p0, p1}, Lio/flutter/plugins/urllauncher/MessagesPigeonUtils;->floatHash(F)I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    return p1

    .line 212
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    return p1
.end method

.method public final doubleEquals(DD)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    move-wide v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v2, p1

    .line 10
    :goto_0
    cmpg-double v4, p3, v0

    .line 11
    .line 12
    if-nez v4, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-wide v0, p3

    .line 16
    :goto_1
    cmpg-double v0, v2, v0

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    :goto_2
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public final doubleHash(D)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    const/16 v0, 0x20

    .line 13
    .line 14
    ushr-long v0, p1, v0

    .line 15
    .line 16
    xor-long/2addr p1, v0

    .line 17
    long-to-int p1, p1

    .line 18
    return p1
.end method

.method public final floatEquals(FF)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v1, p1

    .line 9
    :goto_0
    cmpg-float v2, p2, v0

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    move v0, p2

    .line 15
    :goto_1
    cmpg-float v0, v1, v0

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    :goto_2
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_3
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public final floatHash(F)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final wrapError(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lio/flutter/plugins/urllauncher/FlutterError;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lio/flutter/plugins/urllauncher/FlutterError;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/flutter/plugins/urllauncher/FlutterError;->getCode()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lio/flutter/plugins/urllauncher/FlutterError;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/flutter/plugins/urllauncher/FlutterError;->getDetails()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/collections/q;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "Cause: "

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", Stacktrace: "

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    filled-new-array {v0, v1, p1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lkotlin/collections/q;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method public final wrapResult(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/collections/p;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

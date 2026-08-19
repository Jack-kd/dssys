.class Lcom/octopus/ad/d/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d/l;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x3

    .line 9
    if-ge v3, v4, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    aget v5, v2, v3

    .line 15
    .line 16
    const/4 v10, 0x1

    .line 17
    aget v6, v2, v10

    .line 18
    .line 19
    const/4 v11, 0x2

    .line 20
    aget v7, v2, v11

    .line 21
    .line 22
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v2, v10, :cond_2

    .line 29
    .line 30
    iget-object v4, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    invoke-static/range {v4 .. v9}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l;FFFD)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 43
    .line 44
    invoke-static {v1, v10}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l;I)I

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/octopus/ad/d/l;->b(Lcom/octopus/ad/d/l;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v1, v10, :cond_a

    .line 54
    .line 55
    iget-object v4, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 56
    .line 57
    invoke-static {v4}, Lcom/octopus/ad/d/l;->c(Lcom/octopus/ad/d/l;)D

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    invoke-static/range {v4 .. v9}, Lcom/octopus/ad/d/l;->b(Lcom/octopus/ad/d/l;FFFD)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_a

    .line 66
    .line 67
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 68
    .line 69
    invoke-static {v1, v11}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l;I)I

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/octopus/ad/d/l;->d(Lcom/octopus/ad/d/l;)I

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :cond_2
    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v4, 0x4

    .line 86
    if-ne v2, v4, :cond_a

    .line 87
    .line 88
    iget-object v2, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/octopus/ad/d/l;->e(Lcom/octopus/ad/d/l;)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_3
    iget-object v2, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/octopus/ad/d/l;->f(Lcom/octopus/ad/d/l;)F

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    const/4 v4, 0x0

    .line 105
    cmpl-float v2, v2, v4

    .line 106
    .line 107
    if-eqz v2, :cond_4

    .line 108
    .line 109
    iget-wide v8, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 110
    .line 111
    long-to-float v2, v8

    .line 112
    iget-object v4, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 113
    .line 114
    invoke-static {v4}, Lcom/octopus/ad/d/l;->f(Lcom/octopus/ad/d/l;)F

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    sub-float/2addr v2, v4

    .line 119
    const v4, 0x3089705f    # 1.0E-9f

    .line 120
    .line 121
    .line 122
    mul-float/2addr v2, v4

    .line 123
    iget-object v4, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 124
    .line 125
    invoke-static {v4}, Lcom/octopus/ad/d/l;->g(Lcom/octopus/ad/d/l;)[F

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    aget v8, v4, v3

    .line 130
    .line 131
    mul-float v9, v5, v2

    .line 132
    .line 133
    add-float/2addr v8, v9

    .line 134
    aput v8, v4, v3

    .line 135
    .line 136
    iget-object v4, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 137
    .line 138
    invoke-static {v4}, Lcom/octopus/ad/d/l;->g(Lcom/octopus/ad/d/l;)[F

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    aget v8, v4, v10

    .line 143
    .line 144
    mul-float v9, v6, v2

    .line 145
    .line 146
    add-float/2addr v8, v9

    .line 147
    aput v8, v4, v10

    .line 148
    .line 149
    iget-object v4, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 150
    .line 151
    invoke-static {v4}, Lcom/octopus/ad/d/l;->g(Lcom/octopus/ad/d/l;)[F

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    aget v8, v4, v11

    .line 156
    .line 157
    mul-float/2addr v2, v7

    .line 158
    add-float/2addr v8, v2

    .line 159
    aput v8, v4, v11

    .line 160
    .line 161
    iget-object v2, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 162
    .line 163
    invoke-static {v2}, Lcom/octopus/ad/d/l;->g(Lcom/octopus/ad/d/l;)[F

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    aget v2, v2, v3

    .line 168
    .line 169
    float-to-double v2, v2

    .line 170
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 171
    .line 172
    .line 173
    move-result-wide v2

    .line 174
    double-to-int v3, v2

    .line 175
    iget-object v2, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 176
    .line 177
    invoke-static {v2}, Lcom/octopus/ad/d/l;->g(Lcom/octopus/ad/d/l;)[F

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    aget v2, v2, v10

    .line 182
    .line 183
    float-to-double v8, v2

    .line 184
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    .line 185
    .line 186
    .line 187
    move-result-wide v8

    .line 188
    double-to-int v2, v8

    .line 189
    iget-object v4, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 190
    .line 191
    invoke-static {v4}, Lcom/octopus/ad/d/l;->g(Lcom/octopus/ad/d/l;)[F

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    aget v4, v4, v11

    .line 196
    .line 197
    float-to-double v8, v4

    .line 198
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    .line 199
    .line 200
    .line 201
    move-result-wide v8

    .line 202
    double-to-int v4, v8

    .line 203
    goto :goto_0

    .line 204
    :cond_4
    move v2, v3

    .line 205
    move v4, v2

    .line 206
    :goto_0
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 207
    .line 208
    iget-wide v12, v1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 209
    .line 210
    long-to-float v1, v12

    .line 211
    invoke-static {v8, v1}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l;F)F

    .line 212
    .line 213
    .line 214
    int-to-double v8, v3

    .line 215
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 216
    .line 217
    invoke-static {v1}, Lcom/octopus/ad/d/l;->h(Lcom/octopus/ad/d/l;)D

    .line 218
    .line 219
    .line 220
    move-result-wide v12

    .line 221
    cmpl-double v1, v8, v12

    .line 222
    .line 223
    if-lez v1, :cond_5

    .line 224
    .line 225
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 226
    .line 227
    invoke-static {v1, v10}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l;Z)Z

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 231
    .line 232
    invoke-static {v1}, Lcom/octopus/ad/d/l;->i(Lcom/octopus/ad/d/l;)I

    .line 233
    .line 234
    .line 235
    :cond_5
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 236
    .line 237
    invoke-static {v1}, Lcom/octopus/ad/d/l;->h(Lcom/octopus/ad/d/l;)D

    .line 238
    .line 239
    .line 240
    move-result-wide v12

    .line 241
    neg-double v12, v12

    .line 242
    cmpg-double v1, v8, v12

    .line 243
    .line 244
    if-gez v1, :cond_6

    .line 245
    .line 246
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 247
    .line 248
    invoke-static {v1, v10}, Lcom/octopus/ad/d/l;->b(Lcom/octopus/ad/d/l;Z)Z

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 252
    .line 253
    invoke-static {v1}, Lcom/octopus/ad/d/l;->i(Lcom/octopus/ad/d/l;)I

    .line 254
    .line 255
    .line 256
    :cond_6
    int-to-double v8, v2

    .line 257
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 258
    .line 259
    invoke-static {v1}, Lcom/octopus/ad/d/l;->h(Lcom/octopus/ad/d/l;)D

    .line 260
    .line 261
    .line 262
    move-result-wide v12

    .line 263
    cmpl-double v1, v8, v12

    .line 264
    .line 265
    if-lez v1, :cond_7

    .line 266
    .line 267
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 268
    .line 269
    invoke-static {v1, v10}, Lcom/octopus/ad/d/l;->c(Lcom/octopus/ad/d/l;Z)Z

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 273
    .line 274
    invoke-static {v1}, Lcom/octopus/ad/d/l;->i(Lcom/octopus/ad/d/l;)I

    .line 275
    .line 276
    .line 277
    :cond_7
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 278
    .line 279
    invoke-static {v1}, Lcom/octopus/ad/d/l;->h(Lcom/octopus/ad/d/l;)D

    .line 280
    .line 281
    .line 282
    move-result-wide v12

    .line 283
    neg-double v12, v12

    .line 284
    cmpg-double v1, v8, v12

    .line 285
    .line 286
    if-gez v1, :cond_8

    .line 287
    .line 288
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 289
    .line 290
    invoke-static {v1, v10}, Lcom/octopus/ad/d/l;->d(Lcom/octopus/ad/d/l;Z)Z

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 294
    .line 295
    invoke-static {v1}, Lcom/octopus/ad/d/l;->i(Lcom/octopus/ad/d/l;)I

    .line 296
    .line 297
    .line 298
    :cond_8
    int-to-double v8, v4

    .line 299
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 300
    .line 301
    invoke-static {v1}, Lcom/octopus/ad/d/l;->h(Lcom/octopus/ad/d/l;)D

    .line 302
    .line 303
    .line 304
    move-result-wide v12

    .line 305
    cmpl-double v1, v8, v12

    .line 306
    .line 307
    if-lez v1, :cond_9

    .line 308
    .line 309
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 310
    .line 311
    invoke-static {v1, v10}, Lcom/octopus/ad/d/l;->e(Lcom/octopus/ad/d/l;Z)Z

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 315
    .line 316
    invoke-static {v1}, Lcom/octopus/ad/d/l;->i(Lcom/octopus/ad/d/l;)I

    .line 317
    .line 318
    .line 319
    :cond_9
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 320
    .line 321
    invoke-static {v1}, Lcom/octopus/ad/d/l;->h(Lcom/octopus/ad/d/l;)D

    .line 322
    .line 323
    .line 324
    move-result-wide v12

    .line 325
    neg-double v12, v12

    .line 326
    cmpg-double v1, v8, v12

    .line 327
    .line 328
    if-gez v1, :cond_b

    .line 329
    .line 330
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 331
    .line 332
    invoke-static {v1, v10}, Lcom/octopus/ad/d/l;->f(Lcom/octopus/ad/d/l;Z)Z

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 336
    .line 337
    invoke-static {v1}, Lcom/octopus/ad/d/l;->i(Lcom/octopus/ad/d/l;)I

    .line 338
    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_a
    :goto_1
    move v2, v3

    .line 342
    move v4, v2

    .line 343
    :cond_b
    :goto_2
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 344
    .line 345
    invoke-static {v1}, Lcom/octopus/ad/d/l;->j(Lcom/octopus/ad/d/l;)I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 350
    .line 351
    invoke-static {v8}, Lcom/octopus/ad/d/l;->k(Lcom/octopus/ad/d/l;)I

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    if-lt v1, v8, :cond_17

    .line 356
    .line 357
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 358
    .line 359
    invoke-static {v1}, Lcom/octopus/ad/d/l;->e(Lcom/octopus/ad/d/l;)I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-ge v1, v11, :cond_c

    .line 364
    .line 365
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 366
    .line 367
    invoke-static {v1}, Lcom/octopus/ad/d/l;->l(Lcom/octopus/ad/d/l;)I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 372
    .line 373
    invoke-static {v8}, Lcom/octopus/ad/d/l;->e(Lcom/octopus/ad/d/l;)I

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    if-ge v1, v8, :cond_f

    .line 378
    .line 379
    :cond_c
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 380
    .line 381
    invoke-static {v1}, Lcom/octopus/ad/d/l;->m(Lcom/octopus/ad/d/l;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_d

    .line 386
    .line 387
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 388
    .line 389
    invoke-static {v1}, Lcom/octopus/ad/d/l;->n(Lcom/octopus/ad/d/l;)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-nez v1, :cond_f

    .line 394
    .line 395
    :cond_d
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 396
    .line 397
    invoke-static {v1}, Lcom/octopus/ad/d/l;->o(Lcom/octopus/ad/d/l;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_e

    .line 402
    .line 403
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 404
    .line 405
    invoke-static {v1}, Lcom/octopus/ad/d/l;->p(Lcom/octopus/ad/d/l;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_f

    .line 410
    .line 411
    :cond_e
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 412
    .line 413
    invoke-static {v1}, Lcom/octopus/ad/d/l;->q(Lcom/octopus/ad/d/l;)Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_17

    .line 418
    .line 419
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 420
    .line 421
    invoke-static {v1}, Lcom/octopus/ad/d/l;->r(Lcom/octopus/ad/d/l;)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_17

    .line 426
    .line 427
    :cond_f
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    .line 440
    .line 441
    .line 442
    move-result v7

    .line 443
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    .line 444
    .line 445
    .line 446
    move-result v7

    .line 447
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 448
    .line 449
    invoke-virtual {v8, v1, v7}, Lcom/octopus/ad/d/l;->a(FF)F

    .line 450
    .line 451
    .line 452
    move-result v15

    .line 453
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 454
    .line 455
    invoke-virtual {v1, v5, v7}, Lcom/octopus/ad/d/l;->a(FF)F

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    iget-object v5, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 460
    .line 461
    invoke-virtual {v5, v6, v7}, Lcom/octopus/ad/d/l;->a(FF)F

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    iget-object v6, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 466
    .line 467
    invoke-static {v6, v15, v1, v5}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l;FFF)D

    .line 468
    .line 469
    .line 470
    move-result-wide v6

    .line 471
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 484
    .line 485
    .line 486
    move-result v12

    .line 487
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 488
    .line 489
    .line 490
    move-result v11

    .line 491
    const/16 v12, 0x23

    .line 492
    .line 493
    if-ge v11, v12, :cond_15

    .line 494
    .line 495
    new-instance v13, Ljava/util/Random;

    .line 496
    .line 497
    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    .line 498
    .line 499
    .line 500
    const/16 v14, 0x1e

    .line 501
    .line 502
    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    .line 503
    .line 504
    .line 505
    move-result v13

    .line 506
    add-int/2addr v13, v12

    .line 507
    if-ne v8, v11, :cond_11

    .line 508
    .line 509
    if-gez v3, :cond_10

    .line 510
    .line 511
    neg-int v3, v13

    .line 512
    goto :goto_3

    .line 513
    :cond_10
    move v3, v13

    .line 514
    goto :goto_3

    .line 515
    :cond_11
    if-ne v9, v11, :cond_13

    .line 516
    .line 517
    if-gez v2, :cond_12

    .line 518
    .line 519
    neg-int v2, v13

    .line 520
    goto :goto_3

    .line 521
    :cond_12
    move v2, v13

    .line 522
    goto :goto_3

    .line 523
    :cond_13
    if-gez v4, :cond_14

    .line 524
    .line 525
    neg-int v4, v13

    .line 526
    goto :goto_3

    .line 527
    :cond_14
    move v4, v13

    .line 528
    :goto_3
    move/from16 v19, v13

    .line 529
    .line 530
    goto :goto_4

    .line 531
    :cond_15
    move/from16 v19, v11

    .line 532
    .line 533
    :goto_4
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 534
    .line 535
    invoke-static {v8}, Lcom/octopus/ad/d/l;->j(Lcom/octopus/ad/d/l;)I

    .line 536
    .line 537
    .line 538
    move-result v8

    .line 539
    iget-object v9, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 540
    .line 541
    invoke-static {v9}, Lcom/octopus/ad/d/l;->l(Lcom/octopus/ad/d/l;)I

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 546
    .line 547
    .line 548
    move-result v20

    .line 549
    new-instance v11, Lcom/octopus/ad/a/d;

    .line 550
    .line 551
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 552
    .line 553
    invoke-static {v8}, Lcom/octopus/ad/d/l;->s(Lcom/octopus/ad/d/l;)I

    .line 554
    .line 555
    .line 556
    move-result v12

    .line 557
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 558
    .line 559
    invoke-static {v8}, Lcom/octopus/ad/d/l;->t(Lcom/octopus/ad/d/l;)I

    .line 560
    .line 561
    .line 562
    move-result v13

    .line 563
    iget-object v8, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 564
    .line 565
    invoke-static {v8}, Lcom/octopus/ad/d/l;->u(Lcom/octopus/ad/d/l;)I

    .line 566
    .line 567
    .line 568
    move-result v14

    .line 569
    double-to-int v6, v6

    .line 570
    move/from16 v16, v1

    .line 571
    .line 572
    move/from16 v17, v5

    .line 573
    .line 574
    move/from16 v18, v6

    .line 575
    .line 576
    invoke-direct/range {v11 .. v20}, Lcom/octopus/ad/a/d;-><init>(IIIFFFIII)V

    .line 577
    .line 578
    .line 579
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 580
    .line 581
    invoke-static {v1}, Lcom/octopus/ad/d/l;->s(Lcom/octopus/ad/d/l;)I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-ne v1, v10, :cond_16

    .line 586
    .line 587
    new-instance v1, Ljava/util/Random;

    .line 588
    .line 589
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 590
    .line 591
    .line 592
    const/16 v5, 0x1f4

    .line 593
    .line 594
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    add-int/lit16 v1, v1, 0xbb8

    .line 599
    .line 600
    invoke-virtual {v11, v3, v2, v4, v1}, Lcom/octopus/ad/a/d;->a(IIII)V

    .line 601
    .line 602
    .line 603
    :cond_16
    iget-object v1, v0, Lcom/octopus/ad/d/l$1;->a:Lcom/octopus/ad/d/l;

    .line 604
    .line 605
    invoke-virtual {v1, v11}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/a/d;)V

    .line 606
    .line 607
    .line 608
    :cond_17
    :goto_5
    return-void
.end method

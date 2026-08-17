.class Lcom/beizi/fusion/nn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/nn;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field final synthetic g:Lcom/beizi/fusion/nn;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/nn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_a

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/beizi/fusion/nn$a;->c:F

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/beizi/fusion/nn$a;->d:F

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "mCurPosX = "

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/beizi/fusion/nn$a;->c:F

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ",mCurPosY = "

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/beizi/fusion/nn$a;->d:F

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ",mPosX = "

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ",mPosY = "

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "BeiZisAd"

    .line 79
    .line 80
    invoke-static {v1, p1}, Lcom/beizi/fusion/nh;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget p1, p0, Lcom/beizi/fusion/nn$a;->d:F

    .line 84
    .line 85
    iget v1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 86
    .line 87
    sub-float/2addr p1, v1

    .line 88
    const/4 v1, 0x0

    .line 89
    cmpl-float v2, p1, v1

    .line 90
    .line 91
    const-string v3, ""

    .line 92
    .line 93
    if-lez v2, :cond_3

    .line 94
    .line 95
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iget-object v2, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 100
    .line 101
    invoke-static {v2}, Lcom/beizi/fusion/nn;->a(Lcom/beizi/fusion/nn;)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    int-to-float v2, v2

    .line 106
    cmpl-float p1, p1, v2

    .line 107
    .line 108
    if-lez p1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/beizi/fusion/nn;->i(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/beizi/fusion/nn;->b(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_2

    .line 127
    .line 128
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/beizi/fusion/nn;->j(Lcom/beizi/fusion/nn;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_b

    .line 135
    .line 136
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-eqz p1, :cond_b

    .line 143
    .line 144
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    iget v1, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    iget v1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 173
    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    iget v1, p0, Lcom/beizi/fusion/nn$a;->e:F

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    iget v1, p0, Lcom/beizi/fusion/nn$a;->f:F

    .line 207
    .line 208
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v9

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    invoke-interface/range {v4 .. v12}, Lcom/beizi/fusion/nn$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_3
    iget p1, p0, Lcom/beizi/fusion/nn$a;->d:F

    .line 300
    .line 301
    iget v2, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 302
    .line 303
    sub-float/2addr p1, v2

    .line 304
    cmpg-float v2, p1, v1

    .line 305
    .line 306
    if-gez v2, :cond_5

    .line 307
    .line 308
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    iget-object v2, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 313
    .line 314
    invoke-static {v2}, Lcom/beizi/fusion/nn;->a(Lcom/beizi/fusion/nn;)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    int-to-float v2, v2

    .line 319
    cmpl-float p1, p1, v2

    .line 320
    .line 321
    if-lez p1, :cond_5

    .line 322
    .line 323
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 324
    .line 325
    invoke-static {p1}, Lcom/beizi/fusion/nn;->l(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iget-object v1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 330
    .line 331
    invoke-static {v1}, Lcom/beizi/fusion/nn;->b(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-nez p1, :cond_4

    .line 340
    .line 341
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 342
    .line 343
    invoke-static {p1}, Lcom/beizi/fusion/nn;->j(Lcom/beizi/fusion/nn;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_b

    .line 348
    .line 349
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 350
    .line 351
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    if-eqz p1, :cond_b

    .line 356
    .line 357
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 358
    .line 359
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    iget v1, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 369
    .line 370
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    iget v1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 386
    .line 387
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    iget v1, p0, Lcom/beizi/fusion/nn$a;->e:F

    .line 403
    .line 404
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    iget v1, p0, Lcom/beizi/fusion/nn$a;->f:F

    .line 420
    .line 421
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 437
    .line 438
    .line 439
    move-result v1

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 456
    .line 457
    .line 458
    move-result v1

    .line 459
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v11

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 494
    .line 495
    .line 496
    move-result p2

    .line 497
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v12

    .line 507
    invoke-interface/range {v4 .. v12}, Lcom/beizi/fusion/nn$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_0

    .line 511
    .line 512
    :cond_5
    iget p1, p0, Lcom/beizi/fusion/nn$a;->c:F

    .line 513
    .line 514
    iget v2, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 515
    .line 516
    sub-float/2addr p1, v2

    .line 517
    cmpg-float v2, p1, v1

    .line 518
    .line 519
    if-gez v2, :cond_7

    .line 520
    .line 521
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 522
    .line 523
    .line 524
    move-result p1

    .line 525
    iget-object v2, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 526
    .line 527
    invoke-static {v2}, Lcom/beizi/fusion/nn;->a(Lcom/beizi/fusion/nn;)I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    int-to-float v2, v2

    .line 532
    cmpl-float p1, p1, v2

    .line 533
    .line 534
    if-lez p1, :cond_7

    .line 535
    .line 536
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 537
    .line 538
    invoke-static {p1}, Lcom/beizi/fusion/nn;->m(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    iget-object v1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 543
    .line 544
    invoke-static {v1}, Lcom/beizi/fusion/nn;->b(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 549
    .line 550
    .line 551
    move-result p1

    .line 552
    if-nez p1, :cond_6

    .line 553
    .line 554
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 555
    .line 556
    invoke-static {p1}, Lcom/beizi/fusion/nn;->j(Lcom/beizi/fusion/nn;)Z

    .line 557
    .line 558
    .line 559
    move-result p1

    .line 560
    if-eqz p1, :cond_b

    .line 561
    .line 562
    :cond_6
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 563
    .line 564
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    if-eqz p1, :cond_b

    .line 569
    .line 570
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 571
    .line 572
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 573
    .line 574
    .line 575
    move-result-object v4

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    iget v1, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 582
    .line 583
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    new-instance p1, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .line 597
    .line 598
    iget v1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 599
    .line 600
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    iget v1, p0, Lcom/beizi/fusion/nn$a;->e:F

    .line 616
    .line 617
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    new-instance p1, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .line 631
    .line 632
    iget v1, p0, Lcom/beizi/fusion/nn$a;->f:F

    .line 633
    .line 634
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v8

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v9

    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    .line 664
    .line 665
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 669
    .line 670
    .line 671
    move-result v1

    .line 672
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v10

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    .line 683
    .line 684
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .line 686
    .line 687
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v11

    .line 701
    new-instance p1, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .line 705
    .line 706
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 707
    .line 708
    .line 709
    move-result p2

    .line 710
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v12

    .line 720
    invoke-interface/range {v4 .. v12}, Lcom/beizi/fusion/nn$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :cond_7
    iget p1, p0, Lcom/beizi/fusion/nn$a;->c:F

    .line 726
    .line 727
    iget v2, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 728
    .line 729
    sub-float/2addr p1, v2

    .line 730
    cmpl-float v1, p1, v1

    .line 731
    .line 732
    if-lez v1, :cond_9

    .line 733
    .line 734
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 735
    .line 736
    .line 737
    move-result p1

    .line 738
    iget-object v1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 739
    .line 740
    invoke-static {v1}, Lcom/beizi/fusion/nn;->a(Lcom/beizi/fusion/nn;)I

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    int-to-float v1, v1

    .line 745
    cmpl-float p1, p1, v1

    .line 746
    .line 747
    if-lez p1, :cond_9

    .line 748
    .line 749
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 750
    .line 751
    invoke-static {p1}, Lcom/beizi/fusion/nn;->n(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    iget-object v1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 756
    .line 757
    invoke-static {v1}, Lcom/beizi/fusion/nn;->b(Lcom/beizi/fusion/nn;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 762
    .line 763
    .line 764
    move-result p1

    .line 765
    if-nez p1, :cond_8

    .line 766
    .line 767
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 768
    .line 769
    invoke-static {p1}, Lcom/beizi/fusion/nn;->j(Lcom/beizi/fusion/nn;)Z

    .line 770
    .line 771
    .line 772
    move-result p1

    .line 773
    if-eqz p1, :cond_b

    .line 774
    .line 775
    :cond_8
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 776
    .line 777
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    if-eqz p1, :cond_b

    .line 782
    .line 783
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 784
    .line 785
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    iget v1, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 795
    .line 796
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v5

    .line 806
    new-instance p1, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .line 810
    .line 811
    iget v1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 812
    .line 813
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v6

    .line 823
    new-instance p1, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .line 827
    .line 828
    iget v1, p0, Lcom/beizi/fusion/nn$a;->e:F

    .line 829
    .line 830
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v7

    .line 840
    new-instance p1, Ljava/lang/StringBuilder;

    .line 841
    .line 842
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .line 844
    .line 845
    iget v1, p0, Lcom/beizi/fusion/nn$a;->f:F

    .line 846
    .line 847
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v8

    .line 857
    new-instance p1, Ljava/lang/StringBuilder;

    .line 858
    .line 859
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    .line 861
    .line 862
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v9

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    .line 877
    .line 878
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .line 880
    .line 881
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 882
    .line 883
    .line 884
    move-result v1

    .line 885
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v10

    .line 895
    new-instance p1, Ljava/lang/StringBuilder;

    .line 896
    .line 897
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    .line 899
    .line 900
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 901
    .line 902
    .line 903
    move-result v1

    .line 904
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v11

    .line 914
    new-instance p1, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .line 918
    .line 919
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 920
    .line 921
    .line 922
    move-result p2

    .line 923
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v12

    .line 933
    invoke-interface/range {v4 .. v12}, Lcom/beizi/fusion/nn$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    goto/16 :goto_0

    .line 937
    .line 938
    :cond_9
    iget p1, p0, Lcom/beizi/fusion/nn$a;->c:F

    .line 939
    .line 940
    iget p2, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 941
    .line 942
    sub-float/2addr p1, p2

    .line 943
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 944
    .line 945
    .line 946
    move-result p1

    .line 947
    const/high16 p2, 0x41700000    # 15.0f

    .line 948
    .line 949
    cmpg-float p1, p1, p2

    .line 950
    .line 951
    if-gtz p1, :cond_b

    .line 952
    .line 953
    iget p1, p0, Lcom/beizi/fusion/nn$a;->d:F

    .line 954
    .line 955
    iget v1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 956
    .line 957
    sub-float/2addr p1, v1

    .line 958
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 959
    .line 960
    .line 961
    move-result p1

    .line 962
    cmpg-float p1, p1, p2

    .line 963
    .line 964
    if-gtz p1, :cond_b

    .line 965
    .line 966
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 967
    .line 968
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 969
    .line 970
    .line 971
    move-result-object p1

    .line 972
    if-eqz p1, :cond_b

    .line 973
    .line 974
    iget-object p1, p0, Lcom/beizi/fusion/nn$a;->g:Lcom/beizi/fusion/nn;

    .line 975
    .line 976
    invoke-static {p1}, Lcom/beizi/fusion/nn;->k(Lcom/beizi/fusion/nn;)Lcom/beizi/fusion/nn$d;

    .line 977
    .line 978
    .line 979
    move-result-object v4

    .line 980
    new-instance p1, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .line 984
    .line 985
    iget p2, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 986
    .line 987
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v5

    .line 997
    new-instance p1, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1000
    .line 1001
    .line 1002
    iget p2, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 1003
    .line 1004
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v6

    .line 1014
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    .line 1018
    .line 1019
    iget p2, p0, Lcom/beizi/fusion/nn$a;->e:F

    .line 1020
    .line 1021
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v7

    .line 1031
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    .line 1035
    .line 1036
    iget p2, p0, Lcom/beizi/fusion/nn$a;->f:F

    .line 1037
    .line 1038
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v8

    .line 1048
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1051
    .line 1052
    .line 1053
    iget p2, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 1054
    .line 1055
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v9

    .line 1065
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1068
    .line 1069
    .line 1070
    iget p2, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 1071
    .line 1072
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v10

    .line 1082
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    .line 1086
    .line 1087
    iget p2, p0, Lcom/beizi/fusion/nn$a;->e:F

    .line 1088
    .line 1089
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v11

    .line 1099
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .line 1103
    .line 1104
    iget p2, p0, Lcom/beizi/fusion/nn$a;->f:F

    .line 1105
    .line 1106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v12

    .line 1116
    invoke-interface/range {v4 .. v12}, Lcom/beizi/fusion/nn$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    goto :goto_0

    .line 1120
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 1121
    .line 1122
    .line 1123
    move-result p1

    .line 1124
    iput p1, p0, Lcom/beizi/fusion/nn$a;->a:F

    .line 1125
    .line 1126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 1127
    .line 1128
    .line 1129
    move-result p1

    .line 1130
    iput p1, p0, Lcom/beizi/fusion/nn$a;->b:F

    .line 1131
    .line 1132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 1133
    .line 1134
    .line 1135
    move-result p1

    .line 1136
    iput p1, p0, Lcom/beizi/fusion/nn$a;->c:F

    .line 1137
    .line 1138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 1139
    .line 1140
    .line 1141
    move-result p1

    .line 1142
    iput p1, p0, Lcom/beizi/fusion/nn$a;->d:F

    .line 1143
    .line 1144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 1145
    .line 1146
    .line 1147
    move-result p1

    .line 1148
    iput p1, p0, Lcom/beizi/fusion/nn$a;->e:F

    .line 1149
    .line 1150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 1151
    .line 1152
    .line 1153
    move-result p1

    .line 1154
    iput p1, p0, Lcom/beizi/fusion/nn$a;->f:F

    .line 1155
    .line 1156
    :cond_b
    :goto_0
    return v0
.end method

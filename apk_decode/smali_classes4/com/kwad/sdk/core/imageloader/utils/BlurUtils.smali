.class public Lcom/kwad/sdk/core/imageloader/utils/BlurUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 37
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xb4L
        .end annotation
    .end param

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    move-object/from16 v3, p0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :cond_1
    move-object/from16 v3, p0

    .line 18
    .line 19
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move-object v3, v2

    .line 24
    :goto_0
    if-gtz v0, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 28
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    mul-int v2, v6, v10

    .line 37
    .line 38
    new-array v4, v2, [I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    move v9, v6

    .line 44
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v5, v6, -0x1

    .line 48
    .line 49
    add-int/lit8 v7, v10, -0x1

    .line 50
    .line 51
    add-int v8, v0, v0

    .line 52
    .line 53
    add-int/lit8 v9, v8, 0x1

    .line 54
    .line 55
    new-array v11, v2, [I

    .line 56
    .line 57
    new-array v12, v2, [I

    .line 58
    .line 59
    new-array v2, v2, [I

    .line 60
    .line 61
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    new-array v13, v13, [I

    .line 66
    .line 67
    const/4 v14, 0x2

    .line 68
    add-int/2addr v8, v14

    .line 69
    shr-int/2addr v8, v1

    .line 70
    mul-int/2addr v8, v8

    .line 71
    mul-int/lit16 v15, v8, 0x100

    .line 72
    .line 73
    move/from16 v16, v1

    .line 74
    .line 75
    new-array v1, v15, [I

    .line 76
    .line 77
    const/16 p2, 0x0

    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    :goto_1
    if-ge v14, v15, :cond_3

    .line 81
    .line 82
    div-int v17, v14, v8

    .line 83
    .line 84
    aput v17, v1, v14

    .line 85
    .line 86
    add-int/lit8 v14, v14, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/4 v14, 0x2

    .line 90
    new-array v8, v14, [I

    .line 91
    .line 92
    const/4 v14, 0x3

    .line 93
    aput v14, v8, v16

    .line 94
    .line 95
    aput v9, v8, p2

    .line 96
    .line 97
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 98
    .line 99
    invoke-static {v14, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    check-cast v8, [[I

    .line 104
    .line 105
    add-int/lit8 v14, v0, 0x1

    .line 106
    .line 107
    move/from16 v15, p2

    .line 108
    .line 109
    move/from16 v17, v15

    .line 110
    .line 111
    move/from16 v18, v17

    .line 112
    .line 113
    :goto_2
    if-ge v15, v10, :cond_8

    .line 114
    .line 115
    move-object/from16 v19, v1

    .line 116
    .line 117
    neg-int v1, v0

    .line 118
    move/from16 v20, p2

    .line 119
    .line 120
    move/from16 v21, v20

    .line 121
    .line 122
    move/from16 v22, v21

    .line 123
    .line 124
    move/from16 v23, v22

    .line 125
    .line 126
    move/from16 v24, v23

    .line 127
    .line 128
    move/from16 v25, v24

    .line 129
    .line 130
    move/from16 v26, v25

    .line 131
    .line 132
    move/from16 v27, v26

    .line 133
    .line 134
    move/from16 v28, v27

    .line 135
    .line 136
    :goto_3
    const v29, 0xff00

    .line 137
    .line 138
    .line 139
    const/high16 v30, 0xff0000

    .line 140
    .line 141
    if-gt v1, v0, :cond_5

    .line 142
    .line 143
    move-object/from16 v31, v2

    .line 144
    .line 145
    move-object/from16 v32, v3

    .line 146
    .line 147
    move/from16 v2, p2

    .line 148
    .line 149
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    add-int v3, v17, v3

    .line 158
    .line 159
    aget v3, v4, v3

    .line 160
    .line 161
    add-int v33, v1, v0

    .line 162
    .line 163
    aget-object v33, v8, v33

    .line 164
    .line 165
    and-int v30, v3, v30

    .line 166
    .line 167
    shr-int/lit8 v30, v30, 0x10

    .line 168
    .line 169
    aput v30, v33, v2

    .line 170
    .line 171
    and-int v29, v3, v29

    .line 172
    .line 173
    shr-int/lit8 v29, v29, 0x8

    .line 174
    .line 175
    aput v29, v33, v16

    .line 176
    .line 177
    and-int/lit16 v3, v3, 0xff

    .line 178
    .line 179
    const/16 v29, 0x2

    .line 180
    .line 181
    aput v3, v33, v29

    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    sub-int v3, v14, v3

    .line 188
    .line 189
    aget v30, v33, v2

    .line 190
    .line 191
    mul-int v2, v30, v3

    .line 192
    .line 193
    add-int v28, v28, v2

    .line 194
    .line 195
    aget v2, v33, v16

    .line 196
    .line 197
    mul-int v34, v2, v3

    .line 198
    .line 199
    add-int v20, v20, v34

    .line 200
    .line 201
    aget v33, v33, v29

    .line 202
    .line 203
    mul-int v3, v3, v33

    .line 204
    .line 205
    add-int v21, v21, v3

    .line 206
    .line 207
    if-lez v1, :cond_4

    .line 208
    .line 209
    add-int v25, v25, v30

    .line 210
    .line 211
    add-int v26, v26, v2

    .line 212
    .line 213
    add-int v27, v27, v33

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_4
    add-int v22, v22, v30

    .line 217
    .line 218
    add-int v23, v23, v2

    .line 219
    .line 220
    add-int v24, v24, v33

    .line 221
    .line 222
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 223
    .line 224
    move-object/from16 v2, v31

    .line 225
    .line 226
    move-object/from16 v3, v32

    .line 227
    .line 228
    const/16 p2, 0x0

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_5
    move-object/from16 v31, v2

    .line 232
    .line 233
    move-object/from16 v32, v3

    .line 234
    .line 235
    move v2, v0

    .line 236
    const/4 v1, 0x0

    .line 237
    :goto_5
    if-ge v1, v6, :cond_7

    .line 238
    .line 239
    aget v3, v19, v28

    .line 240
    .line 241
    aput v3, v11, v17

    .line 242
    .line 243
    aget v3, v19, v20

    .line 244
    .line 245
    aput v3, v12, v17

    .line 246
    .line 247
    aget v3, v19, v21

    .line 248
    .line 249
    aput v3, v31, v17

    .line 250
    .line 251
    sub-int v28, v28, v22

    .line 252
    .line 253
    sub-int v20, v20, v23

    .line 254
    .line 255
    sub-int v21, v21, v24

    .line 256
    .line 257
    sub-int v3, v2, v0

    .line 258
    .line 259
    add-int/2addr v3, v9

    .line 260
    rem-int/2addr v3, v9

    .line 261
    aget-object v3, v8, v3

    .line 262
    .line 263
    const/16 v33, 0x0

    .line 264
    .line 265
    aget v34, v3, v33

    .line 266
    .line 267
    sub-int v22, v22, v34

    .line 268
    .line 269
    aget v33, v3, v16

    .line 270
    .line 271
    sub-int v23, v23, v33

    .line 272
    .line 273
    const/16 v33, 0x2

    .line 274
    .line 275
    aget v34, v3, v33

    .line 276
    .line 277
    sub-int v24, v24, v34

    .line 278
    .line 279
    if-nez v15, :cond_6

    .line 280
    .line 281
    add-int v33, v1, v0

    .line 282
    .line 283
    move/from16 v34, v1

    .line 284
    .line 285
    add-int/lit8 v1, v33, 0x1

    .line 286
    .line 287
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    aput v1, v13, v34

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_6
    move/from16 v34, v1

    .line 295
    .line 296
    :goto_6
    aget v1, v13, v34

    .line 297
    .line 298
    add-int v1, v18, v1

    .line 299
    .line 300
    aget v1, v4, v1

    .line 301
    .line 302
    and-int v33, v1, v30

    .line 303
    .line 304
    shr-int/lit8 v33, v33, 0x10

    .line 305
    .line 306
    const/16 v35, 0x0

    .line 307
    .line 308
    aput v33, v3, v35

    .line 309
    .line 310
    and-int v35, v1, v29

    .line 311
    .line 312
    shr-int/lit8 v35, v35, 0x8

    .line 313
    .line 314
    aput v35, v3, v16

    .line 315
    .line 316
    and-int/lit16 v1, v1, 0xff

    .line 317
    .line 318
    const/16 v36, 0x2

    .line 319
    .line 320
    aput v1, v3, v36

    .line 321
    .line 322
    add-int v25, v25, v33

    .line 323
    .line 324
    add-int v26, v26, v35

    .line 325
    .line 326
    add-int v27, v27, v1

    .line 327
    .line 328
    add-int v28, v28, v25

    .line 329
    .line 330
    add-int v20, v20, v26

    .line 331
    .line 332
    add-int v21, v21, v27

    .line 333
    .line 334
    add-int/lit8 v2, v2, 0x1

    .line 335
    .line 336
    rem-int/2addr v2, v9

    .line 337
    rem-int v1, v2, v9

    .line 338
    .line 339
    aget-object v1, v8, v1

    .line 340
    .line 341
    const/16 v33, 0x0

    .line 342
    .line 343
    aget v3, v1, v33

    .line 344
    .line 345
    add-int v22, v22, v3

    .line 346
    .line 347
    aget v33, v1, v16

    .line 348
    .line 349
    add-int v23, v23, v33

    .line 350
    .line 351
    const/16 v36, 0x2

    .line 352
    .line 353
    aget v1, v1, v36

    .line 354
    .line 355
    add-int v24, v24, v1

    .line 356
    .line 357
    sub-int v25, v25, v3

    .line 358
    .line 359
    sub-int v26, v26, v33

    .line 360
    .line 361
    sub-int v27, v27, v1

    .line 362
    .line 363
    add-int/lit8 v17, v17, 0x1

    .line 364
    .line 365
    add-int/lit8 v1, v34, 0x1

    .line 366
    .line 367
    goto/16 :goto_5

    .line 368
    .line 369
    :cond_7
    add-int v18, v18, v6

    .line 370
    .line 371
    add-int/lit8 v15, v15, 0x1

    .line 372
    .line 373
    move-object/from16 v1, v19

    .line 374
    .line 375
    move-object/from16 v2, v31

    .line 376
    .line 377
    move-object/from16 v3, v32

    .line 378
    .line 379
    const/16 p2, 0x0

    .line 380
    .line 381
    goto/16 :goto_2

    .line 382
    .line 383
    :cond_8
    move-object/from16 v19, v1

    .line 384
    .line 385
    move-object/from16 v31, v2

    .line 386
    .line 387
    move-object/from16 v32, v3

    .line 388
    .line 389
    const/4 v2, 0x0

    .line 390
    :goto_7
    if-ge v2, v6, :cond_e

    .line 391
    .line 392
    neg-int v1, v0

    .line 393
    mul-int v3, v1, v6

    .line 394
    .line 395
    move/from16 v24, v2

    .line 396
    .line 397
    move v2, v3

    .line 398
    const/4 v3, 0x0

    .line 399
    const/4 v5, 0x0

    .line 400
    const/4 v15, 0x0

    .line 401
    const/16 v17, 0x0

    .line 402
    .line 403
    const/16 v18, 0x0

    .line 404
    .line 405
    const/16 v20, 0x0

    .line 406
    .line 407
    const/16 v21, 0x0

    .line 408
    .line 409
    const/16 v22, 0x0

    .line 410
    .line 411
    const/16 v23, 0x0

    .line 412
    .line 413
    :goto_8
    if-gt v1, v0, :cond_b

    .line 414
    .line 415
    const/4 v0, 0x0

    .line 416
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 417
    .line 418
    .line 419
    move-result v25

    .line 420
    add-int v25, v25, v24

    .line 421
    .line 422
    add-int v26, v1, p1

    .line 423
    .line 424
    aget-object v26, v8, v26

    .line 425
    .line 426
    aget v27, v11, v25

    .line 427
    .line 428
    aput v27, v26, v0

    .line 429
    .line 430
    aget v0, v12, v25

    .line 431
    .line 432
    aput v0, v26, v16

    .line 433
    .line 434
    aget v0, v31, v25

    .line 435
    .line 436
    const/16 v36, 0x2

    .line 437
    .line 438
    aput v0, v26, v36

    .line 439
    .line 440
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    sub-int v0, v14, v0

    .line 445
    .line 446
    aget v27, v11, v25

    .line 447
    .line 448
    mul-int v27, v27, v0

    .line 449
    .line 450
    add-int v23, v23, v27

    .line 451
    .line 452
    aget v27, v12, v25

    .line 453
    .line 454
    mul-int v27, v27, v0

    .line 455
    .line 456
    add-int v3, v3, v27

    .line 457
    .line 458
    aget v25, v31, v25

    .line 459
    .line 460
    mul-int v25, v25, v0

    .line 461
    .line 462
    add-int v5, v5, v25

    .line 463
    .line 464
    if-lez v1, :cond_9

    .line 465
    .line 466
    const/16 v33, 0x0

    .line 467
    .line 468
    aget v0, v26, v33

    .line 469
    .line 470
    add-int v20, v20, v0

    .line 471
    .line 472
    aget v0, v26, v16

    .line 473
    .line 474
    add-int v21, v21, v0

    .line 475
    .line 476
    const/16 v36, 0x2

    .line 477
    .line 478
    aget v0, v26, v36

    .line 479
    .line 480
    add-int v22, v22, v0

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_9
    const/16 v33, 0x0

    .line 484
    .line 485
    const/16 v36, 0x2

    .line 486
    .line 487
    aget v0, v26, v33

    .line 488
    .line 489
    add-int/2addr v15, v0

    .line 490
    aget v0, v26, v16

    .line 491
    .line 492
    add-int v17, v17, v0

    .line 493
    .line 494
    aget v0, v26, v36

    .line 495
    .line 496
    add-int v18, v18, v0

    .line 497
    .line 498
    :goto_9
    if-ge v1, v7, :cond_a

    .line 499
    .line 500
    add-int/2addr v2, v6

    .line 501
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 502
    .line 503
    move/from16 v0, p1

    .line 504
    .line 505
    goto :goto_8

    .line 506
    :cond_b
    move/from16 v1, v23

    .line 507
    .line 508
    move/from16 v0, v24

    .line 509
    .line 510
    const/4 v2, 0x0

    .line 511
    move/from16 v23, p1

    .line 512
    .line 513
    :goto_a
    if-ge v2, v10, :cond_d

    .line 514
    .line 515
    const/high16 v25, -0x1000000

    .line 516
    .line 517
    aget v26, v4, v0

    .line 518
    .line 519
    and-int v25, v26, v25

    .line 520
    .line 521
    aget v26, v19, v1

    .line 522
    .line 523
    shl-int/lit8 v26, v26, 0x10

    .line 524
    .line 525
    or-int v25, v25, v26

    .line 526
    .line 527
    aget v26, v19, v3

    .line 528
    .line 529
    shl-int/lit8 v26, v26, 0x8

    .line 530
    .line 531
    or-int v25, v25, v26

    .line 532
    .line 533
    aget v26, v19, v5

    .line 534
    .line 535
    or-int v25, v25, v26

    .line 536
    .line 537
    aput v25, v4, v0

    .line 538
    .line 539
    sub-int/2addr v1, v15

    .line 540
    sub-int v3, v3, v17

    .line 541
    .line 542
    sub-int v5, v5, v18

    .line 543
    .line 544
    sub-int v25, v23, p1

    .line 545
    .line 546
    add-int v25, v25, v9

    .line 547
    .line 548
    rem-int v25, v25, v9

    .line 549
    .line 550
    aget-object v25, v8, v25

    .line 551
    .line 552
    const/16 v33, 0x0

    .line 553
    .line 554
    aget v26, v25, v33

    .line 555
    .line 556
    sub-int v15, v15, v26

    .line 557
    .line 558
    aget v26, v25, v16

    .line 559
    .line 560
    sub-int v17, v17, v26

    .line 561
    .line 562
    const/16 v36, 0x2

    .line 563
    .line 564
    aget v26, v25, v36

    .line 565
    .line 566
    sub-int v18, v18, v26

    .line 567
    .line 568
    move/from16 v26, v0

    .line 569
    .line 570
    if-nez v24, :cond_c

    .line 571
    .line 572
    add-int v0, v2, v14

    .line 573
    .line 574
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    mul-int/2addr v0, v6

    .line 579
    aput v0, v13, v2

    .line 580
    .line 581
    :cond_c
    aget v0, v13, v2

    .line 582
    .line 583
    add-int v0, v24, v0

    .line 584
    .line 585
    aget v27, v11, v0

    .line 586
    .line 587
    const/16 v33, 0x0

    .line 588
    .line 589
    aput v27, v25, v33

    .line 590
    .line 591
    aget v28, v12, v0

    .line 592
    .line 593
    aput v28, v25, v16

    .line 594
    .line 595
    aget v0, v31, v0

    .line 596
    .line 597
    const/16 v36, 0x2

    .line 598
    .line 599
    aput v0, v25, v36

    .line 600
    .line 601
    add-int v20, v20, v27

    .line 602
    .line 603
    add-int v21, v21, v28

    .line 604
    .line 605
    add-int v22, v22, v0

    .line 606
    .line 607
    add-int v1, v1, v20

    .line 608
    .line 609
    add-int v3, v3, v21

    .line 610
    .line 611
    add-int v5, v5, v22

    .line 612
    .line 613
    add-int/lit8 v23, v23, 0x1

    .line 614
    .line 615
    rem-int v23, v23, v9

    .line 616
    .line 617
    aget-object v0, v8, v23

    .line 618
    .line 619
    const/16 v33, 0x0

    .line 620
    .line 621
    aget v25, v0, v33

    .line 622
    .line 623
    add-int v15, v15, v25

    .line 624
    .line 625
    aget v27, v0, v16

    .line 626
    .line 627
    add-int v17, v17, v27

    .line 628
    .line 629
    const/16 v36, 0x2

    .line 630
    .line 631
    aget v0, v0, v36

    .line 632
    .line 633
    add-int v18, v18, v0

    .line 634
    .line 635
    sub-int v20, v20, v25

    .line 636
    .line 637
    sub-int v21, v21, v27

    .line 638
    .line 639
    sub-int v22, v22, v0

    .line 640
    .line 641
    add-int v0, v26, v6

    .line 642
    .line 643
    add-int/lit8 v2, v2, 0x1

    .line 644
    .line 645
    goto/16 :goto_a

    .line 646
    .line 647
    :cond_d
    const/16 v33, 0x0

    .line 648
    .line 649
    const/16 v36, 0x2

    .line 650
    .line 651
    add-int/lit8 v2, v24, 0x1

    .line 652
    .line 653
    move/from16 v0, p1

    .line 654
    .line 655
    goto/16 :goto_7

    .line 656
    .line 657
    :cond_e
    const/4 v7, 0x0

    .line 658
    const/4 v8, 0x0

    .line 659
    const/4 v5, 0x0

    .line 660
    move v9, v6

    .line 661
    move-object/from16 v3, v32

    .line 662
    .line 663
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 664
    .line 665
    .line 666
    return-object v3
.end method

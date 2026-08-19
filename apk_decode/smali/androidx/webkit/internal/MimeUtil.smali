.class Landroidx/webkit/internal/MimeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getMimeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-static {p0}, Landroidx/webkit/internal/MimeUtil;->guessHardcodedMime(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static guessHardcodedMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    const/4 v4, 0x1

    .line 13
    add-int/2addr v1, v4

    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sparse-switch v1, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    :goto_0
    move v0, v3

    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    const-string v0, "xhtml"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, 0x31

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :sswitch_1
    const-string v0, "shtml"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x30

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :sswitch_2
    const-string v0, "pjpeg"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/16 v0, 0x2f

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_3
    const-string v1, "mhtml"

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_32

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :sswitch_4
    const-string v0, "ehtml"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/16 v0, 0x2d

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :sswitch_5
    const-string v0, "xhtm"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-nez p0, :cond_5

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    const/16 v0, 0x2c

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :sswitch_6
    const-string v0, "woff"

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_6

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_6
    const/16 v0, 0x2b

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :sswitch_7
    const-string v0, "webp"

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_7

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    const/16 v0, 0x2a

    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :sswitch_8
    const-string v0, "webm"

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-nez p0, :cond_8

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    const/16 v0, 0x29

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :sswitch_9
    const-string v0, "wasm"

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-nez p0, :cond_9

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_9
    const/16 v0, 0x28

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :sswitch_a
    const-string v0, "tiff"

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_a

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_a
    const/16 v0, 0x27

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :sswitch_b
    const-string v0, "svgz"

    .line 176
    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-nez p0, :cond_b

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_b
    const/16 v0, 0x26

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_c
    const-string v0, "shtm"

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_c

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_c
    const/16 v0, 0x25

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :sswitch_d
    const-string v0, "opus"

    .line 204
    .line 205
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result p0

    .line 209
    if-nez p0, :cond_d

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_d
    const/16 v0, 0x24

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :sswitch_e
    const-string v0, "mpeg"

    .line 218
    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    if-nez p0, :cond_e

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_e
    const/16 v0, 0x23

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :sswitch_f
    const-string v0, "json"

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    if-nez p0, :cond_f

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_f
    const/16 v0, 0x22

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :sswitch_10
    const-string v0, "jpeg"

    .line 246
    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-nez p0, :cond_10

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_10
    const/16 v0, 0x21

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :sswitch_11
    const-string v0, "jfif"

    .line 260
    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    if-nez p0, :cond_11

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_11
    const/16 v0, 0x20

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :sswitch_12
    const-string v0, "html"

    .line 274
    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    if-nez p0, :cond_12

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_12
    const/16 v0, 0x1f

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :sswitch_13
    const-string v0, "flac"

    .line 288
    .line 289
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    if-nez p0, :cond_13

    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :cond_13
    const/16 v0, 0x1e

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :sswitch_14
    const-string v0, "apng"

    .line 302
    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result p0

    .line 307
    if-nez p0, :cond_14

    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :cond_14
    const/16 v0, 0x1d

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :sswitch_15
    const-string v0, "zip"

    .line 316
    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    if-nez p0, :cond_15

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_15
    const/16 v0, 0x1c

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :sswitch_16
    const-string v0, "xml"

    .line 330
    .line 331
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    if-nez p0, :cond_16

    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_16
    const/16 v0, 0x1b

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :sswitch_17
    const-string v0, "xht"

    .line 344
    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result p0

    .line 349
    if-nez p0, :cond_17

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_17
    const/16 v0, 0x1a

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :sswitch_18
    const-string v0, "wav"

    .line 358
    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    if-nez p0, :cond_18

    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_18
    const/16 v0, 0x19

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :sswitch_19
    const-string v0, "tif"

    .line 372
    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    if-nez p0, :cond_19

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_19
    const/16 v0, 0x18

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :sswitch_1a
    const-string v0, "tgz"

    .line 386
    .line 387
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    if-nez p0, :cond_1a

    .line 392
    .line 393
    goto/16 :goto_0

    .line 394
    .line 395
    :cond_1a
    const/16 v0, 0x17

    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :sswitch_1b
    const-string v0, "svg"

    .line 400
    .line 401
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    if-nez p0, :cond_1b

    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_1b
    const/16 v0, 0x16

    .line 410
    .line 411
    goto/16 :goto_1

    .line 412
    .line 413
    :sswitch_1c
    const-string v0, "png"

    .line 414
    .line 415
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p0

    .line 419
    if-nez p0, :cond_1c

    .line 420
    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_1c
    const/16 v0, 0x15

    .line 424
    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :sswitch_1d
    const-string v0, "pjp"

    .line 428
    .line 429
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result p0

    .line 433
    if-nez p0, :cond_1d

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_1d
    const/16 v0, 0x14

    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :sswitch_1e
    const-string v0, "pdf"

    .line 442
    .line 443
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    if-nez p0, :cond_1e

    .line 448
    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_1e
    const/16 v0, 0x13

    .line 452
    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :sswitch_1f
    const-string v0, "ogv"

    .line 456
    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result p0

    .line 461
    if-nez p0, :cond_1f

    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :cond_1f
    const/16 v0, 0x12

    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :sswitch_20
    const-string v0, "ogm"

    .line 470
    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result p0

    .line 475
    if-nez p0, :cond_20

    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :cond_20
    const/16 v0, 0x11

    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :sswitch_21
    const-string v0, "ogg"

    .line 484
    .line 485
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result p0

    .line 489
    if-nez p0, :cond_21

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_21
    const/16 v0, 0x10

    .line 494
    .line 495
    goto/16 :goto_1

    .line 496
    .line 497
    :sswitch_22
    const-string v0, "oga"

    .line 498
    .line 499
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result p0

    .line 503
    if-nez p0, :cond_22

    .line 504
    .line 505
    goto/16 :goto_0

    .line 506
    .line 507
    :cond_22
    const/16 v0, 0xf

    .line 508
    .line 509
    goto/16 :goto_1

    .line 510
    .line 511
    :sswitch_23
    const-string v0, "mpg"

    .line 512
    .line 513
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result p0

    .line 517
    if-nez p0, :cond_23

    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_23
    const/16 v0, 0xe

    .line 522
    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :sswitch_24
    const-string v0, "mp4"

    .line 526
    .line 527
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result p0

    .line 531
    if-nez p0, :cond_24

    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_24
    const/16 v0, 0xd

    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :sswitch_25
    const-string v0, "mp3"

    .line 540
    .line 541
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result p0

    .line 545
    if-nez p0, :cond_25

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :cond_25
    const/16 v0, 0xc

    .line 550
    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :sswitch_26
    const-string v0, "mjs"

    .line 554
    .line 555
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result p0

    .line 559
    if-nez p0, :cond_26

    .line 560
    .line 561
    goto/16 :goto_0

    .line 562
    .line 563
    :cond_26
    const/16 v0, 0xb

    .line 564
    .line 565
    goto/16 :goto_1

    .line 566
    .line 567
    :sswitch_27
    const-string v0, "mht"

    .line 568
    .line 569
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result p0

    .line 573
    if-nez p0, :cond_27

    .line 574
    .line 575
    goto/16 :goto_0

    .line 576
    .line 577
    :cond_27
    const/16 v0, 0xa

    .line 578
    .line 579
    goto/16 :goto_1

    .line 580
    .line 581
    :sswitch_28
    const-string v0, "m4v"

    .line 582
    .line 583
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result p0

    .line 587
    if-nez p0, :cond_28

    .line 588
    .line 589
    goto/16 :goto_0

    .line 590
    .line 591
    :cond_28
    const/16 v0, 0x9

    .line 592
    .line 593
    goto/16 :goto_1

    .line 594
    .line 595
    :sswitch_29
    const-string v0, "m4a"

    .line 596
    .line 597
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result p0

    .line 601
    if-nez p0, :cond_29

    .line 602
    .line 603
    goto/16 :goto_0

    .line 604
    .line 605
    :cond_29
    const/16 v0, 0x8

    .line 606
    .line 607
    goto/16 :goto_1

    .line 608
    .line 609
    :sswitch_2a
    const-string v0, "jpg"

    .line 610
    .line 611
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result p0

    .line 615
    if-nez p0, :cond_2a

    .line 616
    .line 617
    goto/16 :goto_0

    .line 618
    .line 619
    :cond_2a
    const/4 v0, 0x7

    .line 620
    goto :goto_1

    .line 621
    :sswitch_2b
    const-string v0, "ico"

    .line 622
    .line 623
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result p0

    .line 627
    if-nez p0, :cond_2b

    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :cond_2b
    const/4 v0, 0x6

    .line 632
    goto :goto_1

    .line 633
    :sswitch_2c
    const-string v0, "htm"

    .line 634
    .line 635
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result p0

    .line 639
    if-nez p0, :cond_2c

    .line 640
    .line 641
    goto/16 :goto_0

    .line 642
    .line 643
    :cond_2c
    const/4 v0, 0x5

    .line 644
    goto :goto_1

    .line 645
    :sswitch_2d
    const-string v0, "gif"

    .line 646
    .line 647
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result p0

    .line 651
    if-nez p0, :cond_2d

    .line 652
    .line 653
    goto/16 :goto_0

    .line 654
    .line 655
    :cond_2d
    const/4 v0, 0x4

    .line 656
    goto :goto_1

    .line 657
    :sswitch_2e
    const-string v0, "css"

    .line 658
    .line 659
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result p0

    .line 663
    if-nez p0, :cond_2e

    .line 664
    .line 665
    goto/16 :goto_0

    .line 666
    .line 667
    :cond_2e
    const/4 v0, 0x3

    .line 668
    goto :goto_1

    .line 669
    :sswitch_2f
    const-string v0, "bmp"

    .line 670
    .line 671
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result p0

    .line 675
    if-nez p0, :cond_2f

    .line 676
    .line 677
    goto/16 :goto_0

    .line 678
    .line 679
    :cond_2f
    const/4 v0, 0x2

    .line 680
    goto :goto_1

    .line 681
    :sswitch_30
    const-string v0, "js"

    .line 682
    .line 683
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result p0

    .line 687
    if-nez p0, :cond_30

    .line 688
    .line 689
    goto/16 :goto_0

    .line 690
    .line 691
    :cond_30
    move v0, v4

    .line 692
    goto :goto_1

    .line 693
    :sswitch_31
    const-string v0, "gz"

    .line 694
    .line 695
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result p0

    .line 699
    if-nez p0, :cond_31

    .line 700
    .line 701
    goto/16 :goto_0

    .line 702
    .line 703
    :cond_31
    const/4 v0, 0x0

    .line 704
    :cond_32
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 705
    .line 706
    .line 707
    return-object v2

    .line 708
    :pswitch_0
    const-string p0, "application/font-woff"

    .line 709
    .line 710
    return-object p0

    .line 711
    :pswitch_1
    const-string p0, "image/webp"

    .line 712
    .line 713
    return-object p0

    .line 714
    :pswitch_2
    const-string p0, "video/webm"

    .line 715
    .line 716
    return-object p0

    .line 717
    :pswitch_3
    const-string p0, "application/wasm"

    .line 718
    .line 719
    return-object p0

    .line 720
    :pswitch_4
    const-string p0, "application/json"

    .line 721
    .line 722
    return-object p0

    .line 723
    :pswitch_5
    const-string p0, "audio/flac"

    .line 724
    .line 725
    return-object p0

    .line 726
    :pswitch_6
    const-string p0, "image/apng"

    .line 727
    .line 728
    return-object p0

    .line 729
    :pswitch_7
    const-string p0, "application/zip"

    .line 730
    .line 731
    return-object p0

    .line 732
    :pswitch_8
    const-string p0, "text/xml"

    .line 733
    .line 734
    return-object p0

    .line 735
    :pswitch_9
    const-string p0, "application/xhtml+xml"

    .line 736
    .line 737
    return-object p0

    .line 738
    :pswitch_a
    const-string p0, "audio/wav"

    .line 739
    .line 740
    return-object p0

    .line 741
    :pswitch_b
    const-string p0, "image/tiff"

    .line 742
    .line 743
    return-object p0

    .line 744
    :pswitch_c
    const-string p0, "image/svg+xml"

    .line 745
    .line 746
    return-object p0

    .line 747
    :pswitch_d
    const-string p0, "image/png"

    .line 748
    .line 749
    return-object p0

    .line 750
    :pswitch_e
    const-string p0, "application/pdf"

    .line 751
    .line 752
    return-object p0

    .line 753
    :pswitch_f
    const-string p0, "video/ogg"

    .line 754
    .line 755
    return-object p0

    .line 756
    :pswitch_10
    const-string p0, "audio/ogg"

    .line 757
    .line 758
    return-object p0

    .line 759
    :pswitch_11
    const-string p0, "video/mpeg"

    .line 760
    .line 761
    return-object p0

    .line 762
    :pswitch_12
    const-string p0, "audio/mpeg"

    .line 763
    .line 764
    return-object p0

    .line 765
    :pswitch_13
    const-string p0, "multipart/related"

    .line 766
    .line 767
    return-object p0

    .line 768
    :pswitch_14
    const-string p0, "video/mp4"

    .line 769
    .line 770
    return-object p0

    .line 771
    :pswitch_15
    const-string p0, "audio/x-m4a"

    .line 772
    .line 773
    return-object p0

    .line 774
    :pswitch_16
    const-string p0, "image/jpeg"

    .line 775
    .line 776
    return-object p0

    .line 777
    :pswitch_17
    const-string p0, "image/x-icon"

    .line 778
    .line 779
    return-object p0

    .line 780
    :pswitch_18
    const-string p0, "text/html"

    .line 781
    .line 782
    return-object p0

    .line 783
    :pswitch_19
    const-string p0, "image/gif"

    .line 784
    .line 785
    return-object p0

    .line 786
    :pswitch_1a
    const-string p0, "text/css"

    .line 787
    .line 788
    return-object p0

    .line 789
    :pswitch_1b
    const-string p0, "image/bmp"

    .line 790
    .line 791
    return-object p0

    .line 792
    :pswitch_1c
    const-string p0, "text/javascript"

    .line 793
    .line 794
    return-object p0

    .line 795
    :pswitch_1d
    const-string p0, "application/gzip"

    .line 796
    .line 797
    return-object p0

    .line 798
    nop

    .line 799
    :sswitch_data_0
    .sparse-switch
        0xcf3 -> :sswitch_31
        0xd49 -> :sswitch_30
        0x17d85 -> :sswitch_2f
        0x18203 -> :sswitch_2e
        0x18fc4 -> :sswitch_2d
        0x194e1 -> :sswitch_2c
        0x19695 -> :sswitch_2b
        0x19be1 -> :sswitch_2a
        0x19fda -> :sswitch_29
        0x19fef -> :sswitch_28
        0x1a639 -> :sswitch_27
        0x1a676 -> :sswitch_26
        0x1a6f0 -> :sswitch_25
        0x1a6f1 -> :sswitch_24
        0x1a724 -> :sswitch_23
        0x1ad89 -> :sswitch_22
        0x1ad8f -> :sswitch_21
        0x1ad95 -> :sswitch_20
        0x1ad9e -> :sswitch_1f
        0x1b0f2 -> :sswitch_1e
        0x1b1b6 -> :sswitch_1d
        0x1b229 -> :sswitch_1c
        0x1be64 -> :sswitch_1b
        0x1c067 -> :sswitch_1a
        0x1c091 -> :sswitch_19
        0x1caec -> :sswitch_18
        0x1cf84 -> :sswitch_17
        0x1d017 -> :sswitch_16
        0x1d721 -> :sswitch_15
        0x2dca28 -> :sswitch_14
        0x2fff68 -> :sswitch_13
        0x3107ab -> :sswitch_12
        0x31bb59 -> :sswitch_11
        0x31e068 -> :sswitch_10
        0x31ece8 -> :sswitch_f
        0x333d85 -> :sswitch_e
        0x34283f -> :sswitch_d
        0x35db8e -> :sswitch_c
        0x360e96 -> :sswitch_b
        0x3651f5 -> :sswitch_a
        0x3792a4 -> :sswitch_9
        0x379f99 -> :sswitch_8
        0x379f9c -> :sswitch_7
        0x37c598 -> :sswitch_6
        0x382169 -> :sswitch_5
        0x5c04d90 -> :sswitch_4
        0x6310998 -> :sswitch_3
        0x65c28d8 -> :sswitch_2
        0x685969e -> :sswitch_1
        0x6cc0c23 -> :sswitch_0
    .end sparse-switch

    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1c
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_16
        :pswitch_d
        :pswitch_c
        :pswitch_1d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_4
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_18
        :pswitch_13
        :pswitch_16
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method

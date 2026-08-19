.class public abstract Lorg/eclipse/jetty/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LR1/c;

.field public static b:I

.field public static c:I

.field public static final d:Ljava/util/HashMap;

.field public static final e:Ljava/util/HashMap;

.field public static final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 1
    const-string v0, "valueOf"

    .line 2
    .line 3
    const-class v1, Lorg/eclipse/jetty/util/n;

    .line 4
    .line 5
    invoke-static {v1}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lorg/eclipse/jetty/util/n;->a:LR1/c;

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    sput v1, Lorg/eclipse/jetty/util/n;->b:I

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    sput v1, Lorg/eclipse/jetty/util/n;->c:I

    .line 18
    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lorg/eclipse/jetty/util/n;->d:Ljava/util/HashMap;

    .line 25
    .line 26
    const-string v2, "boolean"

    .line 27
    .line 28
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v4, "byte"

    .line 34
    .line 35
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v6, "char"

    .line 41
    .line 42
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    const-string v8, "double"

    .line 48
    .line 49
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v10, "float"

    .line 55
    .line 56
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    const-string v12, "int"

    .line 62
    .line 63
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const-string v14, "long"

    .line 69
    .line 70
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    invoke-virtual {v1, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-object/from16 v16, v0

    .line 76
    .line 77
    const-string v0, "short"

    .line 78
    .line 79
    move-object/from16 v17, v14

    .line 80
    .line 81
    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 82
    .line 83
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-object/from16 v18, v0

    .line 87
    .line 88
    const-string v0, "void"

    .line 89
    .line 90
    move-object/from16 v19, v12

    .line 91
    .line 92
    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 93
    .line 94
    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-object/from16 v20, v0

    .line 98
    .line 99
    const-string v0, "java.lang.Boolean.TYPE"

    .line 100
    .line 101
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    const-string v0, "java.lang.Byte.TYPE"

    .line 105
    .line 106
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string v0, "java.lang.Character.TYPE"

    .line 110
    .line 111
    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-string v0, "java.lang.Double.TYPE"

    .line 115
    .line 116
    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    const-string v0, "java.lang.Float.TYPE"

    .line 120
    .line 121
    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    const-string v0, "java.lang.Integer.TYPE"

    .line 125
    .line 126
    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-string v0, "java.lang.Long.TYPE"

    .line 130
    .line 131
    invoke-virtual {v1, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v0, "java.lang.Short.TYPE"

    .line 135
    .line 136
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const-string v0, "java.lang.Void.TYPE"

    .line 140
    .line 141
    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const-string v0, "java.lang.Boolean"

    .line 145
    .line 146
    move-object/from16 v21, v14

    .line 147
    .line 148
    const-class v14, Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-object/from16 v22, v0

    .line 154
    .line 155
    const-string v0, "java.lang.Byte"

    .line 156
    .line 157
    move-object/from16 v23, v15

    .line 158
    .line 159
    const-class v15, Ljava/lang/Byte;

    .line 160
    .line 161
    invoke-virtual {v1, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-object/from16 v24, v0

    .line 165
    .line 166
    const-string v0, "java.lang.Character"

    .line 167
    .line 168
    move-object/from16 v25, v13

    .line 169
    .line 170
    const-class v13, Ljava/lang/Character;

    .line 171
    .line 172
    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-object/from16 v26, v0

    .line 176
    .line 177
    const-string v0, "java.lang.Double"

    .line 178
    .line 179
    move-object/from16 v27, v10

    .line 180
    .line 181
    const-class v10, Ljava/lang/Double;

    .line 182
    .line 183
    invoke-virtual {v1, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-object/from16 v28, v0

    .line 187
    .line 188
    const-string v0, "java.lang.Float"

    .line 189
    .line 190
    move-object/from16 v29, v11

    .line 191
    .line 192
    const-class v11, Ljava/lang/Float;

    .line 193
    .line 194
    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-object/from16 v30, v0

    .line 198
    .line 199
    const-string v0, "java.lang.Integer"

    .line 200
    .line 201
    move-object/from16 v31, v8

    .line 202
    .line 203
    const-class v8, Ljava/lang/Integer;

    .line 204
    .line 205
    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-object/from16 v32, v0

    .line 209
    .line 210
    const-string v0, "java.lang.Long"

    .line 211
    .line 212
    move-object/from16 v33, v9

    .line 213
    .line 214
    const-class v9, Ljava/lang/Long;

    .line 215
    .line 216
    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-object/from16 v34, v0

    .line 220
    .line 221
    const-string v0, "java.lang.Short"

    .line 222
    .line 223
    move-object/from16 v35, v6

    .line 224
    .line 225
    const-class v6, Ljava/lang/Short;

    .line 226
    .line 227
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-object/from16 v36, v0

    .line 231
    .line 232
    const-string v0, "Boolean"

    .line 233
    .line 234
    invoke-virtual {v1, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    const-string v0, "Byte"

    .line 238
    .line 239
    invoke-virtual {v1, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    const-string v0, "Character"

    .line 243
    .line 244
    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    const-string v0, "Double"

    .line 248
    .line 249
    invoke-virtual {v1, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    const-string v0, "Float"

    .line 253
    .line 254
    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    const-string v0, "Integer"

    .line 258
    .line 259
    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    const-string v0, "Long"

    .line 263
    .line 264
    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    const-string v0, "Short"

    .line 268
    .line 269
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    const/4 v0, 0x0

    .line 273
    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    const-string v0, "string"

    .line 277
    .line 278
    move-object/from16 v37, v6

    .line 279
    .line 280
    const-class v6, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    const-string v0, "String"

    .line 286
    .line 287
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    const-string v0, "java.lang.String"

    .line 291
    .line 292
    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    new-instance v1, Ljava/util/HashMap;

    .line 296
    .line 297
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 298
    .line 299
    .line 300
    sput-object v1, Lorg/eclipse/jetty/util/n;->e:Ljava/util/HashMap;

    .line 301
    .line 302
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-object/from16 v2, v35

    .line 309
    .line 310
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-object/from16 v2, v31

    .line 314
    .line 315
    move-object/from16 v4, v33

    .line 316
    .line 317
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-object/from16 v2, v27

    .line 321
    .line 322
    move-object/from16 v7, v29

    .line 323
    .line 324
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-object/from16 v2, v19

    .line 328
    .line 329
    move-object/from16 v7, v25

    .line 330
    .line 331
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-object/from16 v2, v17

    .line 335
    .line 336
    move-object/from16 v7, v23

    .line 337
    .line 338
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-object/from16 v2, v18

    .line 342
    .line 343
    move-object/from16 v7, v21

    .line 344
    .line 345
    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-object/from16 v2, v20

    .line 349
    .line 350
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-object/from16 v12, v22

    .line 354
    .line 355
    invoke-virtual {v1, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-object/from16 v12, v24

    .line 359
    .line 360
    invoke-virtual {v1, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-object/from16 v12, v26

    .line 364
    .line 365
    invoke-virtual {v1, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-object/from16 v12, v28

    .line 369
    .line 370
    invoke-virtual {v1, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-object/from16 v12, v30

    .line 374
    .line 375
    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-object/from16 v12, v32

    .line 379
    .line 380
    invoke-virtual {v1, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-object/from16 v12, v34

    .line 384
    .line 385
    invoke-virtual {v1, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-object/from16 v12, v36

    .line 389
    .line 390
    move-object/from16 v13, v37

    .line 391
    .line 392
    invoke-virtual {v1, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    const/4 v12, 0x0

    .line 396
    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    new-instance v0, Ljava/util/HashMap;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    .line 406
    .line 407
    sput-object v0, Lorg/eclipse/jetty/util/n;->f:Ljava/util/HashMap;

    .line 408
    .line 409
    :try_start_0
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    move-object/from16 v2, v16

    .line 414
    .line 415
    invoke-virtual {v14, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v15, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v10, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v11, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    move-object/from16 v4, v29

    .line 441
    .line 442
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v8, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 446
    .line 447
    .line 448
    move-result-object v3

    .line 449
    move-object/from16 v4, v25

    .line 450
    .line 451
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v9, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    move-object/from16 v4, v23

    .line 459
    .line 460
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v13, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v14, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v15, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v0, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v10, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual {v0, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v11, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v8, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v9, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-virtual {v0, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v13, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    new-instance v1, Ljava/lang/Error;

    .line 522
    .line 523
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 524
    .line 525
    .line 526
    throw v1
.end method

.method public static a([Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static b(B)B
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x1f

    .line 2
    .line 3
    shr-int/lit8 v1, p0, 0x6

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x19

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    add-int/lit8 v0, v0, -0x10

    .line 9
    .line 10
    int-to-byte v0, v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0xf

    .line 14
    .line 15
    if-gt v0, v1, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "!hex "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public static c(I)I
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x1f

    .line 2
    .line 3
    shr-int/lit8 v1, p0, 0x6

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x19

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    add-int/lit8 v0, v0, -0x10

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "!hex "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public static call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-eqz v0, :cond_5

    .line 8
    .line 9
    array-length v3, v0

    .line 10
    if-ge v2, v3, :cond_5

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_4

    .line 25
    :cond_0
    aget-object v3, v0, v2

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    array-length v3, v3

    .line 32
    array-length v4, p3

    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    aget-object v3, v0, v2

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v1

    .line 51
    :goto_1
    if-eq v3, v4, :cond_3

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_3
    if-nez p2, :cond_4

    .line 55
    .line 56
    aget-object v3, v0, v2

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eq v3, p0, :cond_4

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    :try_start_0
    aget-object v3, v0, v2

    .line 66
    .line 67
    invoke-virtual {v3, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object p0

    .line 72
    :catch_0
    move-exception v3

    .line 73
    goto :goto_2

    .line 74
    :catch_1
    move-exception v3

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    sget-object v4, Lorg/eclipse/jetty/util/n;->a:LR1/c;

    .line 77
    .line 78
    invoke-interface {v4, v3}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :goto_3
    sget-object v4, Lorg/eclipse/jetty/util/n;->a:LR1/c;

    .line 83
    .line 84
    invoke-interface {v4, v3}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 91
    .line 92
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public static d(Ljava/lang/String;I)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    div-int/2addr v0, v1

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_0

    .line 15
    .line 16
    div-int/lit8 v3, v2, 0x2

    .line 17
    .line 18
    invoke-static {p0, v2, v1, p1}, Lorg/eclipse/jetty/util/n;->e(Ljava/lang/String;III)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    int-to-byte v4, v4

    .line 23
    aput-byte v4, v0, v3

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-object v0
.end method

.method public static e(Ljava/lang/String;III)I
    .locals 3

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    sub-int/2addr p2, p1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-ge v0, p2, :cond_2

    .line 11
    .line 12
    add-int v2, p1, v0

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Lorg/eclipse/jetty/util/n;->c(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ltz v2, :cond_1

    .line 23
    .line 24
    if-ge v2, p3, :cond_1

    .line 25
    .line 26
    mul-int/2addr v1, p3

    .line 27
    add-int/2addr v1, v2

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p3, Ljava/lang/NumberFormatException;

    .line 32
    .line 33
    add-int/2addr p2, p1

    .line 34
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {p3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p3

    .line 42
    :cond_2
    return v1
.end method

.method public static f([BIII)I
    .locals 5

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    array-length p2, p0

    .line 4
    sub-int/2addr p2, p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    if-ge v0, p2, :cond_5

    .line 8
    .line 9
    add-int v2, p1, v0

    .line 10
    .line 11
    aget-byte v2, p0, v2

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    int-to-char v2, v2

    .line 16
    add-int/lit8 v3, v2, -0x30

    .line 17
    .line 18
    const/16 v4, 0xa

    .line 19
    .line 20
    if-ltz v3, :cond_1

    .line 21
    .line 22
    if-ge v3, p3, :cond_1

    .line 23
    .line 24
    if-lt v3, v4, :cond_3

    .line 25
    .line 26
    :cond_1
    add-int/lit8 v3, v2, -0x37

    .line 27
    .line 28
    if-lt v3, v4, :cond_2

    .line 29
    .line 30
    if-lt v3, p3, :cond_3

    .line 31
    .line 32
    :cond_2
    add-int/lit8 v3, v2, -0x57

    .line 33
    .line 34
    :cond_3
    if-ltz v3, :cond_4

    .line 35
    .line 36
    if-ge v3, p3, :cond_4

    .line 37
    .line 38
    mul-int/2addr v1, p3

    .line 39
    add-int/2addr v1, v3

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    new-instance p3, Ljava/lang/NumberFormatException;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p3

    .line 54
    :cond_5
    return v1
.end method

.method public static g(BLjava/lang/Appendable;)V
    .locals 5

    .line 1
    and-int/lit16 v0, p0, 0xf0

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0xf

    .line 6
    .line 7
    const/16 v1, 0x30

    .line 8
    .line 9
    const/16 v2, 0x37

    .line 10
    .line 11
    const/16 v3, 0x9

    .line 12
    .line 13
    if-le v0, v3, :cond_0

    .line 14
    .line 15
    move v4, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v1

    .line 18
    :goto_0
    add-int/2addr v4, v0

    .line 19
    int-to-char v0, v4

    .line 20
    :try_start_0
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 21
    .line 22
    .line 23
    and-int/lit8 p0, p0, 0xf

    .line 24
    .line 25
    if-le p0, v3, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    :cond_1
    add-int/2addr v1, p0

    .line 29
    int-to-char p0, v1

    .line 30
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public static h(B)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-byte p0, v1, v2

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Lorg/eclipse/jetty/util/n;->i([BII)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static i([BII)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    move v1, p1

    .line 7
    :goto_0
    add-int v2, p1, p2

    .line 8
    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    aget-byte v2, p0, v1

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    div-int/lit8 v3, v2, 0x10

    .line 16
    .line 17
    rem-int/lit8 v3, v3, 0x10

    .line 18
    .line 19
    add-int/lit8 v4, v3, 0x30

    .line 20
    .line 21
    const/16 v5, 0x39

    .line 22
    .line 23
    if-le v4, v5, :cond_0

    .line 24
    .line 25
    add-int/lit8 v4, v3, 0x37

    .line 26
    .line 27
    :cond_0
    int-to-char v3, v4

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    rem-int/lit8 v2, v2, 0x10

    .line 32
    .line 33
    add-int/lit8 v3, v2, 0x30

    .line 34
    .line 35
    if-le v3, v5, :cond_1

    .line 36
    .line 37
    add-int/lit8 v3, v2, 0x57

    .line 38
    .line 39
    :cond_1
    int-to-char v2, v3

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static j([BI)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9
    .line 10
    aget-byte v3, p0, v2

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    div-int v4, v3, p1

    .line 15
    .line 16
    rem-int/2addr v4, p1

    .line 17
    add-int/lit8 v5, v4, 0x30

    .line 18
    .line 19
    const/16 v6, 0x39

    .line 20
    .line 21
    if-le v5, v6, :cond_0

    .line 22
    .line 23
    add-int/lit8 v5, v4, 0x57

    .line 24
    .line 25
    :cond_0
    int-to-char v4, v5

    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    rem-int/2addr v3, p1

    .line 30
    add-int/lit8 v4, v3, 0x30

    .line 31
    .line 32
    if-le v4, v6, :cond_1

    .line 33
    .line 34
    add-int/lit8 v4, v3, 0x57

    .line 35
    .line 36
    :cond_1
    int-to-char v3, v4

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

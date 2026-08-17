.class public final Lcom/kwad/components/ad/nativead/e/a;
.super Lcom/kwad/sdk/widget/KSFrameLayout;
.source "SourceFile"


# instance fields
.field private qU:Landroid/animation/Animator;

.field private qV:Z

.field private qW:Landroid/widget/ImageView;

.field private qX:Landroid/widget/ImageView;

.field private qY:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/kwad/components/ad/nativead/e/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/widget/KSFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-boolean p3, p0, Lcom/kwad/components/ad/nativead/e/a;->qV:Z

    .line 4
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/nativead/e/a;->O(Landroid/content/Context;)V

    return-void
.end method

.method private O(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/kwad/sdk/R$layout;->ksad_native_rotate_layout:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v0, p0, v1}, Lcom/kwad/sdk/wrapper/m;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget v0, Lcom/kwad/sdk/R$id;->rotate_line:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qY:Landroid/widget/ImageView;

    .line 17
    .line 18
    sget v0, Lcom/kwad/sdk/R$id;->rotate_phone:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qW:Landroid/widget/ImageView;

    .line 27
    .line 28
    sget v0, Lcom/kwad/sdk/R$id;->rotate_alpha_phone:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/ImageView;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/e/a;->qX:Landroid/widget/ImageView;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/ad/nativead/e/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/ad/nativead/e/a;->qV:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/kwad/components/ad/nativead/e/a;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/ad/nativead/e/a;->qU:Landroid/animation/Animator;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/ad/nativead/e/a;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e/a;->getAlphaView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/ad/nativead/e/a;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e/a;->getInteractionView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private fZ()Landroid/animation/Animator;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/components/ad/nativead/e/a;->getInteractionView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0}, Lcom/kwad/components/ad/nativead/e/a;->getAlphaView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 28
    .line 29
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 33
    .line 34
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 38
    .line 39
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotX(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v7}, Landroid/view/View;->setPivotY(F)V

    .line 47
    .line 48
    .line 49
    const/4 v7, 0x2

    .line 50
    new-array v8, v7, [F

    .line 51
    .line 52
    fill-array-data v8, :array_0

    .line 53
    .line 54
    .line 55
    const-string v9, "rotationY"

    .line 56
    .line 57
    invoke-static {v1, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    const-wide/16 v10, 0x12c

    .line 62
    .line 63
    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    new-array v12, v7, [F

    .line 68
    .line 69
    fill-array-data v12, :array_1

    .line 70
    .line 71
    .line 72
    const-string v13, "alpha"

    .line 73
    .line 74
    invoke-static {v2, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    const-wide/16 v14, 0xa

    .line 79
    .line 80
    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    const-wide/16 v14, 0x258

    .line 85
    .line 86
    invoke-virtual {v12, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 87
    .line 88
    .line 89
    new-array v12, v7, [F

    .line 90
    .line 91
    fill-array-data v12, :array_2

    .line 92
    .line 93
    .line 94
    const-string v14, "scaleX"

    .line 95
    .line 96
    invoke-static {v2, v14, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    invoke-virtual {v12, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    new-array v15, v7, [F

    .line 105
    .line 106
    fill-array-data v15, :array_3

    .line 107
    .line 108
    .line 109
    const-string v7, "scaleY"

    .line 110
    .line 111
    invoke-static {v2, v7, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 112
    .line 113
    .line 114
    move-result-object v15

    .line 115
    invoke-virtual {v15, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    const/4 v10, 0x2

    .line 120
    new-array v11, v10, [F

    .line 121
    .line 122
    fill-array-data v11, :array_4

    .line 123
    .line 124
    .line 125
    invoke-static {v1, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    move-object/from16 v18, v5

    .line 130
    .line 131
    move-object/from16 v19, v6

    .line 132
    .line 133
    const-wide/16 v5, 0x12c

    .line 134
    .line 135
    invoke-virtual {v11, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    new-array v5, v10, [F

    .line 140
    .line 141
    fill-array-data v5, :array_5

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v14, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    move-object/from16 v17, v11

    .line 149
    .line 150
    move-object v6, v12

    .line 151
    const-wide/16 v11, 0x12c

    .line 152
    .line 153
    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    new-array v11, v10, [F

    .line 158
    .line 159
    fill-array-data v11, :array_6

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    move-object/from16 v20, v5

    .line 167
    .line 168
    move-object v12, v6

    .line 169
    const-wide/16 v5, 0x12c

    .line 170
    .line 171
    invoke-virtual {v11, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    new-array v5, v10, [F

    .line 176
    .line 177
    fill-array-data v5, :array_7

    .line 178
    .line 179
    .line 180
    invoke-static {v2, v13, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    move-object/from16 v21, v11

    .line 185
    .line 186
    const-wide/16 v10, 0xa

    .line 187
    .line 188
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    const-wide/16 v10, 0x118

    .line 193
    .line 194
    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 195
    .line 196
    .line 197
    const/4 v6, 0x2

    .line 198
    new-array v5, v6, [F

    .line 199
    .line 200
    fill-array-data v5, :array_8

    .line 201
    .line 202
    .line 203
    invoke-static {v1, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    const-wide/16 v10, 0x12c

    .line 208
    .line 209
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    new-array v10, v6, [F

    .line 214
    .line 215
    fill-array-data v10, :array_9

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v14, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    move-object v11, v7

    .line 223
    const-wide/16 v6, 0x12c

    .line 224
    .line 225
    invoke-virtual {v10, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    invoke-virtual {v10, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 230
    .line 231
    .line 232
    const/4 v6, 0x2

    .line 233
    new-array v7, v6, [F

    .line 234
    .line 235
    fill-array-data v7, :array_a

    .line 236
    .line 237
    .line 238
    invoke-static {v1, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    move-object/from16 v22, v8

    .line 243
    .line 244
    const-wide/16 v8, 0x12c

    .line 245
    .line 246
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    new-array v8, v6, [F

    .line 251
    .line 252
    fill-array-data v8, :array_b

    .line 253
    .line 254
    .line 255
    invoke-static {v2, v14, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    move-object/from16 v23, v10

    .line 260
    .line 261
    const-wide/16 v9, 0x12c

    .line 262
    .line 263
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    new-array v9, v6, [F

    .line 268
    .line 269
    fill-array-data v9, :array_c

    .line 270
    .line 271
    .line 272
    const-string v10, "rotation"

    .line 273
    .line 274
    invoke-static {v1, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    move-object/from16 v24, v11

    .line 279
    .line 280
    const-wide/16 v10, 0x12c

    .line 281
    .line 282
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    .line 284
    .line 285
    move-result-object v9

    .line 286
    new-array v10, v6, [F

    .line 287
    .line 288
    fill-array-data v10, :array_d

    .line 289
    .line 290
    .line 291
    invoke-static {v2, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    move-object/from16 v25, v7

    .line 296
    .line 297
    const-wide/16 v6, 0xa

    .line 298
    .line 299
    invoke-virtual {v10, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    const-wide/16 v6, 0x258

    .line 304
    .line 305
    invoke-virtual {v10, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 306
    .line 307
    .line 308
    const/4 v6, 0x2

    .line 309
    new-array v7, v6, [F

    .line 310
    .line 311
    fill-array-data v7, :array_e

    .line 312
    .line 313
    .line 314
    const-string v11, "rotationX"

    .line 315
    .line 316
    invoke-static {v1, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    move-object/from16 v26, v8

    .line 321
    .line 322
    move-object/from16 v27, v9

    .line 323
    .line 324
    const-wide/16 v8, 0x12c

    .line 325
    .line 326
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    new-array v8, v6, [F

    .line 331
    .line 332
    fill-array-data v8, :array_f

    .line 333
    .line 334
    .line 335
    invoke-static {v2, v14, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 336
    .line 337
    .line 338
    move-result-object v8

    .line 339
    move-object/from16 v28, v7

    .line 340
    .line 341
    const-wide/16 v6, 0x12c

    .line 342
    .line 343
    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v8, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 348
    .line 349
    .line 350
    const/4 v9, 0x2

    .line 351
    new-array v6, v9, [F

    .line 352
    .line 353
    fill-array-data v6, :array_10

    .line 354
    .line 355
    .line 356
    move-object/from16 v7, v24

    .line 357
    .line 358
    invoke-static {v2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    move-object/from16 v24, v10

    .line 363
    .line 364
    const-wide/16 v9, 0x12c

    .line 365
    .line 366
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 371
    .line 372
    .line 373
    const/4 v9, 0x2

    .line 374
    new-array v10, v9, [F

    .line 375
    .line 376
    fill-array-data v10, :array_11

    .line 377
    .line 378
    .line 379
    invoke-static {v2, v13, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 380
    .line 381
    .line 382
    move-result-object v10

    .line 383
    move-object/from16 v29, v5

    .line 384
    .line 385
    move-object/from16 v30, v6

    .line 386
    .line 387
    const-wide/16 v5, 0xa

    .line 388
    .line 389
    invoke-virtual {v10, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 390
    .line 391
    .line 392
    move-object v6, v3

    .line 393
    move-object v10, v4

    .line 394
    move-object/from16 v5, v24

    .line 395
    .line 396
    const-wide/16 v3, 0x118

    .line 397
    .line 398
    invoke-virtual {v5, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 399
    .line 400
    .line 401
    new-array v3, v9, [F

    .line 402
    .line 403
    fill-array-data v3, :array_12

    .line 404
    .line 405
    .line 406
    invoke-static {v1, v11, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    const-wide/16 v4, 0x12c

    .line 411
    .line 412
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    new-array v4, v9, [F

    .line 417
    .line 418
    fill-array-data v4, :array_13

    .line 419
    .line 420
    .line 421
    invoke-static {v2, v14, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    move-object v14, v6

    .line 426
    const-wide/16 v5, 0x12c

    .line 427
    .line 428
    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    new-array v5, v9, [F

    .line 433
    .line 434
    fill-array-data v5, :array_14

    .line 435
    .line 436
    .line 437
    invoke-static {v2, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    const-wide/16 v6, 0x12c

    .line 442
    .line 443
    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    new-array v6, v9, [F

    .line 448
    .line 449
    fill-array-data v6, :array_15

    .line 450
    .line 451
    .line 452
    invoke-static {v1, v11, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    const-wide/16 v6, 0x12c

    .line 457
    .line 458
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    new-array v6, v9, [F

    .line 463
    .line 464
    fill-array-data v6, :array_16

    .line 465
    .line 466
    .line 467
    invoke-static {v2, v13, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 468
    .line 469
    .line 470
    move-result-object v6

    .line 471
    move-object v7, v10

    .line 472
    const-wide/16 v9, 0xa

    .line 473
    .line 474
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    move-object/from16 v16, v12

    .line 479
    .line 480
    const-wide/16 v11, 0x258

    .line 481
    .line 482
    invoke-virtual {v6, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 483
    .line 484
    .line 485
    const/4 v6, 0x2

    .line 486
    new-array v11, v6, [F

    .line 487
    .line 488
    fill-array-data v11, :array_17

    .line 489
    .line 490
    .line 491
    invoke-static {v2, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    invoke-virtual {v11, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 496
    .line 497
    .line 498
    const/16 v9, 0x9

    .line 499
    .line 500
    new-array v9, v9, [Landroid/animation/Animator;

    .line 501
    .line 502
    const/4 v10, 0x0

    .line 503
    aput-object v22, v9, v10

    .line 504
    .line 505
    const/4 v11, 0x1

    .line 506
    aput-object v17, v9, v11

    .line 507
    .line 508
    aput-object v21, v9, v6

    .line 509
    .line 510
    const/4 v6, 0x3

    .line 511
    aput-object v29, v9, v6

    .line 512
    .line 513
    const/4 v12, 0x4

    .line 514
    aput-object v25, v9, v12

    .line 515
    .line 516
    const/4 v12, 0x5

    .line 517
    aput-object v27, v9, v12

    .line 518
    .line 519
    const/4 v12, 0x6

    .line 520
    aput-object v28, v9, v12

    .line 521
    .line 522
    const/4 v12, 0x7

    .line 523
    aput-object v3, v9, v12

    .line 524
    .line 525
    const/16 v3, 0x8

    .line 526
    .line 527
    aput-object v1, v9, v3

    .line 528
    .line 529
    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 530
    .line 531
    .line 532
    const/4 v9, 0x2

    .line 533
    new-array v1, v9, [Landroid/animation/Animator;

    .line 534
    .line 535
    aput-object v16, v1, v10

    .line 536
    .line 537
    aput-object v20, v1, v11

    .line 538
    .line 539
    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 540
    .line 541
    .line 542
    new-array v1, v11, [Landroid/animation/Animator;

    .line 543
    .line 544
    aput-object v15, v1, v10

    .line 545
    .line 546
    move-object/from16 v3, v18

    .line 547
    .line 548
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 549
    .line 550
    .line 551
    new-array v1, v6, [Landroid/animation/Animator;

    .line 552
    .line 553
    aput-object v14, v1, v10

    .line 554
    .line 555
    aput-object v7, v1, v11

    .line 556
    .line 557
    aput-object v3, v1, v9

    .line 558
    .line 559
    move-object/from16 v3, v19

    .line 560
    .line 561
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 562
    .line 563
    .line 564
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 565
    .line 566
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 567
    .line 568
    .line 569
    new-array v6, v9, [Landroid/animation/Animator;

    .line 570
    .line 571
    aput-object v23, v6, v10

    .line 572
    .line 573
    aput-object v26, v6, v11

    .line 574
    .line 575
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 576
    .line 577
    .line 578
    new-instance v6, Lcom/kwad/components/ad/nativead/e/a$2;

    .line 579
    .line 580
    invoke-direct {v6, v0, v2, v1}, Lcom/kwad/components/ad/nativead/e/a$2;-><init>(Lcom/kwad/components/ad/nativead/e/a;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v1, v20

    .line 584
    .line 585
    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    .line 587
    .line 588
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 589
    .line 590
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 591
    .line 592
    .line 593
    new-array v6, v9, [Landroid/animation/Animator;

    .line 594
    .line 595
    aput-object v30, v6, v10

    .line 596
    .line 597
    aput-object v5, v6, v11

    .line 598
    .line 599
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 600
    .line 601
    .line 602
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 603
    .line 604
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 605
    .line 606
    .line 607
    new-array v6, v9, [Landroid/animation/Animator;

    .line 608
    .line 609
    aput-object v8, v6, v10

    .line 610
    .line 611
    aput-object v4, v6, v11

    .line 612
    .line 613
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 614
    .line 615
    .line 616
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 617
    .line 618
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 619
    .line 620
    .line 621
    new-array v6, v9, [Landroid/animation/Animator;

    .line 622
    .line 623
    aput-object v1, v6, v10

    .line 624
    .line 625
    aput-object v5, v6, v11

    .line 626
    .line 627
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 628
    .line 629
    .line 630
    new-instance v1, Lcom/kwad/components/ad/nativead/e/a$3;

    .line 631
    .line 632
    invoke-direct {v1, v0, v2, v4}, Lcom/kwad/components/ad/nativead/e/a$3;-><init>(Lcom/kwad/components/ad/nativead/e/a;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    .line 633
    .line 634
    .line 635
    move-object/from16 v2, v26

    .line 636
    .line 637
    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 638
    .line 639
    .line 640
    return-object v3

    .line 641
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 642
    return-object v1

    .line 643
    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    :array_2
    .array-data 4
        0x0
        0x3f666666    # 0.9f
    .end array-data

    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    :array_4
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    :array_5
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    :array_6
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    :array_8
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
    .end array-data

    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    :array_9
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x3f666666    # 0.9f
    .end array-data

    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    :array_a
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data

    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    :array_b
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    :array_c
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :array_e
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    :array_f
    .array-data 4
        -0x40800000    # -1.0f
        -0x408ccccd    # -0.95f
    .end array-data

    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    :array_10
    .array-data 4
        0x3ca3d70a    # 0.02f
        0x3f5eb852    # 0.87f
    .end array-data

    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    :array_11
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    :array_12
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    :array_13
    .array-data 4
        -0x408ccccd    # -0.95f
        -0x40800000    # -1.0f
    .end array-data

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    :array_14
    .array-data 4
        0x3f5eb852    # 0.87f
        0x3ca3d70a    # 0.02f
    .end array-data

    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    :array_15
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    :array_16
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    :array_17
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getAlphaView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qX:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method private getInteractionView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qW:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final ae()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/widget/KSFrameLayout;->ae()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final fY()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qU:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qU:Landroid/animation/Animator;

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/kwad/components/ad/nativead/e/a;->fZ()Landroid/animation/Animator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qU:Landroid/animation/Animator;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/kwad/components/ad/nativead/e/a$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/nativead/e/a$1;-><init>(Lcom/kwad/components/ad/nativead/e/a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/e/a;->qU:Landroid/animation/Animator;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final getAnimationDelayTime()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    sub-int/2addr p4, p2

    .line 9
    const/4 p2, 0x2

    .line 10
    div-int/2addr p4, p2

    .line 11
    sub-int/2addr p5, p3

    .line 12
    div-int/2addr p5, p2

    .line 13
    const/4 p3, 0x0

    .line 14
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 19
    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p2, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    div-int/lit8 p3, p3, 0x64

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 57
    .line 58
    .line 59
    mul-int/lit8 v2, p3, 0x28

    .line 60
    .line 61
    sub-int v3, p4, v2

    .line 62
    .line 63
    mul-int/lit8 v4, p3, 0x1e

    .line 64
    .line 65
    sub-int v4, p5, v4

    .line 66
    .line 67
    add-int/2addr v2, p4

    .line 68
    mul-int/lit8 v5, p3, 0xa

    .line 69
    .line 70
    sub-int v5, p5, v5

    .line 71
    .line 72
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    .line 86
    .line 87
    mul-int/lit8 v1, p3, 0xe

    .line 88
    .line 89
    sub-int v2, p4, v1

    .line 90
    .line 91
    sub-int v3, p5, v1

    .line 92
    .line 93
    add-int/2addr v1, p4

    .line 94
    mul-int/lit8 v4, p3, 0x1e

    .line 95
    .line 96
    add-int/2addr v4, p5

    .line 97
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 98
    .line 99
    .line 100
    :cond_2
    const/4 p2, 0x3

    .line 101
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    if-eqz p2, :cond_3

    .line 106
    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 111
    .line 112
    .line 113
    mul-int/lit8 v0, p3, 0xe

    .line 114
    .line 115
    sub-int v1, p4, v0

    .line 116
    .line 117
    sub-int v2, p5, v0

    .line 118
    .line 119
    add-int/2addr p4, v0

    .line 120
    mul-int/lit8 p3, p3, 0x1e

    .line 121
    .line 122
    add-int/2addr p5, p3

    .line 123
    invoke-virtual {p2, v1, v2, p4, p5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void

    .line 127
    :goto_1
    invoke-static {p2}, Lcom/kwad/sdk/service/ServiceProvider;->reportSdkCaughtException(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

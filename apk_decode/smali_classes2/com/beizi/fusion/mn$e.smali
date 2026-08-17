.class Lcom/beizi/fusion/mn$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/mn;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/mn;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/mn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/mn;->u(Lcom/beizi/fusion/mn;)Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/mn;->r(Lcom/beizi/fusion/mn;)Landroid/widget/ImageView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/fusion/mn;->u(Lcom/beizi/fusion/mn;)Landroid/widget/FrameLayout;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->g(Lcom/beizi/fusion/mn;I)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/beizi/fusion/mn;->u(Lcom/beizi/fusion/mn;)Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->h(Lcom/beizi/fusion/mn;I)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/beizi/fusion/mn;->r(Lcom/beizi/fusion/mn;)Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->i(Lcom/beizi/fusion/mn;I)I

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/beizi/fusion/mn;->r(Lcom/beizi/fusion/mn;)Landroid/widget/ImageView;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->j(Lcom/beizi/fusion/mn;I)I

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/mn;->y(Lcom/beizi/fusion/mn;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x2

    .line 78
    div-int/2addr v1, v2

    .line 79
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->e(Lcom/beizi/fusion/mn;I)I

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/beizi/fusion/mn;->z(Lcom/beizi/fusion/mn;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    div-int/2addr v1, v2

    .line 89
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->f(Lcom/beizi/fusion/mn;I)I

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/beizi/fusion/mn;->s(Lcom/beizi/fusion/mn;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->a(Lcom/beizi/fusion/mn;I)I

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/beizi/fusion/mn;->v(Lcom/beizi/fusion/mn;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iget-object v3, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 108
    .line 109
    invoke-static {v3}, Lcom/beizi/fusion/mn;->s(Lcom/beizi/fusion/mn;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    sub-int/2addr v1, v3

    .line 114
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->b(Lcom/beizi/fusion/mn;I)I

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/beizi/fusion/mn;->t(Lcom/beizi/fusion/mn;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->c(Lcom/beizi/fusion/mn;I)I

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/beizi/fusion/mn;->x(Lcom/beizi/fusion/mn;)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget-object v3, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 133
    .line 134
    invoke-static {v3}, Lcom/beizi/fusion/mn;->t(Lcom/beizi/fusion/mn;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    sub-int/2addr v1, v3

    .line 139
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->d(Lcom/beizi/fusion/mn;I)I

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 143
    .line 144
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 145
    .line 146
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1}, Lcom/beizi/fusion/mn;->b(Lcom/beizi/fusion/mn;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/beizi/fusion/mn;->A(Lcom/beizi/fusion/mn;)Landroid/animation/AnimatorSet;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 159
    .line 160
    invoke-static {v1}, Lcom/beizi/fusion/mn;->n(Lcom/beizi/fusion/mn;)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    iget-object v4, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 165
    .line 166
    invoke-static {v4}, Lcom/beizi/fusion/mn;->o(Lcom/beizi/fusion/mn;)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    iget-object v5, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 171
    .line 172
    invoke-static {v5}, Lcom/beizi/fusion/mn;->n(Lcom/beizi/fusion/mn;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    sub-int/2addr v4, v5

    .line 177
    div-int/2addr v4, v2

    .line 178
    add-int/2addr v3, v4

    .line 179
    int-to-float v3, v3

    .line 180
    iget-object v4, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 181
    .line 182
    invoke-static {v4}, Lcom/beizi/fusion/mn;->p(Lcom/beizi/fusion/mn;)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    int-to-float v4, v4

    .line 187
    iget-object v5, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 188
    .line 189
    invoke-static {v5}, Lcom/beizi/fusion/mn;->n(Lcom/beizi/fusion/mn;)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    iget-object v6, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 194
    .line 195
    invoke-static {v6}, Lcom/beizi/fusion/mn;->o(Lcom/beizi/fusion/mn;)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    iget-object v7, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 200
    .line 201
    invoke-static {v7}, Lcom/beizi/fusion/mn;->n(Lcom/beizi/fusion/mn;)I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    sub-int/2addr v6, v7

    .line 206
    div-int/2addr v6, v2

    .line 207
    add-int/2addr v5, v6

    .line 208
    int-to-float v5, v5

    .line 209
    iget-object v6, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 210
    .line 211
    invoke-static {v6}, Lcom/beizi/fusion/mn;->q(Lcom/beizi/fusion/mn;)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    int-to-float v6, v6

    .line 216
    invoke-static {v1, v3, v4, v5, v6}, Lcom/beizi/fusion/mn;->a(Lcom/beizi/fusion/mn;FFFF)Landroid/animation/ValueAnimator;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iget-object v3, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 221
    .line 222
    invoke-static {v3}, Lcom/beizi/fusion/mn;->n(Lcom/beizi/fusion/mn;)I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    int-to-float v4, v4

    .line 227
    iget-object v5, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 228
    .line 229
    invoke-static {v5}, Lcom/beizi/fusion/mn;->p(Lcom/beizi/fusion/mn;)I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    iget-object v6, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 234
    .line 235
    invoke-static {v6}, Lcom/beizi/fusion/mn;->q(Lcom/beizi/fusion/mn;)I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    iget-object v7, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 240
    .line 241
    invoke-static {v7}, Lcom/beizi/fusion/mn;->p(Lcom/beizi/fusion/mn;)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    sub-int/2addr v6, v7

    .line 246
    div-int/2addr v6, v2

    .line 247
    add-int/2addr v5, v6

    .line 248
    int-to-float v5, v5

    .line 249
    iget-object v6, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 250
    .line 251
    invoke-static {v6}, Lcom/beizi/fusion/mn;->o(Lcom/beizi/fusion/mn;)I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    int-to-float v6, v6

    .line 256
    iget-object v7, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 257
    .line 258
    invoke-static {v7}, Lcom/beizi/fusion/mn;->p(Lcom/beizi/fusion/mn;)I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    iget-object v8, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 263
    .line 264
    invoke-static {v8}, Lcom/beizi/fusion/mn;->q(Lcom/beizi/fusion/mn;)I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    iget-object v9, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 269
    .line 270
    invoke-static {v9}, Lcom/beizi/fusion/mn;->p(Lcom/beizi/fusion/mn;)I

    .line 271
    .line 272
    .line 273
    move-result v9

    .line 274
    sub-int/2addr v8, v9

    .line 275
    div-int/2addr v8, v2

    .line 276
    add-int/2addr v7, v8

    .line 277
    int-to-float v7, v7

    .line 278
    invoke-static {v3, v4, v5, v6, v7}, Lcom/beizi/fusion/mn;->a(Lcom/beizi/fusion/mn;FFFF)Landroid/animation/ValueAnimator;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iget-object v4, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 283
    .line 284
    invoke-static {v4}, Lcom/beizi/fusion/mn;->n(Lcom/beizi/fusion/mn;)I

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    int-to-float v5, v5

    .line 289
    iget-object v6, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 290
    .line 291
    invoke-static {v6}, Lcom/beizi/fusion/mn;->p(Lcom/beizi/fusion/mn;)I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    int-to-float v6, v6

    .line 296
    iget-object v7, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 297
    .line 298
    invoke-static {v7}, Lcom/beizi/fusion/mn;->o(Lcom/beizi/fusion/mn;)I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    int-to-float v7, v7

    .line 303
    iget-object v8, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 304
    .line 305
    invoke-static {v8}, Lcom/beizi/fusion/mn;->q(Lcom/beizi/fusion/mn;)I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    int-to-float v8, v8

    .line 310
    invoke-static {v4, v5, v6, v7, v8}, Lcom/beizi/fusion/mn;->a(Lcom/beizi/fusion/mn;FFFF)Landroid/animation/ValueAnimator;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    iget-object v5, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 315
    .line 316
    invoke-static {v5}, Lcom/beizi/fusion/mn;->o(Lcom/beizi/fusion/mn;)I

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    int-to-float v6, v6

    .line 321
    iget-object v7, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 322
    .line 323
    invoke-static {v7}, Lcom/beizi/fusion/mn;->p(Lcom/beizi/fusion/mn;)I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    int-to-float v7, v7

    .line 328
    iget-object v8, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 329
    .line 330
    invoke-static {v8}, Lcom/beizi/fusion/mn;->n(Lcom/beizi/fusion/mn;)I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    int-to-float v8, v8

    .line 335
    iget-object v9, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 336
    .line 337
    invoke-static {v9}, Lcom/beizi/fusion/mn;->q(Lcom/beizi/fusion/mn;)I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    int-to-float v9, v9

    .line 342
    invoke-static {v5, v6, v7, v8, v9}, Lcom/beizi/fusion/mn;->a(Lcom/beizi/fusion/mn;FFFF)Landroid/animation/ValueAnimator;

    .line 343
    .line 344
    .line 345
    move-result-object v5

    .line 346
    const/4 v6, 0x4

    .line 347
    new-array v6, v6, [Landroid/animation/Animator;

    .line 348
    .line 349
    const/4 v7, 0x0

    .line 350
    aput-object v1, v6, v7

    .line 351
    .line 352
    const/4 v1, 0x1

    .line 353
    aput-object v3, v6, v1

    .line 354
    .line 355
    aput-object v4, v6, v2

    .line 356
    .line 357
    const/4 v1, 0x3

    .line 358
    aput-object v5, v6, v1

    .line 359
    .line 360
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 364
    .line 365
    invoke-static {v0}, Lcom/beizi/fusion/mn;->A(Lcom/beizi/fusion/mn;)Landroid/animation/AnimatorSet;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const-wide/16 v1, 0x3e8

    .line 370
    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 375
    .line 376
    invoke-static {v0}, Lcom/beizi/fusion/mn;->A(Lcom/beizi/fusion/mn;)Landroid/animation/AnimatorSet;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 381
    .line 382
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 389
    .line 390
    invoke-static {v0}, Lcom/beizi/fusion/mn;->A(Lcom/beizi/fusion/mn;)Landroid/animation/AnimatorSet;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    new-instance v1, Lcom/beizi/fusion/mn$e$a;

    .line 395
    .line 396
    invoke-direct {v1, p0}, Lcom/beizi/fusion/mn$e$a;-><init>(Lcom/beizi/fusion/mn$e;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/beizi/fusion/mn$e;->a:Lcom/beizi/fusion/mn;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/beizi/fusion/mn;->A(Lcom/beizi/fusion/mn;)Landroid/animation/AnimatorSet;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    goto :goto_1

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 415
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 416
    .line 417
    .line 418
    return-void
.end method

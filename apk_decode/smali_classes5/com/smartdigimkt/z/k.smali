.class public final Lcom/smartdigimkt/z/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Ljava/lang/ref/WeakReference;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ljava/lang/ref/WeakReference;

.field public final synthetic e:Ljava/lang/ref/WeakReference;

.field public final synthetic f:Lcom/smartdigimkt/z/m;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/z/m;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/z/k;->f:Lcom/smartdigimkt/z/m;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/smartdigimkt/z/k;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/smartdigimkt/z/k;->b:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/smartdigimkt/z/k;->c:Ljava/lang/Runnable;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/smartdigimkt/z/k;->d:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/smartdigimkt/z/k;->e:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/smartdigimkt/z/k;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/smartdigimkt/sdk/basead/ui/MCView;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/smartdigimkt/z/k;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/app/Activity;

    .line 18
    .line 19
    if-eqz v1, :cond_9

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const-wide/16 v5, 0xc8

    .line 40
    .line 41
    if-lez v3, :cond_8

    .line 42
    .line 43
    if-gtz v4, :cond_1

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    iget-object v7, v0, Lcom/smartdigimkt/z/k;->d:Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroid/view/View;

    .line 54
    .line 55
    iget-object v8, v0, Lcom/smartdigimkt/z/k;->e:Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Landroid/view/View;

    .line 62
    .line 63
    invoke-static {v7}, Lcom/smartdigimkt/z/m;->a(Landroid/view/View;)Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-static {v8}, Lcom/smartdigimkt/z/m;->a(Landroid/view/View;)Landroid/graphics/Rect;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const/4 v9, 0x1

    .line 72
    invoke-virtual {v1, v9}, Lcom/smartdigimkt/sdk/basead/ui/MCView;->handleMC(Z)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/smartdigimkt/z/k;->f:Lcom/smartdigimkt/z/m;

    .line 76
    .line 77
    iget-object v10, v0, Lcom/smartdigimkt/z/k;->a:Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    iget-object v12, v0, Lcom/smartdigimkt/z/k;->b:Ljava/lang/ref/WeakReference;

    .line 80
    .line 81
    const/4 v11, 0x0

    .line 82
    aget v13, v2, v11

    .line 83
    .line 84
    aget v2, v2, v9

    .line 85
    .line 86
    iget-object v9, v0, Lcom/smartdigimkt/z/k;->c:Ljava/lang/Runnable;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    check-cast v14, Landroid/app/Activity;

    .line 96
    .line 97
    if-nez v14, :cond_3

    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/smartdigimkt/sdk/basead/ui/MCView;

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    invoke-virtual {v1, v11}, Lcom/smartdigimkt/sdk/basead/ui/MCView;->handleMC(Z)V

    .line 108
    .line 109
    .line 110
    :cond_2
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1, v5, v6, v9}, Lcom/smartdigimkt/b4/e;->a(JLjava/lang/Runnable;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_3
    if-eqz v8, :cond_4

    .line 119
    .line 120
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-nez v5, :cond_4

    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    :cond_4
    const v5, 0x3f19999a    # 0.6f

    .line 132
    .line 133
    .line 134
    const v6, 0x3dcccccd    # 0.1f

    .line 135
    .line 136
    .line 137
    const v8, 0x3f666666    # 0.9f

    .line 138
    .line 139
    .line 140
    if-eqz v7, :cond_5

    .line 141
    .line 142
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-nez v10, :cond_5

    .line 147
    .line 148
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    new-instance v4, Landroid/graphics/Rect;

    .line 157
    .line 158
    iget v10, v7, Landroid/graphics/Rect;->left:I

    .line 159
    .line 160
    int-to-float v2, v2

    .line 161
    mul-float/2addr v6, v2

    .line 162
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    add-int/2addr v6, v10

    .line 167
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    int-to-float v3, v3

    .line 170
    mul-float/2addr v5, v3

    .line 171
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    add-int/2addr v5, v10

    .line 176
    iget v10, v7, Landroid/graphics/Rect;->left:I

    .line 177
    .line 178
    mul-float/2addr v2, v8

    .line 179
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    add-int/2addr v2, v10

    .line 184
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    mul-float/2addr v3, v8

    .line 187
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    add-int/2addr v3, v10

    .line 192
    invoke-direct {v4, v6, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    :goto_0
    move-object v8, v4

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    new-instance v7, Landroid/graphics/Rect;

    .line 201
    .line 202
    add-int/2addr v3, v13

    .line 203
    add-int/2addr v4, v2

    .line 204
    invoke-direct {v7, v13, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    new-instance v4, Landroid/graphics/Rect;

    .line 216
    .line 217
    iget v10, v7, Landroid/graphics/Rect;->left:I

    .line 218
    .line 219
    int-to-float v2, v2

    .line 220
    mul-float/2addr v6, v2

    .line 221
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    add-int/2addr v6, v10

    .line 226
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 227
    .line 228
    int-to-float v3, v3

    .line 229
    mul-float/2addr v5, v3

    .line 230
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    add-int/2addr v5, v10

    .line 235
    iget v10, v7, Landroid/graphics/Rect;->left:I

    .line 236
    .line 237
    mul-float/2addr v2, v8

    .line 238
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    add-int/2addr v2, v10

    .line 243
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 244
    .line 245
    mul-float/2addr v3, v8

    .line 246
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    add-int/2addr v3, v10

    .line 251
    invoke-direct {v4, v6, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :goto_1
    iget v2, v8, Landroid/graphics/Rect;->left:I

    .line 259
    .line 260
    int-to-float v2, v2

    .line 261
    iget-object v3, v1, Lcom/smartdigimkt/z/m;->a:Ljava/util/Random;

    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    int-to-float v4, v4

    .line 272
    mul-float/2addr v3, v4

    .line 273
    add-float v15, v3, v2

    .line 274
    .line 275
    iget v2, v8, Landroid/graphics/Rect;->top:I

    .line 276
    .line 277
    int-to-float v2, v2

    .line 278
    iget-object v3, v1, Lcom/smartdigimkt/z/m;->a:Ljava/util/Random;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    int-to-float v4, v4

    .line 289
    mul-float/2addr v3, v4

    .line 290
    add-float v16, v3, v2

    .line 291
    .line 292
    move/from16 v20, v15

    .line 293
    .line 294
    move/from16 v21, v16

    .line 295
    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 297
    .line 298
    .line 299
    move-result-wide v15

    .line 300
    const/16 v19, 0x0

    .line 301
    .line 302
    const/16 v22, 0x0

    .line 303
    .line 304
    move-wide/from16 v17, v15

    .line 305
    .line 306
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    if-nez v2, :cond_6

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_6
    invoke-virtual {v14}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    if-eqz v3, :cond_7

    .line 318
    .line 319
    invoke-virtual {v3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    if-eqz v4, :cond_7

    .line 324
    .line 325
    invoke-virtual {v3}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-interface {v3, v2}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_7
    invoke-virtual {v14, v2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 334
    .line 335
    .line 336
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 337
    .line 338
    .line 339
    iget-object v1, v1, Lcom/smartdigimkt/z/m;->a:Ljava/util/Random;

    .line 340
    .line 341
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    const/high16 v2, 0x42c80000    # 100.0f

    .line 346
    .line 347
    mul-float/2addr v1, v2

    .line 348
    float-to-long v1, v1

    .line 349
    const-wide/16 v3, 0x32

    .line 350
    .line 351
    add-long/2addr v1, v3

    .line 352
    new-instance v11, Lcom/smartdigimkt/z/l;

    .line 353
    .line 354
    move-object/from16 v17, v9

    .line 355
    .line 356
    move-wide v13, v15

    .line 357
    move/from16 v15, v20

    .line 358
    .line 359
    move/from16 v16, v21

    .line 360
    .line 361
    invoke-direct/range {v11 .. v17}, Lcom/smartdigimkt/z/l;-><init>(Ljava/lang/ref/WeakReference;JFFLjava/lang/Runnable;)V

    .line 362
    .line 363
    .line 364
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    invoke-virtual {v3, v1, v2, v11}, Lcom/smartdigimkt/b4/e;->a(JLjava/lang/Runnable;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :cond_8
    :goto_3
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iget-object v2, v0, Lcom/smartdigimkt/z/k;->c:Ljava/lang/Runnable;

    .line 377
    .line 378
    invoke-virtual {v1, v5, v6, v2}, Lcom/smartdigimkt/b4/e;->a(JLjava/lang/Runnable;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :cond_9
    :goto_4
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    iget-object v2, v0, Lcom/smartdigimkt/z/k;->c:Ljava/lang/Runnable;

    .line 387
    .line 388
    invoke-virtual {v1, v2}, Lcom/smartdigimkt/b4/e;->a(Ljava/lang/Runnable;)V

    .line 389
    .line 390
    .line 391
    return-void
.end method

.class Lcom/beizi/fusion/n3$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/n3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/n3;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/n3;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v1, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v1, v3, :cond_12

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    const/16 v5, 0x270f

    .line 13
    .line 14
    if-eq v1, v2, :cond_8

    .line 15
    .line 16
    const/4 v6, 0x3

    .line 17
    if-eq v1, v6, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/beizi/fusion/n3;->g(Lcom/beizi/fusion/n3;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/beizi/fusion/q1;->h()Lcom/beizi/fusion/lk;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v7, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 35
    .line 36
    new-instance v8, Lcom/beizi/fusion/lk;

    .line 37
    .line 38
    new-instance v9, Lcom/beizi/fusion/events/EventBean;

    .line 39
    .line 40
    sget-object v10, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    invoke-virtual {v11}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v14

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v17

    .line 58
    const-string v16, ""

    .line 59
    .line 60
    const-string v18, ""

    .line 61
    .line 62
    const-string v11, ""

    .line 63
    .line 64
    const-string v12, ""

    .line 65
    .line 66
    const-string v13, ""

    .line 67
    .line 68
    const-string v15, ""

    .line 69
    .line 70
    invoke-direct/range {v9 .. v18}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v8, v9}, Lcom/beizi/fusion/lk;-><init>(Lcom/beizi/fusion/events/EventBean;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v7, v8}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;Lcom/beizi/fusion/lk;)Lcom/beizi/fusion/lk;

    .line 77
    .line 78
    .line 79
    iget-object v7, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 80
    .line 81
    invoke-static {v7}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v8}, Lcom/beizi/fusion/lk;->a()Lcom/beizi/fusion/s1;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-static {v7, v8}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;Lcom/beizi/fusion/s1;)Lcom/beizi/fusion/s1;

    .line 90
    .line 91
    .line 92
    iget-object v7, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 93
    .line 94
    invoke-static {v7}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {v8}, Lcom/beizi/fusion/lk;->b()Lcom/beizi/fusion/events/EventBean;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    iput-object v8, v7, Lcom/beizi/fusion/n3;->b:Lcom/beizi/fusion/events/EventBean;

    .line 103
    .line 104
    iget-object v7, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 105
    .line 106
    invoke-static {v7}, Lcom/beizi/fusion/n3;->i(Lcom/beizi/fusion/n3;)V

    .line 107
    .line 108
    .line 109
    iget-object v7, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 110
    .line 111
    invoke-static {v7}, Lcom/beizi/fusion/n3;->h(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/s1;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    iget-object v8, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 116
    .line 117
    iget-object v8, v8, Lcom/beizi/fusion/n3;->b:Lcom/beizi/fusion/events/EventBean;

    .line 118
    .line 119
    invoke-virtual {v7, v8}, Lcom/beizi/fusion/s1;->a(Lcom/beizi/fusion/events/EventBean;)V

    .line 120
    .line 121
    .line 122
    iget-object v7, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 123
    .line 124
    invoke-static {v7}, Lcom/beizi/fusion/n3;->j(Lcom/beizi/fusion/n3;)V

    .line 125
    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    iget-object v1, v1, Lcom/beizi/fusion/lk;->b:Lcom/beizi/fusion/s1$i;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/beizi/fusion/s1$l;->a()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ne v1, v2, :cond_7

    .line 136
    .line 137
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/beizi/fusion/s1$l;->a()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Lcom/beizi/fusion/s1$l;->a(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 163
    .line 164
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/beizi/fusion/s1$l;->a()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    const-string v7, "kGetLocalConfigStatusInternalError"

    .line 175
    .line 176
    const/4 v8, -0x2

    .line 177
    if-ne v1, v3, :cond_6

    .line 178
    .line 179
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 180
    .line 181
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/s1$l;->a(I)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 191
    .line 192
    iget-object v9, v1, Lcom/beizi/fusion/n3;->a:Landroid/content/Context;

    .line 193
    .line 194
    iget-object v10, v1, Lcom/beizi/fusion/n3;->l:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/beizi/fusion/n3;->o()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    invoke-static {v9, v10, v11}, Lcom/beizi/fusion/c5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-static {v1, v9}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;Lcom/beizi/fusion/model/AdSpacesBean;)Lcom/beizi/fusion/model/AdSpacesBean;

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 208
    .line 209
    invoke-static {v1}, Lcom/beizi/fusion/n3;->b(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/model/AdSpacesBean;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-nez v1, :cond_5

    .line 214
    .line 215
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 216
    .line 217
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/beizi/fusion/s1$l;->a()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-ne v1, v2, :cond_4

    .line 228
    .line 229
    invoke-static {}, Lcom/beizi/fusion/c5;->a()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-ne v1, v3, :cond_1

    .line 234
    .line 235
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 236
    .line 237
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 242
    .line 243
    invoke-virtual {v1, v4}, Lcom/beizi/fusion/s1$l;->a(I)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 247
    .line 248
    const/16 v2, 0x2711

    .line 249
    .line 250
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/n3;->a(I)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_1
    if-ne v1, v2, :cond_2

    .line 255
    .line 256
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 257
    .line 258
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 263
    .line 264
    const/4 v2, 0x5

    .line 265
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/s1$l;->a(I)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 269
    .line 270
    const/16 v2, 0x2774

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/n3;->a(I)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :cond_2
    if-ne v1, v6, :cond_3

    .line 277
    .line 278
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 285
    .line 286
    const/4 v2, 0x6

    .line 287
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/s1$l;->a(I)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 291
    .line 292
    const/16 v2, 0x277e

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/n3;->a(I)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_3
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 299
    .line 300
    invoke-virtual {v1, v5}, Lcom/beizi/fusion/n3;->a(I)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_4
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 305
    .line 306
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 311
    .line 312
    invoke-virtual {v1, v8}, Lcom/beizi/fusion/s1$l;->a(I)V

    .line 313
    .line 314
    .line 315
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 316
    .line 317
    invoke-virtual {v1, v7}, Lcom/beizi/fusion/n3;->a(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_5
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 322
    .line 323
    invoke-virtual {v1, v5}, Lcom/beizi/fusion/n3;->a(I)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :cond_6
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 328
    .line 329
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iget-object v1, v1, Lcom/beizi/fusion/lk;->c:Lcom/beizi/fusion/s1$h;

    .line 334
    .line 335
    invoke-virtual {v1, v8}, Lcom/beizi/fusion/s1$l;->a(I)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 339
    .line 340
    invoke-virtual {v1, v7}, Lcom/beizi/fusion/n3;->a(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :cond_7
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 345
    .line 346
    const/16 v2, 0x2710

    .line 347
    .line 348
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/n3;->a(I)V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 356
    .line 357
    invoke-static {v1}, Lcom/beizi/fusion/n3;->e(Lcom/beizi/fusion/n3;)I

    .line 358
    .line 359
    .line 360
    move-result v6

    .line 361
    invoke-static {v1, v6}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;I)I

    .line 362
    .line 363
    .line 364
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 365
    .line 366
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    if-eqz v1, :cond_9

    .line 371
    .line 372
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 373
    .line 374
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v1, v3}, Lcom/beizi/fusion/lk;->a(Z)V

    .line 379
    .line 380
    .line 381
    :cond_9
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 382
    .line 383
    invoke-static {v1}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    if-nez v1, :cond_a

    .line 388
    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :cond_a
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 392
    .line 393
    iget-object v6, v1, Lcom/beizi/fusion/n3;->h:Lcom/beizi/fusion/e2;

    .line 394
    .line 395
    const/4 v7, -0x1

    .line 396
    const-string v8, "BeiZis"

    .line 397
    .line 398
    const-string v9, ",mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 399
    .line 400
    const-string v10, "AdRequest timeout channel = "

    .line 401
    .line 402
    if-eqz v6, :cond_f

    .line 403
    .line 404
    invoke-virtual {v6}, Lcom/beizi/fusion/e2;->d()V

    .line 405
    .line 406
    .line 407
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 408
    .line 409
    iget-object v4, v1, Lcom/beizi/fusion/n3;->h:Lcom/beizi/fusion/e2;

    .line 410
    .line 411
    invoke-virtual {v4}, Lcom/beizi/fusion/e2;->x()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    iget-object v5, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 416
    .line 417
    iget-object v5, v5, Lcom/beizi/fusion/n3;->h:Lcom/beizi/fusion/e2;

    .line 418
    .line 419
    invoke-virtual {v5}, Lcom/beizi/fusion/e2;->r()Landroid/view/View;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    invoke-virtual {v1, v4, v5}, Lcom/beizi/fusion/n3;->b(Ljava/lang/String;Landroid/view/View;)V

    .line 424
    .line 425
    .line 426
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 427
    .line 428
    invoke-virtual {v1}, Lcom/beizi/fusion/n3;->o()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    const-string v4, "4"

    .line 433
    .line 434
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_b

    .line 439
    .line 440
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 441
    .line 442
    iget-boolean v4, v1, Lcom/beizi/fusion/n3;->J:Z

    .line 443
    .line 444
    if-nez v4, :cond_b

    .line 445
    .line 446
    iget-object v1, v1, Lcom/beizi/fusion/n3;->h:Lcom/beizi/fusion/e2;

    .line 447
    .line 448
    invoke-virtual {v1}, Lcom/beizi/fusion/e2;->H0()V

    .line 449
    .line 450
    .line 451
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 452
    .line 453
    iput-boolean v3, v1, Lcom/beizi/fusion/n3;->J:Z

    .line 454
    .line 455
    :cond_b
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 456
    .line 457
    invoke-virtual {v1}, Lcom/beizi/fusion/n3;->C()Ljava/util/Map;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    if-eqz v1, :cond_13

    .line 462
    .line 463
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    :cond_c
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    if-eqz v3, :cond_13

    .line 476
    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Lcom/beizi/fusion/e2;

    .line 482
    .line 483
    invoke-virtual {v3}, Lcom/beizi/fusion/e2;->m()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    iget-object v5, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 488
    .line 489
    iget-object v5, v5, Lcom/beizi/fusion/n3;->h:Lcom/beizi/fusion/e2;

    .line 490
    .line 491
    invoke-virtual {v5}, Lcom/beizi/fusion/e2;->m()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    if-eqz v4, :cond_c

    .line 496
    .line 497
    if-nez v5, :cond_d

    .line 498
    .line 499
    goto :goto_0

    .line 500
    :cond_d
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    if-nez v6, :cond_e

    .line 509
    .line 510
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    if-nez v6, :cond_e

    .line 519
    .line 520
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v6

    .line 524
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v5

    .line 528
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    if-eqz v5, :cond_e

    .line 533
    .line 534
    goto :goto_0

    .line 535
    :cond_e
    iget-object v5, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 536
    .line 537
    invoke-static {v5, v3, v2}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;Lcom/beizi/fusion/e2;I)V

    .line 538
    .line 539
    .line 540
    new-instance v5, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getId()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-object v6, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 559
    .line 560
    invoke-static {v6}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    iget-object v6, v6, Lcom/beizi/fusion/lk;->h:Lcom/beizi/fusion/s1$f;

    .line 565
    .line 566
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v11

    .line 570
    invoke-virtual {v6, v11}, Lcom/beizi/fusion/s1$l;->a(Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    invoke-static {v8, v5}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3}, Lcom/beizi/fusion/e2;->h()Lcom/beizi/fusion/c2;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    sget-object v5, Lcom/beizi/fusion/c2;->a:Lcom/beizi/fusion/c2;

    .line 589
    .line 590
    if-ne v3, v5, :cond_c

    .line 591
    .line 592
    iget-object v3, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 593
    .line 594
    invoke-static {v3}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    iget-object v3, v3, Lcom/beizi/fusion/lk;->h:Lcom/beizi/fusion/s1$f;

    .line 599
    .line 600
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    invoke-virtual {v3, v4, v7}, Lcom/beizi/fusion/s1$l;->a(Ljava/lang/String;I)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_0

    .line 608
    .line 609
    :cond_f
    invoke-virtual {v1, v5}, Lcom/beizi/fusion/n3;->a(I)V

    .line 610
    .line 611
    .line 612
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 613
    .line 614
    invoke-virtual {v1}, Lcom/beizi/fusion/n3;->C()Ljava/util/Map;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    if-eqz v1, :cond_13

    .line 619
    .line 620
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    :cond_10
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    if-eqz v3, :cond_13

    .line 633
    .line 634
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    check-cast v3, Lcom/beizi/fusion/e2;

    .line 639
    .line 640
    invoke-virtual {v3}, Lcom/beizi/fusion/e2;->m()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    if-nez v5, :cond_11

    .line 645
    .line 646
    goto :goto_1

    .line 647
    :cond_11
    iget-object v6, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 648
    .line 649
    invoke-static {v6, v3, v2}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;Lcom/beizi/fusion/e2;I)V

    .line 650
    .line 651
    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getId()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    iget-object v6, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 671
    .line 672
    invoke-static {v6}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 673
    .line 674
    .line 675
    move-result-object v6

    .line 676
    iget-object v6, v6, Lcom/beizi/fusion/lk;->h:Lcom/beizi/fusion/s1$f;

    .line 677
    .line 678
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v11

    .line 682
    invoke-virtual {v6, v11}, Lcom/beizi/fusion/s1$l;->a(Ljava/lang/String;)I

    .line 683
    .line 684
    .line 685
    move-result v6

    .line 686
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-static {v8, v3}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    iget-object v3, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 697
    .line 698
    invoke-static {v3}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    iget-object v3, v3, Lcom/beizi/fusion/lk;->h:Lcom/beizi/fusion/s1$f;

    .line 703
    .line 704
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v6

    .line 708
    invoke-virtual {v3, v6}, Lcom/beizi/fusion/s1$l;->a(Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    if-ge v3, v4, :cond_10

    .line 713
    .line 714
    iget-object v3, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 715
    .line 716
    invoke-static {v3}, Lcom/beizi/fusion/n3;->f(Lcom/beizi/fusion/n3;)Lcom/beizi/fusion/lk;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    iget-object v3, v3, Lcom/beizi/fusion/lk;->h:Lcom/beizi/fusion/s1$f;

    .line 721
    .line 722
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    invoke-virtual {v3, v5, v7}, Lcom/beizi/fusion/s1$l;->a(Ljava/lang/String;I)V

    .line 727
    .line 728
    .line 729
    goto :goto_1

    .line 730
    :cond_12
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 731
    .line 732
    invoke-static {v1}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;)I

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    invoke-static {v1, v3}, Lcom/beizi/fusion/n3;->a(Lcom/beizi/fusion/n3;I)I

    .line 737
    .line 738
    .line 739
    iget-object v1, v0, Lcom/beizi/fusion/n3$a;->a:Lcom/beizi/fusion/n3;

    .line 740
    .line 741
    iget-object v3, v1, Lcom/beizi/fusion/n3;->h:Lcom/beizi/fusion/e2;

    .line 742
    .line 743
    if-eqz v3, :cond_13

    .line 744
    .line 745
    invoke-static {v1, v2}, Lcom/beizi/fusion/n3;->b(Lcom/beizi/fusion/n3;I)V

    .line 746
    .line 747
    .line 748
    :cond_13
    :goto_2
    return-void
.end method

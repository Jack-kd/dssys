.class public Lcom/meishu/sdk/core/utils/f$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;ZZLcom/meishu/sdk/core/utils/p0$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/SoftReference;

.field public final synthetic b:Lcom/meishu/sdk/core/ad/AdSlot;

.field public final synthetic c:Ljava/lang/ref/SoftReference;

.field public final synthetic d:Lcom/meishu/sdk/core/utils/m0;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/SoftReference;Lcom/meishu/sdk/core/ad/AdSlot;Ljava/lang/ref/SoftReference;Lcom/meishu/sdk/core/utils/m0;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/core/utils/f$a;->d:Lcom/meishu/sdk/core/utils/m0;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/core/utils/f$a;->e:Ljava/util/List;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/meishu/sdk/core/utils/f$a;->f:Z

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    new-instance v4, Lcom/google/gson/Gson;

    .line 8
    .line 9
    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 10
    .line 11
    .line 12
    sget v0, Lcom/meishu/sdk/core/utils/r0;->k:I

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    mul-int/lit16 v0, v0, 0x3e8

    .line 18
    .line 19
    :goto_0
    move v6, v0

    .line 20
    move v7, v5

    .line 21
    move v8, v7

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/16 v0, 0x7d0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    sub-long/2addr v9, v2

    .line 31
    const-wide/16 v11, 0x1388

    .line 32
    .line 33
    cmp-long v0, v9, v11

    .line 34
    .line 35
    const-string v9, "ClickHandler"

    .line 36
    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    const-string v0, "check self background timeout"

    .line 40
    .line 41
    invoke-static {v9, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/content/Context;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 53
    .line 54
    iget-object v3, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/meishu/sdk/platform/ms/c;

    .line 61
    .line 62
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/f$a;->d:Lcom/meishu/sdk/core/utils/m0;

    .line 63
    .line 64
    iget-boolean v4, v4, Lcom/meishu/sdk/core/utils/m0;->e:Z

    .line 65
    .line 66
    invoke-static {v0, v2, v3, v4}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_b

    .line 70
    .line 71
    :cond_2
    :try_start_0
    sget-object v0, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getCrdpf()I

    .line 76
    .line 77
    .line 78
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_2

    .line 80
    :catch_0
    :cond_3
    move v0, v5

    .line 81
    :goto_2
    const/4 v10, 0x1

    .line 82
    if-ne v0, v10, :cond_4

    .line 83
    .line 84
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->e:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->e:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    const-string v0, "open deeplink fail. break"

    .line 107
    .line 108
    invoke-static {v9, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Landroid/content/Context;

    .line 118
    .line 119
    iget-object v2, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 120
    .line 121
    iget-object v3, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lcom/meishu/sdk/platform/ms/c;

    .line 128
    .line 129
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/f$a;->d:Lcom/meishu/sdk/core/utils/m0;

    .line 130
    .line 131
    iget-boolean v4, v4, Lcom/meishu/sdk/core/utils/m0;->e:Z

    .line 132
    .line 133
    invoke-static {v0, v2, v3, v4}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;I)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_b

    .line 137
    .line 138
    :cond_4
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/ref/Reference;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_d

    .line 145
    .line 146
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/ref/Reference;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_5

    .line 153
    .line 154
    goto/16 :goto_a

    .line 155
    .line 156
    :cond_5
    const-wide/16 v11, 0x1f4

    .line 157
    .line 158
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 159
    .line 160
    .line 161
    :try_start_2
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 162
    .line 163
    .line 164
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 165
    const/4 v9, 0x0

    .line 166
    const-string v13, "happybean"

    .line 167
    .line 168
    if-nez v0, :cond_a

    .line 169
    .line 170
    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    move v7, v10

    .line 176
    goto/16 :goto_9

    .line 177
    .line 178
    :catch_1
    move-exception v0

    .line 179
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide v11

    .line 186
    sub-long/2addr v11, v2

    .line 187
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 188
    .line 189
    .line 190
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    if-nez v0, :cond_6

    .line 192
    .line 193
    int-to-long v13, v6

    .line 194
    cmp-long v0, v11, v13

    .line 195
    .line 196
    if-ltz v0, :cond_9

    .line 197
    .line 198
    :try_start_5
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 199
    .line 200
    iget-object v7, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Landroid/content/Context;

    .line 207
    .line 208
    iget-object v8, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 209
    .line 210
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    check-cast v8, Lcom/meishu/sdk/platform/ms/c;

    .line 215
    .line 216
    iget-object v9, v1, Lcom/meishu/sdk/core/utils/f$a;->d:Lcom/meishu/sdk/core/utils/m0;

    .line 217
    .line 218
    iget-boolean v9, v9, Lcom/meishu/sdk/core/utils/m0;->e:Z

    .line 219
    .line 220
    invoke-static {v0, v7, v8, v9}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 221
    .line 222
    .line 223
    goto/16 :goto_b

    .line 224
    .line 225
    :catchall_1
    move-exception v0

    .line 226
    move v7, v5

    .line 227
    move v8, v10

    .line 228
    goto/16 :goto_9

    .line 229
    .line 230
    :cond_6
    if-nez v8, :cond_9

    .line 231
    .line 232
    :try_start_6
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 233
    .line 234
    iget-object v7, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    check-cast v7, Lcom/meishu/sdk/platform/ms/c;

    .line 241
    .line 242
    invoke-static {v0, v7}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_9

    .line 247
    .line 248
    sget-object v0, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 249
    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 253
    .line 254
    .line 255
    move-result-wide v11

    .line 256
    invoke-virtual {v0, v11, v12}, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->setLastTime(J)V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    sget-object v7, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 264
    .line 265
    invoke-virtual {v4, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v0, v13, v7}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sget-object v7, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 281
    .line 282
    invoke-virtual {v4, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-interface {v0, v13, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    .line 292
    .line 293
    :cond_7
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 294
    .line 295
    instance-of v7, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 296
    .line 297
    if-eqz v7, :cond_8

    .line 298
    .line 299
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDPSIGN()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 306
    .line 307
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    move-object/from16 v16, v0

    .line 314
    .line 315
    move-object v15, v9

    .line 316
    goto :goto_4

    .line 317
    :cond_8
    move-object v15, v9

    .line 318
    move-object/from16 v16, v15

    .line 319
    .line 320
    :goto_4
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    move-object v11, v0

    .line 327
    check-cast v11, Landroid/content/Context;

    .line 328
    .line 329
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 330
    .line 331
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v12

    .line 335
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 336
    .line 337
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDpSign()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v13

    .line 341
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 342
    .line 343
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDp_start()[Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v14

    .line 347
    iget-boolean v0, v1, Lcom/meishu/sdk/core/utils/f$a;->f:Z

    .line 348
    .line 349
    move/from16 v17, v0

    .line 350
    .line 351
    invoke-static/range {v11 .. v17}, Lcom/meishu/sdk/core/utils/p0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 352
    .line 353
    .line 354
    int-to-long v11, v6

    .line 355
    :try_start_7
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :catch_2
    move-exception v0

    .line 360
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    :goto_5
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 364
    .line 365
    .line 366
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 367
    if-nez v0, :cond_e

    .line 368
    .line 369
    :try_start_9
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 370
    .line 371
    iget-object v7, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 372
    .line 373
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    check-cast v7, Landroid/content/Context;

    .line 378
    .line 379
    iget-object v8, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    check-cast v8, Lcom/meishu/sdk/platform/ms/c;

    .line 386
    .line 387
    iget-object v9, v1, Lcom/meishu/sdk/core/utils/f$a;->d:Lcom/meishu/sdk/core/utils/m0;

    .line 388
    .line 389
    iget-boolean v9, v9, Lcom/meishu/sdk/core/utils/m0;->e:Z

    .line 390
    .line 391
    invoke-static {v0, v7, v8, v9}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 392
    .line 393
    .line 394
    goto/16 :goto_b

    .line 395
    .line 396
    :cond_9
    move v7, v10

    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :cond_a
    if-eqz v7, :cond_1

    .line 400
    .line 401
    if-nez v8, :cond_1

    .line 402
    .line 403
    :try_start_a
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 404
    .line 405
    iget-object v11, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 406
    .line 407
    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    check-cast v11, Lcom/meishu/sdk/platform/ms/c;

    .line 412
    .line 413
    invoke-static {v0, v11}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_1

    .line 418
    .line 419
    sget-object v0, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 420
    .line 421
    if-eqz v0, :cond_b

    .line 422
    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 424
    .line 425
    .line 426
    move-result-wide v11

    .line 427
    invoke-virtual {v0, v11, v12}, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->setLastTime(J)V

    .line 428
    .line 429
    .line 430
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    sget-object v11, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 435
    .line 436
    invoke-virtual {v4, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v11

    .line 440
    invoke-virtual {v0, v13, v11}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    sget-object v11, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 452
    .line 453
    invoke-virtual {v4, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    invoke-interface {v0, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    .line 463
    .line 464
    goto :goto_6

    .line 465
    :catchall_2
    move-exception v0

    .line 466
    goto :goto_9

    .line 467
    :cond_b
    :goto_6
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 468
    .line 469
    instance-of v11, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 470
    .line 471
    if-eqz v11, :cond_c

    .line 472
    .line 473
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDPSIGN()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v9

    .line 479
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 480
    .line 481
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 482
    .line 483
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    move-object/from16 v16, v0

    .line 488
    .line 489
    move-object v15, v9

    .line 490
    goto :goto_7

    .line 491
    :cond_c
    move-object v15, v9

    .line 492
    move-object/from16 v16, v15

    .line 493
    .line 494
    :goto_7
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    move-object v11, v0

    .line 501
    check-cast v11, Landroid/content/Context;

    .line 502
    .line 503
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 504
    .line 505
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 510
    .line 511
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDpSign()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v13

    .line 515
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 516
    .line 517
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDp_start()[Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v14

    .line 521
    iget-boolean v0, v1, Lcom/meishu/sdk/core/utils/f$a;->f:Z

    .line 522
    .line 523
    move/from16 v17, v0

    .line 524
    .line 525
    invoke-static/range {v11 .. v17}, Lcom/meishu/sdk/core/utils/p0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 526
    .line 527
    .line 528
    int-to-long v11, v6

    .line 529
    :try_start_b
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 530
    .line 531
    .line 532
    goto :goto_8

    .line 533
    :catch_3
    move-exception v0

    .line 534
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 535
    .line 536
    .line 537
    :goto_8
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 538
    .line 539
    .line 540
    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 541
    if-nez v0, :cond_e

    .line 542
    .line 543
    :try_start_d
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 544
    .line 545
    iget-object v7, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 546
    .line 547
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    check-cast v7, Landroid/content/Context;

    .line 552
    .line 553
    iget-object v8, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 554
    .line 555
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    check-cast v8, Lcom/meishu/sdk/platform/ms/c;

    .line 560
    .line 561
    iget-object v9, v1, Lcom/meishu/sdk/core/utils/f$a;->d:Lcom/meishu/sdk/core/utils/m0;

    .line 562
    .line 563
    iget-boolean v9, v9, Lcom/meishu/sdk/core/utils/m0;->e:Z

    .line 564
    .line 565
    invoke-static {v0, v7, v8, v9}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 566
    .line 567
    .line 568
    goto :goto_b

    .line 569
    :goto_9
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_4

    .line 570
    .line 571
    .line 572
    goto/16 :goto_1

    .line 573
    .line 574
    :catch_4
    move-exception v0

    .line 575
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_1

    .line 579
    .line 580
    :cond_d
    :goto_a
    const-string v0, "reference invalid. break"

    .line 581
    .line 582
    invoke-static {v9, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    iget-object v0, v1, Lcom/meishu/sdk/core/utils/f$a;->a:Ljava/lang/ref/SoftReference;

    .line 586
    .line 587
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    check-cast v0, Landroid/content/Context;

    .line 592
    .line 593
    iget-object v2, v1, Lcom/meishu/sdk/core/utils/f$a;->b:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 594
    .line 595
    iget-object v3, v1, Lcom/meishu/sdk/core/utils/f$a;->c:Ljava/lang/ref/SoftReference;

    .line 596
    .line 597
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v3

    .line 601
    check-cast v3, Lcom/meishu/sdk/platform/ms/c;

    .line 602
    .line 603
    iget-object v4, v1, Lcom/meishu/sdk/core/utils/f$a;->d:Lcom/meishu/sdk/core/utils/m0;

    .line 604
    .line 605
    iget-boolean v4, v4, Lcom/meishu/sdk/core/utils/m0;->e:Z

    .line 606
    .line 607
    invoke-static {v0, v2, v3, v4}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;I)V

    .line 608
    .line 609
    .line 610
    :cond_e
    :goto_b
    return-void
.end method

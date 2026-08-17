.class Lcom/anythink/network/toutiao/TTATAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:I

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/anythink/network/toutiao/TTATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/network/toutiao/TTATAdapter$b;->c:Ljava/util/Map;

    .line 8
    .line 9
    iput p5, p0, Lcom/anythink/network/toutiao/TTATAdapter$b;->d:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/anythink/network/toutiao/TTATAdapter$b;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v0, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    iget-object v0, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    .line 31
    iget-object v0, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 32
    .line 33
    const/4 v5, 0x4

    .line 34
    const/4 v6, 0x3

    .line 35
    const/4 v7, 0x2

    .line 36
    const/16 v8, 0x280

    .line 37
    .line 38
    const/4 v9, 0x1

    .line 39
    if-eqz v0, :cond_c

    .line 40
    .line 41
    const-string v12, "key_width"

    .line 42
    .line 43
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 50
    .line 51
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v12, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 58
    .line 59
    const-string v13, "tt_image_height"

    .line 60
    .line 61
    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    if-eqz v12, :cond_1

    .line 66
    .line 67
    iget-object v12, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 68
    .line 69
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object v12, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 75
    .line 76
    const-string v13, "key_height"

    .line 77
    .line 78
    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    if-eqz v12, :cond_2

    .line 83
    .line 84
    iget-object v12, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v12, 0x0

    .line 92
    :goto_1
    iget-object v13, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 93
    .line 94
    const-string v14, "tt_can_interrupt_video"

    .line 95
    .line 96
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    iget-object v14, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 101
    .line 102
    const-string v15, "tt_video_play_btn_bitmap"

    .line 103
    .line 104
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    iget-object v15, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 109
    .line 110
    const-string v10, "tt_video_play_btn_SIZE"

    .line 111
    .line 112
    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    if-eqz v12, :cond_3

    .line 119
    .line 120
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    move-object/from16 v17, v12

    .line 125
    .line 126
    :try_start_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 127
    .line 128
    .line 129
    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    double-to-int v3, v11

    .line 131
    goto :goto_3

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto :goto_2

    .line 134
    :catchall_1
    move-exception v0

    .line 135
    move-object/from16 v17, v12

    .line 136
    .line 137
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :goto_3
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 145
    .line 146
    .line 147
    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    double-to-int v4, v11

    .line 149
    goto :goto_4

    .line 150
    :catchall_2
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_3
    iget-object v0, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 156
    .line 157
    iget v0, v0, Lcom/anythink/network/toutiao/TTATAdapter;->e:I

    .line 158
    .line 159
    if-ne v0, v9, :cond_4

    .line 160
    .line 161
    const/16 v3, 0x2b2

    .line 162
    .line 163
    const/16 v4, 0x184

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_4
    if-ne v0, v7, :cond_5

    .line 167
    .line 168
    const/16 v3, 0xe4

    .line 169
    .line 170
    const/16 v4, 0x96

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    if-ne v0, v6, :cond_6

    .line 174
    .line 175
    const/16 v3, 0x500

    .line 176
    .line 177
    const/16 v4, 0x2d0

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    if-ne v0, v5, :cond_7

    .line 181
    .line 182
    const/16 v3, 0x4b0

    .line 183
    .line 184
    const/16 v4, 0x274

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    const/4 v11, 0x5

    .line 188
    if-ne v0, v11, :cond_8

    .line 189
    .line 190
    move v3, v8

    .line 191
    move v4, v3

    .line 192
    :cond_8
    :goto_4
    instance-of v0, v13, Ljava/lang/Boolean;

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    goto :goto_5

    .line 205
    :cond_9
    move v0, v9

    .line 206
    :goto_5
    instance-of v11, v14, Landroid/graphics/Bitmap;

    .line 207
    .line 208
    if-eqz v11, :cond_a

    .line 209
    .line 210
    move-object v11, v14

    .line 211
    check-cast v11, Landroid/graphics/Bitmap;

    .line 212
    .line 213
    move-object/from16 v16, v11

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    const/16 v16, 0x0

    .line 217
    .line 218
    :goto_6
    instance-of v11, v10, Ljava/lang/Integer;

    .line 219
    .line 220
    if-eqz v11, :cond_b

    .line 221
    .line 222
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    move v11, v10

    .line 231
    move-object/from16 v10, v16

    .line 232
    .line 233
    goto :goto_8

    .line 234
    :cond_b
    move-object/from16 v10, v16

    .line 235
    .line 236
    :goto_7
    const/4 v11, 0x0

    .line 237
    goto :goto_8

    .line 238
    :cond_c
    move v0, v9

    .line 239
    const/4 v10, 0x0

    .line 240
    goto :goto_7

    .line 241
    :goto_8
    iget-object v12, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 242
    .line 243
    invoke-interface {v2, v12}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    new-instance v12, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;

    .line 248
    .line 249
    iget-object v13, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 250
    .line 251
    iget-object v13, v13, Lcom/anythink/network/toutiao/TTATAdapter;->b:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v14, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->c:Ljava/util/Map;

    .line 254
    .line 255
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->b:Ljava/util/Map;

    .line 256
    .line 257
    invoke-direct {v12, v13, v14, v5}, Lcom/anythink/network/toutiao/TTATCustomAdSlotBuilder;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 258
    .line 259
    .line 260
    iget v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->d:I

    .line 261
    .line 262
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    invoke-virtual {v12, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v12, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 270
    .line 271
    .line 272
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 273
    .line 274
    iget-object v5, v5, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    .line 275
    .line 276
    const-string v13, "0"

    .line 277
    .line 278
    invoke-static {v13, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_e

    .line 283
    .line 284
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 285
    .line 286
    iget-object v5, v5, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    .line 287
    .line 288
    invoke-static {v13, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_e

    .line 293
    .line 294
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 295
    .line 296
    invoke-static {v5}, Lcom/anythink/network/toutiao/TTATAdapter;->b(Lcom/anythink/network/toutiao/TTATAdapter;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 300
    .line 301
    invoke-virtual {v5}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->isNativeMixToBanner()Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-eqz v5, :cond_d

    .line 306
    .line 307
    iget-object v3, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 308
    .line 309
    iget-object v4, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->e:Landroid/content/Context;

    .line 310
    .line 311
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->c:Ljava/util/Map;

    .line 312
    .line 313
    invoke-static {v3, v4, v5}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;)Landroid/util/Pair;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v4, Ljava/lang/Integer;

    .line 320
    .line 321
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v3, Ljava/lang/Integer;

    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 334
    .line 335
    invoke-static {v5}, Lcom/anythink/network/toutiao/TTATAdapter;->b(Lcom/anythink/network/toutiao/TTATAdapter;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move/from16 v18, v4

    .line 339
    .line 340
    move v4, v3

    .line 341
    move/from16 v3, v18

    .line 342
    .line 343
    :cond_d
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 344
    .line 345
    int-to-float v3, v3

    .line 346
    invoke-static {v5, v3}, Lcom/anythink/core/api/ATSDKUtils;->px2dip(Landroid/content/Context;F)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    int-to-float v3, v3

    .line 351
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 352
    .line 353
    int-to-float v4, v4

    .line 354
    invoke-static {v5, v4}, Lcom/anythink/core/api/ATSDKUtils;->px2dip(Landroid/content/Context;F)I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    int-to-float v4, v4

    .line 359
    invoke-virtual {v12, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$b$a;

    .line 367
    .line 368
    invoke-direct {v4, v1, v0}, Lcom/anythink/network/toutiao/TTATAdapter$b$a;-><init>(Lcom/anythink/network/toutiao/TTATAdapter$b;Z)V

    .line 369
    .line 370
    .line 371
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :cond_e
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 376
    .line 377
    iget-object v5, v5, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    .line 378
    .line 379
    const-string v14, "1"

    .line 380
    .line 381
    invoke-static {v14, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-eqz v5, :cond_10

    .line 386
    .line 387
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 388
    .line 389
    iget-object v5, v5, Lcom/anythink/network/toutiao/TTATAdapter;->c:Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {v13, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-eqz v5, :cond_10

    .line 396
    .line 397
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 398
    .line 399
    invoke-static {v5}, Lcom/anythink/network/toutiao/TTATAdapter;->b(Lcom/anythink/network/toutiao/TTATAdapter;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 403
    .line 404
    invoke-virtual {v5}, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->isNativeMixToBanner()Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-eqz v5, :cond_f

    .line 409
    .line 410
    iget-object v3, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 411
    .line 412
    iget-object v4, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->e:Landroid/content/Context;

    .line 413
    .line 414
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->c:Ljava/util/Map;

    .line 415
    .line 416
    invoke-static {v3, v4, v5}, Lcom/anythink/network/toutiao/TTATAdapter;->a(Lcom/anythink/network/toutiao/TTATAdapter;Landroid/content/Context;Ljava/util/Map;)Landroid/util/Pair;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v4, Ljava/lang/Integer;

    .line 423
    .line 424
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 425
    .line 426
    .line 427
    move-result v4

    .line 428
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v3, Ljava/lang/Integer;

    .line 431
    .line 432
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 433
    .line 434
    .line 435
    move-result v3

    .line 436
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 437
    .line 438
    invoke-static {v5}, Lcom/anythink/network/toutiao/TTATAdapter;->b(Lcom/anythink/network/toutiao/TTATAdapter;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move/from16 v18, v4

    .line 442
    .line 443
    move v4, v3

    .line 444
    move/from16 v3, v18

    .line 445
    .line 446
    :cond_f
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 447
    .line 448
    int-to-float v3, v3

    .line 449
    invoke-static {v5, v3}, Lcom/anythink/core/api/ATSDKUtils;->px2dip(Landroid/content/Context;F)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    int-to-float v3, v3

    .line 454
    iget-object v5, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->a:Landroid/content/Context;

    .line 455
    .line 456
    int-to-float v4, v4

    .line 457
    invoke-static {v5, v4}, Lcom/anythink/core/api/ATSDKUtils;->px2dip(Landroid/content/Context;F)I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    int-to-float v4, v4

    .line 462
    invoke-virtual {v12, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$b$b;

    .line 470
    .line 471
    invoke-direct {v4, v1, v0}, Lcom/anythink/network/toutiao/TTATAdapter$b$b;-><init>(Lcom/anythink/network/toutiao/TTATAdapter$b;Z)V

    .line 472
    .line 473
    .line 474
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :cond_10
    if-lez v3, :cond_11

    .line 479
    .line 480
    if-lez v4, :cond_11

    .line 481
    .line 482
    invoke-virtual {v12, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 483
    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_11
    const/16 v3, 0x140

    .line 487
    .line 488
    invoke-virtual {v12, v8, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 489
    .line 490
    .line 491
    :goto_9
    iget-object v3, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 492
    .line 493
    iget-object v3, v3, Lcom/anythink/network/toutiao/TTATAdapter;->d:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    const/4 v5, -0x1

    .line 503
    packed-switch v4, :pswitch_data_0

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :pswitch_0
    const-string v4, "4"

    .line 508
    .line 509
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    if-nez v3, :cond_12

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_12
    const/4 v5, 0x4

    .line 517
    goto :goto_a

    .line 518
    :pswitch_1
    const-string v4, "3"

    .line 519
    .line 520
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    if-nez v3, :cond_13

    .line 525
    .line 526
    goto :goto_a

    .line 527
    :cond_13
    move v5, v6

    .line 528
    goto :goto_a

    .line 529
    :pswitch_2
    const-string v4, "2"

    .line 530
    .line 531
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    if-nez v3, :cond_14

    .line 536
    .line 537
    goto :goto_a

    .line 538
    :cond_14
    move v5, v7

    .line 539
    goto :goto_a

    .line 540
    :pswitch_3
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    if-nez v3, :cond_15

    .line 545
    .line 546
    goto :goto_a

    .line 547
    :cond_15
    move v5, v9

    .line 548
    goto :goto_a

    .line 549
    :pswitch_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-nez v3, :cond_16

    .line 554
    .line 555
    goto :goto_a

    .line 556
    :cond_16
    const/4 v5, 0x0

    .line 557
    :goto_a
    packed-switch v5, :pswitch_data_1

    .line 558
    .line 559
    .line 560
    iget-object v0, v1, Lcom/anythink/network/toutiao/TTATAdapter$b;->f:Lcom/anythink/network/toutiao/TTATAdapter;

    .line 561
    .line 562
    const-string v2, ""

    .line 563
    .line 564
    const-string v3, "The Native type is not exit."

    .line 565
    .line 566
    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    goto :goto_b

    .line 570
    :pswitch_5
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$b$g;

    .line 575
    .line 576
    invoke-direct {v4, v1, v0, v10, v11}, Lcom/anythink/network/toutiao/TTATAdapter$b$g;-><init>(Lcom/anythink/network/toutiao/TTATAdapter$b;ZLandroid/graphics/Bitmap;I)V

    .line 577
    .line 578
    .line 579
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadStream(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 580
    .line 581
    .line 582
    goto :goto_b

    .line 583
    :pswitch_6
    invoke-virtual {v12, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$b$f;

    .line 591
    .line 592
    invoke-direct {v4, v1, v0, v10, v11}, Lcom/anythink/network/toutiao/TTATAdapter$b$f;-><init>(Lcom/anythink/network/toutiao/TTATAdapter$b;ZLandroid/graphics/Bitmap;I)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 596
    .line 597
    .line 598
    goto :goto_b

    .line 599
    :pswitch_7
    invoke-virtual {v12, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$b$e;

    .line 607
    .line 608
    invoke-direct {v4, v1, v0, v10, v11}, Lcom/anythink/network/toutiao/TTATAdapter$b$e;-><init>(Lcom/anythink/network/toutiao/TTATAdapter$b;ZLandroid/graphics/Bitmap;I)V

    .line 609
    .line 610
    .line 611
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    .line 612
    .line 613
    .line 614
    goto :goto_b

    .line 615
    :pswitch_8
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$b$d;

    .line 620
    .line 621
    invoke-direct {v4, v1, v0, v10, v11}, Lcom/anythink/network/toutiao/TTATAdapter$b$d;-><init>(Lcom/anythink/network/toutiao/TTATAdapter$b;ZLandroid/graphics/Bitmap;I)V

    .line 622
    .line 623
    .line 624
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V

    .line 625
    .line 626
    .line 627
    goto :goto_b

    .line 628
    :pswitch_9
    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    new-instance v4, Lcom/anythink/network/toutiao/TTATAdapter$b$c;

    .line 633
    .line 634
    invoke-direct {v4, v1, v0, v10, v11}, Lcom/anythink/network/toutiao/TTATAdapter$b$c;-><init>(Lcom/anythink/network/toutiao/TTATAdapter$b;ZLandroid/graphics/Bitmap;I)V

    .line 635
    .line 636
    .line 637
    invoke-interface {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    .line 638
    .line 639
    .line 640
    :goto_b
    return-void

    .line 641
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

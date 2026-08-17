.class public Lcom/meishu/sdk/platform/ms/a$a;
.super Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const-string v1, "click_reward_tmp_id"

    .line 4
    .line 5
    const-string v2, "shake_result"

    .line 6
    .line 7
    const-string v3, "clk_act_type"

    .line 8
    .line 9
    const-string v4, "clk_power"

    .line 10
    .line 11
    :try_start_0
    const-string v5, "broadcast_onclick"

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x2

    .line 23
    if-eqz v5, :cond_11

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/a;->c:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto/16 :goto_d

    .line 49
    .line 50
    :cond_0
    :goto_0
    const-string v0, "open_loading_page_browser"

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v8, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 58
    .line 59
    iget-object v8, v8, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 60
    .line 61
    invoke-interface {v8}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    instance-of v8, v8, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 66
    .line 67
    if-eqz v8, :cond_1

    .line 68
    .line 69
    iget-object v8, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 70
    .line 71
    iget-object v8, v8, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 72
    .line 73
    invoke-interface {v8}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    check-cast v8, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 78
    .line 79
    invoke-virtual {v8, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setRewardBrowserOpenLandingPage(Z)V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move v0, v5

    .line 94
    :goto_1
    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    :cond_3
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 105
    .line 106
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 107
    .line 108
    invoke-interface {v3}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    instance-of v3, v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 113
    .line 114
    if-eqz v3, :cond_4

    .line 115
    .line 116
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 117
    .line 118
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 119
    .line 120
    invoke-interface {v3}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 125
    .line 126
    invoke-virtual {v3, v7}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 127
    .line 128
    .line 129
    if-ltz v0, :cond_4

    .line 130
    .line 131
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 132
    .line 133
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 134
    .line 135
    invoke-interface {v3}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 140
    .line 141
    invoke-virtual {v3, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkPower(I)V

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-eqz v3, :cond_5

    .line 149
    .line 150
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 157
    .line 158
    iget-object v3, v3, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 159
    .line 160
    invoke-interface {v3}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 165
    .line 166
    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setShakeResult(Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :catch_0
    move-exception v2

    .line 171
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_d

    .line 179
    .line 180
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 185
    .line 186
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 187
    .line 188
    sget-object v2, Lcom/meishu/sdk/core/utils/h;->a:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    :try_start_3
    invoke-interface {v1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-nez v2, :cond_6

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_6
    invoke-interface {v1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    instance-of v2, v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 204
    .line 205
    if-eqz v2, :cond_7

    .line 206
    .line 207
    invoke-interface {v1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :catch_1
    move-exception v1

    .line 215
    goto :goto_4

    .line 216
    :cond_7
    move-object v1, v6

    .line 217
    :goto_3
    if-nez v1, :cond_8

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_8
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getClickExtInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v1, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->setRewardTempId(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    .line 234
    .line 235
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    .line 239
    if-eqz v1, :cond_d

    .line 240
    .line 241
    :try_start_5
    invoke-interface {v1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-nez v2, :cond_a

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_a
    invoke-interface {v1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    instance-of v2, v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 253
    .line 254
    if-eqz v2, :cond_b

    .line 255
    .line 256
    invoke-interface {v1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    move-object v6, v1

    .line 261
    check-cast v6, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :catch_2
    move-exception p2

    .line 265
    goto :goto_7

    .line 266
    :cond_b
    :goto_6
    if-nez v6, :cond_c

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_c
    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getClickExtInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1, p2, v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->setWebTempId(IZ)Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_8

    .line 281
    :goto_7
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 282
    .line 283
    .line 284
    :cond_d
    :goto_8
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 293
    .line 294
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 295
    .line 296
    invoke-interface {p2}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    move v1, v5

    .line 305
    :goto_9
    array-length v2, p2

    .line 306
    if-ge v1, v2, :cond_e

    .line 307
    .line 308
    aget-object v2, p2, v1

    .line 309
    .line 310
    iget v3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 311
    .line 312
    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 313
    .line 314
    invoke-static {v2, v3, v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    aput-object v2, p2, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 319
    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 321
    .line 322
    goto :goto_9

    .line 323
    :catchall_1
    move-exception p1

    .line 324
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    .line 326
    .line 327
    :cond_e
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 328
    .line 329
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;

    .line 330
    .line 331
    if-eqz v0, :cond_f

    .line 332
    .line 333
    const/16 p2, 0x32

    .line 334
    .line 335
    if-lt v0, p2, :cond_10

    .line 336
    .line 337
    :cond_f
    const/4 v5, 0x1

    .line 338
    :cond_10
    invoke-static {p1, v5}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_e

    .line 342
    .line 343
    :cond_11
    const-string v1, "broadcast_onreward"

    .line 344
    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_12

    .line 354
    .line 355
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 356
    .line 357
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 358
    .line 359
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    if-eqz p1, :cond_1e

    .line 368
    .line 369
    instance-of p2, p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 370
    .line 371
    if-eqz p2, :cond_1e

    .line 372
    .line 373
    check-cast p1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 374
    .line 375
    invoke-interface {p1, v6}, Lcom/meishu/sdk/core/ad/reward/a;->onReward(Ljava/util/Map;)V

    .line 376
    .line 377
    .line 378
    return-void

    .line 379
    :cond_12
    const-string v1, "broadcast_onclosed"

    .line 380
    .line 381
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_13

    .line 390
    .line 391
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 392
    .line 393
    invoke-static {p1}, Lcom/meishu/sdk/platform/ms/a;->b(Lcom/meishu/sdk/platform/ms/a;)V

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :cond_13
    const-string v1, "broadcast_on_video_complete"

    .line 398
    .line 399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_15

    .line 408
    .line 409
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 410
    .line 411
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->d:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 412
    .line 413
    if-eqz p1, :cond_14

    .line 414
    .line 415
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoCompleted()V

    .line 416
    .line 417
    .line 418
    :cond_14
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 419
    .line 420
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->o:Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;

    .line 421
    .line 422
    if-eqz p1, :cond_1e

    .line 423
    .line 424
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/fullscreenvideo/IFullScreenMediaListener;->onVideoCompleted()V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_15
    const-string v1, "broadcast_on_video_start"

    .line 429
    .line 430
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_19

    .line 439
    .line 440
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 441
    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 443
    .line 444
    .line 445
    move-result-wide v1

    .line 446
    iput-wide v1, p1, Lcom/meishu/sdk/platform/ms/a;->k:J

    .line 447
    .line 448
    const-string p1, "report_exposure"

    .line 449
    .line 450
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 455
    .line 456
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 457
    .line 458
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 468
    .line 469
    iget-wide v3, v3, Lcom/meishu/sdk/platform/ms/a;->i:J

    .line 470
    .line 471
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 478
    .line 479
    iget-wide v3, v3, Lcom/meishu/sdk/platform/ms/a;->j:J

    .line 480
    .line 481
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 488
    .line 489
    iget-wide v3, v0, Lcom/meishu/sdk/platform/ms/a;->k:J

    .line 490
    .line 491
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {p2, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 506
    .line 507
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/a;->d:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 508
    .line 509
    if-eqz p2, :cond_16

    .line 510
    .line 511
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoStart()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 512
    .line 513
    .line 514
    :cond_16
    if-nez p1, :cond_17

    .line 515
    .line 516
    :try_start_9
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 517
    .line 518
    iget-boolean p2, p1, Lcom/meishu/sdk/platform/ms/a;->h:Z

    .line 519
    .line 520
    if-nez p2, :cond_17

    .line 521
    .line 522
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 523
    .line 524
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 525
    .line 526
    .line 527
    move-result p1

    .line 528
    if-eq p1, v7, :cond_18

    .line 529
    .line 530
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 531
    .line 532
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->e:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 533
    .line 534
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    if-eqz p1, :cond_18

    .line 539
    .line 540
    goto :goto_a

    .line 541
    :catchall_2
    move-exception p1

    .line 542
    goto :goto_b

    .line 543
    :cond_17
    :goto_a
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 544
    .line 545
    invoke-static {p1}, Lcom/meishu/sdk/platform/ms/a;->a(Lcom/meishu/sdk/platform/ms/a;)V

    .line 546
    .line 547
    .line 548
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 549
    .line 550
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 551
    .line 552
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 553
    .line 554
    .line 555
    move-result-object p1

    .line 556
    if-eqz p1, :cond_18

    .line 557
    .line 558
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 559
    .line 560
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 561
    .line 562
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 567
    .line 568
    .line 569
    goto :goto_c

    .line 570
    :goto_b
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 571
    .line 572
    .line 573
    :cond_18
    :goto_c
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 574
    .line 575
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->c:Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 576
    .line 577
    if-eqz p1, :cond_1e

    .line 578
    .line 579
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_e

    .line 583
    .line 584
    :cond_19
    const-string v0, "broadcast_on_video_pause"

    .line 585
    .line 586
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-eqz v0, :cond_1a

    .line 595
    .line 596
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 597
    .line 598
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->d:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 599
    .line 600
    if-eqz p1, :cond_1e

    .line 601
    .line 602
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoPause()V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :cond_1a
    const-string v0, "broadcast_on_video_resume"

    .line 607
    .line 608
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    if-eqz v0, :cond_1b

    .line 617
    .line 618
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 619
    .line 620
    iget-object p1, p1, Lcom/meishu/sdk/platform/ms/a;->d:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 621
    .line 622
    if-eqz p1, :cond_1e

    .line 623
    .line 624
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoResume()V

    .line 625
    .line 626
    .line 627
    return-void

    .line 628
    :cond_1b
    const-string v0, "broadcast_on_video_error"

    .line 629
    .line 630
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p2

    .line 634
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 635
    .line 636
    .line 637
    move-result p2

    .line 638
    if-eqz p2, :cond_1e

    .line 639
    .line 640
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 641
    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 643
    .line 644
    .line 645
    move-result-wide v0

    .line 646
    iput-wide v0, p2, Lcom/meishu/sdk/platform/ms/a;->j:J

    .line 647
    .line 648
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 649
    .line 650
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/a;->d:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 651
    .line 652
    if-eqz p2, :cond_1c

    .line 653
    .line 654
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;->onVideoError()V

    .line 655
    .line 656
    .line 657
    :cond_1c
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 658
    .line 659
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/a;->f:Lcom/meishu/sdk/platform/ms/reward/a;

    .line 660
    .line 661
    if-eqz p2, :cond_1d

    .line 662
    .line 663
    const-string v0, "\u6fc0\u52b1\u89c6\u9891\u6e32\u67d3\u5931\u8d25"

    .line 664
    .line 665
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 666
    .line 667
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    invoke-virtual {p2, v0, v1}, Lcom/meishu/sdk/platform/ms/reward/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 672
    .line 673
    .line 674
    :cond_1d
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 675
    .line 676
    iget-boolean p2, p2, Lcom/meishu/sdk/platform/ms/a;->l:Z

    .line 677
    .line 678
    if-eqz p2, :cond_1e

    .line 679
    .line 680
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 681
    .line 682
    .line 683
    move-result-object p1

    .line 684
    iget-object p2, p0, Lcom/meishu/sdk/platform/ms/a$a;->a:Lcom/meishu/sdk/platform/ms/a;

    .line 685
    .line 686
    iget-object p2, p2, Lcom/meishu/sdk/platform/ms/a;->m:Landroid/content/BroadcastReceiver;

    .line 687
    .line 688
    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 689
    .line 690
    .line 691
    const-string p1, "RewardVideoAdAdapter"

    .line 692
    .line 693
    const-string p2, "onVideoActivityClosed: \u6fc0\u52b1\u89c6\u9891\u5e7f\u544a\u56de\u6536\u8d44\u6e90"

    .line 694
    .line 695
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 696
    .line 697
    .line 698
    return-void

    .line 699
    :goto_d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 700
    .line 701
    .line 702
    :cond_1e
    :goto_e
    return-void
.end method

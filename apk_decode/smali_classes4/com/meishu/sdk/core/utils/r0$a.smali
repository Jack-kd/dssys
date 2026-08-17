.class public Lcom/meishu/sdk/core/utils/r0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/utils/z<",
        "Lcom/meishu/sdk/core/utils/q0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/r0$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "dpstay"

    .line 2
    .line 3
    const-string v1, "happybean"

    .line 4
    .line 5
    const-string v2, "verbosity"

    .line 6
    .line 7
    const-string v3, "shakeTimeout"

    .line 8
    .line 9
    const-string v4, "dclk"

    .line 10
    .line 11
    check-cast p1, Lcom/meishu/sdk/core/utils/q0;

    .line 12
    .line 13
    :try_start_0
    iget v5, p1, Lcom/meishu/sdk/core/utils/q0;->b:I

    .line 14
    .line 15
    const/16 v6, 0xc8

    .line 16
    .line 17
    if-ne v5, v6, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/q0;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/g1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object p1, v5

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    const/16 p1, 0x130

    .line 34
    .line 35
    const-string v6, ""

    .line 36
    .line 37
    if-ne v5, p1, :cond_2

    .line 38
    .line 39
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v5, "packageKey"

    .line 44
    .line 45
    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object p1, v6

    .line 51
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_9

    .line 56
    .line 57
    new-instance v5, Lcom/google/gson/Gson;

    .line 58
    .line 59
    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 60
    .line 61
    .line 62
    const-class v6, Lcom/meishu/sdk/core/utils/PackageBean;

    .line 63
    .line 64
    invoke-virtual {v5, p1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/meishu/sdk/core/utils/PackageBean;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getDclk()Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    sput-object v6, Lcom/meishu/sdk/core/utils/r0;->d:Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getShakeTimeout()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    sput-wide v6, Lcom/meishu/sdk/core/utils/r0;->g:J

    .line 81
    .line 82
    iget-object v6, p0, Lcom/meishu/sdk/core/utils/r0$a;->a:Landroid/content/Context;

    .line 83
    .line 84
    const/4 v7, 0x1

    .line 85
    invoke-static {v6, p1, v7}, Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PackageBean;Z)V

    .line 86
    .line 87
    .line 88
    sget-object v6, Lcom/meishu/sdk/core/utils/r0;->d:Lcom/meishu/sdk/core/utils/PackageBean$DClick;

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7, v4, v6}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    sget-wide v6, Lcom/meishu/sdk/core/utils/r0;->g:J

    .line 125
    .line 126
    invoke-interface {v4, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    sget-wide v6, Lcom/meishu/sdk/core/utils/r0;->g:J

    .line 138
    .line 139
    invoke-virtual {v4, v3, v6, v7}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getVerbosity()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    sput v3, Lcom/meishu/sdk/core/utils/r0;->i:I

    .line 147
    .line 148
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getVerbosity()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getVerbosity()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {v3, v2, v4}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getHappy()Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    sput-object v2, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    .line 183
    .line 184
    if-eqz v2, :cond_3

    .line 185
    .line 186
    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    .line 204
    .line 205
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v3, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getUseHttps()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    sput v1, Lcom/meishu/sdk/core/utils/r0;->l:I

    .line 217
    .line 218
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const-string v2, "useHttps"

    .line 223
    .line 224
    sget v3, Lcom/meishu/sdk/core/utils/r0;->l:I

    .line 225
    .line 226
    invoke-virtual {v1, v2, v3}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getDpstay()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    sput v1, Lcom/meishu/sdk/core/utils/r0;->k:I

    .line 234
    .line 235
    if-lez v1, :cond_4

    .line 236
    .line 237
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    sget v2, Lcom/meishu/sdk/core/utils/r0;->k:I

    .line 246
    .line 247
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    .line 253
    .line 254
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    sget v2, Lcom/meishu/sdk/core/utils/r0;->k:I

    .line 259
    .line 260
    invoke-virtual {v1, v0, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 261
    .line 262
    .line 263
    :cond_4
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getAd()Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 268
    .line 269
    if-eqz v0, :cond_5

    .line 270
    .line 271
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const-string v1, "pack_ad"

    .line 276
    .line 277
    sget-object v2, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 278
    .line 279
    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_5
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getFieldExport()Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->n:Ljava/lang/Integer;

    .line 291
    .line 292
    if-eqz v0, :cond_6

    .line 293
    .line 294
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    const-string v1, "field_export"

    .line 299
    .line 300
    sget-object v2, Lcom/meishu/sdk/core/utils/r0;->n:Ljava/lang/Integer;

    .line 301
    .line 302
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 307
    .line 308
    .line 309
    :cond_6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getUseBrowser()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    sput v0, Lcom/meishu/sdk/core/utils/r0;->o:I

    .line 314
    .line 315
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const-string v1, "use_browser"

    .line 320
    .line 321
    sget v2, Lcom/meishu/sdk/core/utils/r0;->o:I

    .line 322
    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getDue()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    sput v0, Lcom/meishu/sdk/core/utils/r0;->s:I

    .line 331
    .line 332
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    const-string v1, "due"

    .line 337
    .line 338
    sget v2, Lcom/meishu/sdk/core/utils/r0;->s:I

    .line 339
    .line 340
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getOlp()I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    sput v0, Lcom/meishu/sdk/core/utils/r0;->q:I

    .line 348
    .line 349
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    const-string v1, "olp"

    .line 354
    .line 355
    sget v2, Lcom/meishu/sdk/core/utils/r0;->q:I

    .line 356
    .line 357
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getDefImages()Ljava/util/List;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    if-eqz v0, :cond_7

    .line 365
    .line 366
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getDefImages()Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    sget-object v1, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 371
    .line 372
    sget-object v1, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 373
    .line 374
    new-instance v2, Lcom/meishu/sdk/core/utils/s0;

    .line 375
    .line 376
    invoke-direct {v2, v0}, Lcom/meishu/sdk/core/utils/s0;-><init>(Ljava/util/List;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 380
    .line 381
    .line 382
    :cond_7
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getJbUrlPrefixes()Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    sput-object v0, Lcom/meishu/sdk/core/utils/r0;->p:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    .line 388
    const-string v1, "jbUrlPrefixes"

    .line 389
    .line 390
    if-eqz v0, :cond_8

    .line 391
    .line 392
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-nez v0, :cond_8

    .line 397
    .line 398
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    sget-object v2, Lcom/meishu/sdk/core/utils/r0;->p:Ljava/util/List;

    .line 403
    .line 404
    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto :goto_1

    .line 412
    :cond_8
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 417
    .line 418
    .line 419
    :try_start_3
    iget-object v2, v0, Lcom/meishu/sdk/core/utils/r;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 420
    .line 421
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/meishu/sdk/core/utils/r;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 425
    .line 426
    .line 427
    goto :goto_1

    .line 428
    :catch_1
    move-exception v0

    .line 429
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 430
    .line 431
    .line 432
    :goto_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getSyncSave()I

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    sput v0, Lcom/meishu/sdk/core/utils/r0;->r:I

    .line 437
    .line 438
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    const-string v1, "syncSave"

    .line 443
    .line 444
    sget v2, Lcom/meishu/sdk/core/utils/r0;->r:I

    .line 445
    .line 446
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean;->getNoldp()I

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    sput p1, Lcom/meishu/sdk/core/utils/r0;->t:I

    .line 454
    .line 455
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 456
    .line 457
    .line 458
    move-result-object p1

    .line 459
    const-string v0, "noldp"

    .line 460
    .line 461
    sget v1, Lcom/meishu/sdk/core/utils/r0;->t:I

    .line 462
    .line 463
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 464
    .line 465
    .line 466
    goto :goto_3

    .line 467
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 468
    .line 469
    .line 470
    :cond_9
    :goto_3
    return-void
.end method

.method public onFailure(Ljava/io/IOException;)V
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "packageKey"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 22
    .line 23
    .line 24
    const-class v1, Lcom/meishu/sdk/core/utils/PackageBean;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/meishu/sdk/core/utils/PackageBean;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/r0$a;->a:Landroid/content/Context;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {v0, p1, v1}, Lcom/meishu/sdk/core/utils/r0;->a(Landroid/content/Context;Lcom/meishu/sdk/core/utils/PackageBean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

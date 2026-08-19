.class public final Lcom/smartdigimkt/d4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/x/k;


# instance fields
.field public final synthetic a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/smartdigimkt/l3/a;

.field public final synthetic d:Lcom/smartdigimkt/d4/i;


# direct methods
.method public constructor <init>(Lcom/smartdigimkt/d4/i;Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;Ljava/util/Map;Lcom/smartdigimkt/l3/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartdigimkt/d4/h;->d:Lcom/smartdigimkt/d4/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/smartdigimkt/d4/h;->a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/smartdigimkt/d4/h;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/smartdigimkt/d4/h;->c:Lcom/smartdigimkt/l3/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartdigimkt/d4/h;->a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;

    .line 2
    .line 3
    if-eqz v0, :cond_16

    .line 4
    .line 5
    iget-object v0, p0, Lcom/smartdigimkt/d4/h;->d:Lcom/smartdigimkt/d4/i;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/smartdigimkt/d4/h;->b:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/smartdigimkt/d4/h;->c:Lcom/smartdigimkt/l3/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/SDKContext;->j()Z

    .line 21
    .line 22
    .line 23
    goto/16 :goto_a

    .line 24
    .line 25
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    const-string v3, "unit_id"

    .line 31
    .line 32
    iget-object v4, v2, Lcom/smartdigimkt/l3/a;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v3, "tpl_ver"

    .line 38
    .line 39
    invoke-static {}, Lcom/smartdigimkt/x/l;->a()Lcom/smartdigimkt/x/l;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    iget v3, v2, Lcom/smartdigimkt/l3/a;->q:I

    .line 51
    .line 52
    if-lez v3, :cond_1

    .line 53
    .line 54
    invoke-static {}, Lcom/smartdigimkt/f3/k;->a()Lcom/smartdigimkt/f3/k;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5, v3}, Lcom/smartdigimkt/f3/k;->b(I)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-lez v5, :cond_1

    .line 67
    .line 68
    const-string v5, "exclude_ids"

    .line 69
    .line 70
    invoke-static {v3}, Lcom/smartdigimkt/d4/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :cond_1
    :goto_0
    iget v3, v2, Lcom/smartdigimkt/l3/a;->p:I

    .line 82
    .line 83
    if-lez v3, :cond_2

    .line 84
    .line 85
    invoke-static {}, Lcom/smartdigimkt/f3/k;->a()Lcom/smartdigimkt/f3/k;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5, v3}, Lcom/smartdigimkt/f3/k;->a(I)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-lez v5, :cond_2

    .line 98
    .line 99
    sget-object v5, Lcom/smartdigimkt/d4/a;->a:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v3}, Lcom/smartdigimkt/d4/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    :cond_2
    iget v3, v2, Lcom/smartdigimkt/l3/a;->b:I

    .line 109
    .line 110
    invoke-static {v0, v1, v3}, Lcom/smartdigimkt/d4/i;->a(Lorg/json/JSONObject;Ljava/util/Map;I)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/smartdigimkt/f3/p;->b()Lcom/smartdigimkt/f3/p;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iget-object v5, v2, Lcom/smartdigimkt/l3/a;->a:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_5

    .line 127
    .line 128
    iget-object v6, v3, Lcom/smartdigimkt/f3/p;->e:Ljava/lang/Object;

    .line 129
    .line 130
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :try_start_1
    invoke-static {}, Lcom/smartdigimkt/f3/p;->c()J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    iget-wide v9, v3, Lcom/smartdigimkt/f3/p;->d:J

    .line 136
    .line 137
    cmp-long v9, v9, v7

    .line 138
    .line 139
    if-eqz v9, :cond_3

    .line 140
    .line 141
    iget-object v9, v3, Lcom/smartdigimkt/f3/p;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 144
    .line 145
    .line 146
    iput-wide v7, v3, Lcom/smartdigimkt/f3/p;->d:J

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catchall_1
    move-exception v0

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    :goto_1
    iget-object v3, v3, Lcom/smartdigimkt/f3/p;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 152
    .line 153
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Lcom/smartdigimkt/f3/r;

    .line 158
    .line 159
    if-eqz v3, :cond_4

    .line 160
    .line 161
    invoke-virtual {v3, v0}, Lcom/smartdigimkt/f3/r;->a(Lorg/json/JSONObject;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    monitor-exit v6

    .line 165
    goto :goto_3

    .line 166
    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    throw v0

    .line 168
    :cond_5
    :goto_3
    invoke-static {}, Lcom/smartdigimkt/u1/d;->a()Lcom/smartdigimkt/u1/d;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lcom/smartdigimkt/u1/d;->b()Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_6

    .line 177
    .line 178
    iget-object v3, v3, Lcom/smartdigimkt/u1/d;->a:Lcom/smartdigimkt/sdk/api/business/omsdk/IOmsdkHandler;

    .line 179
    .line 180
    invoke-interface {v3}, Lcom/smartdigimkt/sdk/api/business/omsdk/IOmsdkHandler;->getOmsdkVersion()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    goto :goto_4

    .line 185
    :cond_6
    const-string v3, ""

    .line 186
    .line 187
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-nez v5, :cond_7

    .line 192
    .line 193
    const-string v5, "om_ver"

    .line 194
    .line 195
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    const-string v5, "sensor_deny"

    .line 203
    .line 204
    invoke-virtual {v3, v5}, Lcom/smartdigimkt/sdk/core/SDKContext;->a(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const/4 v5, 0x1

    .line 209
    if-eqz v3, :cond_8

    .line 210
    .line 211
    const-string v3, "sensor_deny"

    .line 212
    .line 213
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    :cond_8
    iget v3, v2, Lcom/smartdigimkt/l3/a;->b:I

    .line 217
    .line 218
    const/4 v6, 0x3

    .line 219
    const/4 v7, 0x4

    .line 220
    if-eqz v3, :cond_c

    .line 221
    .line 222
    if-eq v3, v6, :cond_a

    .line 223
    .line 224
    if-eq v3, v7, :cond_9

    .line 225
    .line 226
    goto/16 :goto_6

    .line 227
    .line 228
    :cond_9
    const-string v1, "get_offer"

    .line 229
    .line 230
    const/4 v3, 0x2

    .line 231
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    new-instance v1, Lorg/json/JSONArray;

    .line 235
    .line 236
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 240
    .line 241
    .line 242
    const/4 v3, 0x5

    .line 243
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 244
    .line 245
    .line 246
    const-string v3, "ad_mtg_mix_type"

    .line 247
    .line 248
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_a
    const-string v3, "unit_type"

    .line 253
    .line 254
    invoke-static {v3, v1}, Lcom/smartdigimkt/c5/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-nez v4, :cond_b

    .line 263
    .line 264
    const-string v4, "unit_type"

    .line 265
    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    .line 272
    .line 273
    :cond_b
    const-string v3, "inter_type"

    .line 274
    .line 275
    invoke-static {v3, v1}, Lcom/smartdigimkt/c5/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_f

    .line 284
    .line 285
    const-string v3, "ir_type"

    .line 286
    .line 287
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_c
    const-string v3, "layout_type"

    .line 292
    .line 293
    invoke-static {v3, v1}, Lcom/smartdigimkt/c5/k;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    const-string v8, "1"

    .line 298
    .line 299
    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    if-eqz v3, :cond_e

    .line 304
    .line 305
    invoke-static {}, Lcom/smartdigimkt/x/l;->a()Lcom/smartdigimkt/x/l;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-static {v1}, Lcom/smartdigimkt/x/l;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    .line 313
    .line 314
    .line 315
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :try_start_3
    new-instance v8, Lorg/json/JSONArray;

    .line 317
    .line 318
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 322
    .line 323
    .line 324
    move-result v9

    .line 325
    :goto_5
    if-ge v4, v9, :cond_d

    .line 326
    .line 327
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 332
    .line 333
    .line 334
    add-int/lit8 v4, v4, 0x1

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_d
    const-string v1, "nv_unit_type"

    .line 338
    .line 339
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 340
    .line 341
    .line 342
    :catchall_2
    :cond_e
    if-nez v3, :cond_f

    .line 343
    .line 344
    :try_start_4
    const-string v1, "adp_accept_type"

    .line 345
    .line 346
    new-instance v3, Lorg/json/JSONArray;

    .line 347
    .line 348
    const-string v4, "[3]"

    .line 349
    .line 350
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_f
    :goto_6
    iget v1, v2, Lcom/smartdigimkt/l3/a;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 358
    .line 359
    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    .line 360
    .line 361
    const-string v4, "[1,2,3]"

    .line 362
    .line 363
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    if-eq v1, v5, :cond_10

    .line 367
    .line 368
    if-eq v1, v6, :cond_10

    .line 369
    .line 370
    if-eq v1, v7, :cond_10

    .line 371
    .line 372
    goto :goto_7

    .line 373
    :cond_10
    invoke-static {}, Lcom/smartdigimkt/x/l;->a()Lcom/smartdigimkt/x/l;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/smartdigimkt/x/l;->b()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_11

    .line 382
    .line 383
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 384
    .line 385
    .line 386
    :cond_11
    :goto_7
    const-string v1, "adp_accept_type"

    .line 387
    .line 388
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    .line 390
    .line 391
    const-string v1, "vst_m_v"

    .line 392
    .line 393
    new-instance v3, Lorg/json/JSONArray;

    .line 394
    .line 395
    const-string v4, "[1,2,3,4,5,6]"

    .line 396
    .line 397
    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 401
    .line 402
    .line 403
    :catchall_3
    :goto_8
    :try_start_6
    const-string v1, "unit_id"

    .line 404
    .line 405
    iget-object v3, v2, Lcom/smartdigimkt/l3/a;->e:Ljava/lang/String;

    .line 406
    .line 407
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    .line 409
    .line 410
    const-string v1, "ad_source_id"

    .line 411
    .line 412
    iget-object v3, v2, Lcom/smartdigimkt/l3/a;->e:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    .line 416
    .line 417
    const-string v1, "nw_firm_id"

    .line 418
    .line 419
    iget v3, v2, Lcom/smartdigimkt/l3/a;->j:I

    .line 420
    .line 421
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 422
    .line 423
    .line 424
    const-string v1, "ad_format"

    .line 425
    .line 426
    iget v3, v2, Lcom/smartdigimkt/l3/a;->b:I

    .line 427
    .line 428
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    .line 434
    .line 435
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    iget-boolean v1, v1, Lcom/smartdigimkt/sdk/core/SDKContext;->B:Z

    .line 440
    .line 441
    if-eqz v1, :cond_12

    .line 442
    .line 443
    const-string v1, "test"

    .line 444
    .line 445
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 446
    .line 447
    .line 448
    :cond_12
    const-string v1, "bidfloor"

    .line 449
    .line 450
    iget-wide v3, v2, Lcom/smartdigimkt/l3/a;->v:D

    .line 451
    .line 452
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 453
    .line 454
    .line 455
    const-string v1, "p_bidfloor"

    .line 456
    .line 457
    iget v2, v2, Lcom/smartdigimkt/l3/a;->w:I

    .line 458
    .line 459
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    .line 461
    .line 462
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    iget-object v1, v1, Lcom/smartdigimkt/sdk/core/SDKContext;->r:Lcom/smartdigimkt/f4/a;

    .line 467
    .line 468
    iget-object v1, v1, Lcom/smartdigimkt/f4/a;->b:Lorg/json/JSONArray;

    .line 469
    .line 470
    if-eqz v1, :cond_13

    .line 471
    .line 472
    const-string v2, "ecpoffer"

    .line 473
    .line 474
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 475
    .line 476
    .line 477
    :catchall_4
    :cond_13
    :try_start_7
    const-string v1, "display_manager_ver"

    .line 478
    .line 479
    invoke-static {}, Lcom/smartdigimkt/c5/j;->a()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 484
    .line 485
    .line 486
    goto :goto_b

    .line 487
    :goto_9
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->j()Z

    .line 492
    .line 493
    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_14

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    :cond_14
    :goto_a
    const/4 v0, 0x0

    .line 501
    :goto_b
    if-eqz v0, :cond_15

    .line 502
    .line 503
    invoke-static {}, Lcom/smartdigimkt/c5/h;->C()Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_15

    .line 508
    .line 509
    :try_start_8
    const-string v1, "bit_token_al_it"

    .line 510
    .line 511
    invoke-static {}, Lcom/smartdigimkt/h3/m;->b()Lcom/smartdigimkt/h3/m;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    invoke-virtual {v2}, Lcom/smartdigimkt/h3/m;->c()[Lorg/json/JSONArray;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    .line 521
    .line 522
    const-string v1, "bit_token_mk_it"

    .line 523
    .line 524
    invoke-static {}, Lcom/smartdigimkt/h3/m;->b()Lcom/smartdigimkt/h3/m;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    iget-object v2, v2, Lcom/smartdigimkt/h3/m;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 529
    .line 530
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 531
    .line 532
    .line 533
    :catchall_5
    :cond_15
    iget-object v1, p0, Lcom/smartdigimkt/d4/h;->a:Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;

    .line 534
    .line 535
    invoke-interface {v1, v0}, Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;->onComplete(Lorg/json/JSONObject;)V

    .line 536
    .line 537
    .line 538
    :cond_16
    return-void
.end method

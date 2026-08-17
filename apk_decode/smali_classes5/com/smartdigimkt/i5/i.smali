.class public final Lcom/smartdigimkt/i5/i;
.super Lcom/smartdigimkt/g5/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartdigimkt/g5/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Lcom/smartdigimkt/a5/e;
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartdigimkt/z4/m;->a()Lcom/smartdigimkt/z4/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/smartdigimkt/z4/m;->a(Ljava/lang/String;)Lcom/smartdigimkt/a5/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/smartdigimkt/a5/e;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "sdm_placement_strategy_obj"

    .line 26
    .line 27
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    instance-of v1, p1, Lorg/json/JSONObject;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    check-cast p1, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/smartdigimkt/a5/e;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/smartdigimkt/a5/e;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    const/4 p1, 0x0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_2
    invoke-static {}, Lcom/smartdigimkt/z4/m;->a()Lcom/smartdigimkt/z4/m;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, p0, v0, p1}, Lcom/smartdigimkt/z4/m;->a(Ljava/lang/String;Lcom/smartdigimkt/a5/e;Lorg/json/JSONObject;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/smartdigimkt/g5/a;)Z
    .locals 13

    .line 1
    const-string v0, "10010"

    .line 2
    .line 3
    iget-object v1, p1, Lcom/smartdigimkt/g5/a;->b:Lcom/smartdigimkt/sdk/api/SDMAdRequest;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getExtraMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v1, v2

    .line 14
    :goto_0
    const-string v3, ""

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v1, :cond_a

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_a

    .line 25
    .line 26
    const-string v6, "s2s_bid_adm"

    .line 27
    .line 28
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    if-eqz v6, :cond_a

    .line 33
    .line 34
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :try_start_0
    invoke-static {v1}, Lcom/smartdigimkt/c5/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v6, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    const-string v1, "request_id"

    .line 48
    .line 49
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    const-string v1, "S2S adm missing required field: request_id"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 66
    .line 67
    .line 68
    return v5

    .line 69
    :cond_1
    invoke-static {v6}, Lcom/smartdigimkt/o3/b;->a(Lorg/json/JSONObject;)Lcom/smartdigimkt/o3/b;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    const-string v1, "S2S adm BiddingResult parse failed"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 82
    .line 83
    .line 84
    return v5

    .line 85
    :cond_2
    iput-object v1, v3, Lcom/smartdigimkt/o3/b;->E:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v7, v3, Lcom/smartdigimkt/o3/a;->e:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-nez v7, :cond_9

    .line 94
    .line 95
    iget-object v7, v3, Lcom/smartdigimkt/o3/b;->t:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :cond_3
    iget-object v7, p1, Lcom/smartdigimkt/g5/a;->b:Lcom/smartdigimkt/sdk/api/SDMAdRequest;

    .line 106
    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    invoke-virtual {v7}, Lcom/smartdigimkt/sdk/api/SDMAdRequest;->getExtraMap()Ljava/util/Map;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_4
    iget-object v7, p1, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v7, v2}, Lcom/smartdigimkt/i5/i;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/smartdigimkt/a5/e;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    if-nez v2, :cond_5

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v2, "S2S placeStrategy is null for placementId: "

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p1, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 142
    .line 143
    .line 144
    return v5

    .line 145
    :cond_5
    invoke-virtual {v2}, Lcom/smartdigimkt/a5/e;->b()Lcom/smartdigimkt/a5/f;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    if-nez v7, :cond_6

    .line 150
    .line 151
    const-string v1, "S2S adxUnitGroupInfo is null"

    .line 152
    .line 153
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 158
    .line 159
    .line 160
    return v5

    .line 161
    :cond_6
    iget-object v8, v7, Lcom/smartdigimkt/a5/f;->k:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    if-nez v9, :cond_8

    .line 168
    .line 169
    const-string v9, "unit_id"

    .line 170
    .line 171
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_8

    .line 180
    .line 181
    const-string v9, "ad_source_id"

    .line 182
    .line 183
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_7

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_7
    iput-object v3, v7, Lcom/smartdigimkt/a5/f;->a:Lcom/smartdigimkt/o3/b;

    .line 195
    .line 196
    iget-boolean v0, v3, Lcom/smartdigimkt/o3/a;->a:Z

    .line 197
    .line 198
    invoke-virtual {v7, v3, v0}, Lcom/smartdigimkt/a5/f;->a(Lcom/smartdigimkt/o3/b;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1, v2, v7}, Lcom/smartdigimkt/l3/a;->a(Ljava/lang/String;Lcom/smartdigimkt/a5/e;Lcom/smartdigimkt/a5/f;)Lcom/smartdigimkt/l3/a;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const/4 v5, 0x2

    .line 206
    iput v5, p1, Lcom/smartdigimkt/g5/a;->k:I

    .line 207
    .line 208
    iput-object v1, p1, Lcom/smartdigimkt/g5/a;->g:Ljava/lang/String;

    .line 209
    .line 210
    iput-object v2, p1, Lcom/smartdigimkt/g5/a;->l:Lcom/smartdigimkt/a5/e;

    .line 211
    .line 212
    iput-object v7, p1, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    .line 213
    .line 214
    iput-object v0, p1, Lcom/smartdigimkt/g5/a;->n:Lcom/smartdigimkt/l3/a;

    .line 215
    .line 216
    iput-object v3, p1, Lcom/smartdigimkt/g5/a;->p:Lcom/smartdigimkt/o3/b;

    .line 217
    .line 218
    invoke-static {p1}, Lcom/smartdigimkt/c5/b0;->a(Lcom/smartdigimkt/g5/a;)Lcom/smartdigimkt/q3/a;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iput-object v0, p1, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 223
    .line 224
    return v4

    .line 225
    :cond_8
    :goto_1
    const-string v1, "S2S adm unit_id/ad_source_id mismatch placement adx unit"

    .line 226
    .line 227
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 232
    .line 233
    .line 234
    return v5

    .line 235
    :cond_9
    :goto_2
    const-string v1, "S2S adm must provide bid_id and req_url"

    .line 236
    .line 237
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 242
    .line 243
    .line 244
    return v5

    .line 245
    :catchall_0
    move-exception v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v3, "S2S adm parse failed: "

    .line 249
    .line 250
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 269
    .line 270
    .line 271
    return v5

    .line 272
    :cond_a
    if-eqz v1, :cond_b

    .line 273
    .line 274
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_b

    .line 279
    .line 280
    const-string v0, "sdm_load_data"

    .line 281
    .line 282
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    instance-of v6, v0, Landroid/os/Bundle;

    .line 287
    .line 288
    if-eqz v6, :cond_b

    .line 289
    .line 290
    check-cast v0, Landroid/os/Bundle;

    .line 291
    .line 292
    const-class v6, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;

    .line 293
    .line 294
    invoke-static {v0, v6}, Lcom/smartdigimkt/d3/b;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/smartdigimkt/sdk/core/bridge/entity/BaseInfoEntity;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_b
    move-object v0, v2

    .line 302
    :goto_3
    if-nez v0, :cond_c

    .line 303
    .line 304
    return v4

    .line 305
    :cond_c
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->isValid()Z

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    const-string v7, "10009"

    .line 310
    .line 311
    if-nez v6, :cond_d

    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->getValidCheckMessage()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v2, "It\'s request from mediation sdk, the loadInfoEntity is not valid, fail message:"

    .line 320
    .line 321
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v0, "."

    .line 328
    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-static {v7, v0}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 341
    .line 342
    .line 343
    return v5

    .line 344
    :cond_d
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->getRequestInfoEntity()Lcom/smartdigimkt/sdk/core/bridge/entity/RequestInfoEntity;

    .line 345
    .line 346
    .line 347
    move-result-object v6

    .line 348
    if-eqz v6, :cond_e

    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->getRequestInfoEntity()Lcom/smartdigimkt/sdk/core/bridge/entity/RequestInfoEntity;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-virtual {v6}, Lcom/smartdigimkt/sdk/core/bridge/entity/RequestInfoEntity;->convertToBaseAdRequestInfo()Lcom/smartdigimkt/l3/a;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    goto :goto_4

    .line 359
    :cond_e
    move-object v6, v2

    .line 360
    :goto_4
    if-nez v6, :cond_f

    .line 361
    .line 362
    const-string v0, "It\'s request from mediation sdk, the baseAdRequestInfo is not valid."

    .line 363
    .line 364
    invoke-static {v7, v0}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 369
    .line 370
    .line 371
    return v5

    .line 372
    :cond_f
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->getBiddingResultInfoEntity()Lcom/smartdigimkt/sdk/core/bridge/entity/BiddingResultInfoEntity;

    .line 373
    .line 374
    .line 375
    move-result-object v8

    .line 376
    if-eqz v8, :cond_10

    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->getBiddingResultInfoEntity()Lcom/smartdigimkt/sdk/core/bridge/entity/BiddingResultInfoEntity;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0}, Lcom/smartdigimkt/sdk/core/bridge/entity/BiddingResultInfoEntity;->converToBiddingResult()Lcom/smartdigimkt/o3/b;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    goto :goto_5

    .line 387
    :cond_10
    move-object v0, v2

    .line 388
    :goto_5
    if-nez v0, :cond_11

    .line 389
    .line 390
    const-string v0, "It\'s request from mediation sdk, the biddingResult is not valid."

    .line 391
    .line 392
    invoke-static {v7, v0}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 397
    .line 398
    .line 399
    return v5

    .line 400
    :cond_11
    iget-object v8, p1, Lcom/smartdigimkt/g5/a;->e:Ljava/lang/String;

    .line 401
    .line 402
    invoke-static {v8, v1}, Lcom/smartdigimkt/i5/i;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/smartdigimkt/a5/e;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    if-nez v8, :cond_12

    .line 407
    .line 408
    const-string v0, "It\'s request from mediation sdk, the placeStrategy is not valid."

    .line 409
    .line 410
    invoke-static {v7, v0}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 415
    .line 416
    .line 417
    return v5

    .line 418
    :cond_12
    iget v9, v6, Lcom/smartdigimkt/l3/a;->j:I

    .line 419
    .line 420
    const/16 v10, 0x23

    .line 421
    .line 422
    if-eq v9, v10, :cond_16

    .line 423
    .line 424
    const/16 v10, 0x43

    .line 425
    .line 426
    if-eq v9, v10, :cond_13

    .line 427
    .line 428
    invoke-virtual {v8}, Lcom/smartdigimkt/a5/e;->b()Lcom/smartdigimkt/a5/f;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    goto/16 :goto_8

    .line 433
    .line 434
    :cond_13
    iget-object v9, v6, Lcom/smartdigimkt/l3/a;->e:Ljava/lang/String;

    .line 435
    .line 436
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    if-eqz v10, :cond_14

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_14
    iget-object v10, v8, Lcom/smartdigimkt/a5/e;->r:Lorg/json/JSONArray;

    .line 444
    .line 445
    const/4 v11, 0x7

    .line 446
    const/16 v12, 0x8

    .line 447
    .line 448
    invoke-static {v8, v10, v11, v12}, Lcom/smartdigimkt/b5/a;->a(Lcom/smartdigimkt/a5/e;Lorg/json/JSONArray;II)Ljava/util/ArrayList;

    .line 449
    .line 450
    .line 451
    move-result-object v10

    .line 452
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    if-nez v11, :cond_19

    .line 457
    .line 458
    move v11, v5

    .line 459
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 460
    .line 461
    .line 462
    move-result v12

    .line 463
    if-ge v11, v12, :cond_19

    .line 464
    .line 465
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v12

    .line 469
    check-cast v12, Lcom/smartdigimkt/a5/f;

    .line 470
    .line 471
    iget-object v12, v12, Lcom/smartdigimkt/a5/f;->k:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 474
    .line 475
    .line 476
    move-result v12

    .line 477
    if-eqz v12, :cond_15

    .line 478
    .line 479
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    check-cast v2, Lcom/smartdigimkt/a5/f;

    .line 484
    .line 485
    goto :goto_8

    .line 486
    :cond_15
    add-int/lit8 v11, v11, 0x1

    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_16
    iget-object v9, v6, Lcom/smartdigimkt/l3/a;->e:Ljava/lang/String;

    .line 490
    .line 491
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    if-eqz v10, :cond_17

    .line 496
    .line 497
    goto :goto_8

    .line 498
    :cond_17
    iget-object v10, v8, Lcom/smartdigimkt/a5/e;->H:Ljava/util/List;

    .line 499
    .line 500
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 501
    .line 502
    .line 503
    move-result v11

    .line 504
    if-nez v11, :cond_19

    .line 505
    .line 506
    move v11, v5

    .line 507
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 508
    .line 509
    .line 510
    move-result v12

    .line 511
    if-ge v11, v12, :cond_19

    .line 512
    .line 513
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v12

    .line 517
    check-cast v12, Lcom/smartdigimkt/a5/f;

    .line 518
    .line 519
    iget-object v12, v12, Lcom/smartdigimkt/a5/f;->k:Ljava/lang/String;

    .line 520
    .line 521
    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v12

    .line 525
    if-eqz v12, :cond_18

    .line 526
    .line 527
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Lcom/smartdigimkt/a5/f;

    .line 532
    .line 533
    goto :goto_8

    .line 534
    :cond_18
    add-int/lit8 v11, v11, 0x1

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :cond_19
    :goto_8
    if-nez v2, :cond_1a

    .line 538
    .line 539
    const-string v0, "It\'s request from mediation sdk, the unitGroupInfo is not valid."

    .line 540
    .line 541
    invoke-static {v7, v0}, Lcom/smartdigimkt/k4/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/smartdigimkt/k4/a;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g5/a;->a(Lcom/smartdigimkt/k4/a;)V

    .line 546
    .line 547
    .line 548
    return v5

    .line 549
    :cond_1a
    iput-object v0, v2, Lcom/smartdigimkt/a5/f;->a:Lcom/smartdigimkt/o3/b;

    .line 550
    .line 551
    iget-boolean v5, v0, Lcom/smartdigimkt/o3/a;->a:Z

    .line 552
    .line 553
    invoke-virtual {v2, v0, v5}, Lcom/smartdigimkt/a5/f;->a(Lcom/smartdigimkt/o3/b;I)V

    .line 554
    .line 555
    .line 556
    iput v4, p1, Lcom/smartdigimkt/g5/a;->k:I

    .line 557
    .line 558
    iget-object v5, v6, Lcom/smartdigimkt/l3/a;->f:Ljava/lang/String;

    .line 559
    .line 560
    iput-object v5, p1, Lcom/smartdigimkt/g5/a;->g:Ljava/lang/String;

    .line 561
    .line 562
    iput-object v8, p1, Lcom/smartdigimkt/g5/a;->l:Lcom/smartdigimkt/a5/e;

    .line 563
    .line 564
    iput-object v2, p1, Lcom/smartdigimkt/g5/a;->m:Lcom/smartdigimkt/a5/f;

    .line 565
    .line 566
    iput-object v6, p1, Lcom/smartdigimkt/g5/a;->n:Lcom/smartdigimkt/l3/a;

    .line 567
    .line 568
    iput-object v0, p1, Lcom/smartdigimkt/g5/a;->p:Lcom/smartdigimkt/o3/b;

    .line 569
    .line 570
    invoke-static {p1}, Lcom/smartdigimkt/c5/b0;->a(Lcom/smartdigimkt/g5/a;)Lcom/smartdigimkt/q3/a;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    iput-object v0, p1, Lcom/smartdigimkt/g5/a;->s:Lcom/smartdigimkt/q3/a;

    .line 575
    .line 576
    if-eqz v1, :cond_1d

    .line 577
    .line 578
    const-string p1, "sdm_app_data"

    .line 579
    .line 580
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    instance-of v1, p1, Landroid/os/Bundle;

    .line 585
    .line 586
    if-nez v1, :cond_1b

    .line 587
    .line 588
    goto :goto_9

    .line 589
    :cond_1b
    check-cast p1, Landroid/os/Bundle;

    .line 590
    .line 591
    const-class v1, Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;

    .line 592
    .line 593
    invoke-static {p1, v1}, Lcom/smartdigimkt/d3/b;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/smartdigimkt/sdk/core/bridge/entity/BaseInfoEntity;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    check-cast p1, Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;

    .line 598
    .line 599
    if-eqz p1, :cond_1d

    .line 600
    .line 601
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;->getMediationVersion()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 606
    .line 607
    .line 608
    move-result v1

    .line 609
    if-nez v1, :cond_1d

    .line 610
    .line 611
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/bridge/entity/AppInfoEntity;->getMediationVersion()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    if-eqz p1, :cond_1c

    .line 616
    .line 617
    move-object v3, p1

    .line 618
    :cond_1c
    iput-object v3, v0, Lcom/smartdigimkt/q3/a;->w:Ljava/lang/String;

    .line 619
    .line 620
    :cond_1d
    :goto_9
    return v4
.end method

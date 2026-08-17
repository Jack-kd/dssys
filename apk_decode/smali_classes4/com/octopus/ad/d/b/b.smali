.class public Lcom/octopus/ad/d/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 4
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    const-string v0, "md5"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    const-string v0, "force"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    .line 7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    new-instance v1, Lcom/octopus/ad/utils/a$b;

    const-string v2, "liboctopus.so"

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/octopus/ad/utils/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    iget-object p1, p0, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    new-instance p2, Lcom/octopus/ad/d/b/b$1;

    invoke-direct {p2, p0}, Lcom/octopus/ad/d/b/b$1;-><init>(Lcom/octopus/ad/d/b/b;)V

    invoke-static {p1, v1, p2}, Lcom/octopus/ad/utils/a;->a(Landroid/content/Context;Lcom/octopus/ad/utils/a$b;Lcom/octopus/ad/utils/a$a;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "sdklog"

    .line 4
    .line 5
    const-string v2, "sdk"

    .line 6
    .line 7
    const-string v3, "ssl"

    .line 8
    .line 9
    const-string v4, "ipv6"

    .line 10
    .line 11
    const-string v5, "duration"

    .line 12
    .line 13
    const-string v6, "minimumMemory"

    .line 14
    .line 15
    const-string v7, "s2sDelay"

    .line 16
    .line 17
    const-string v8, "getOperator"

    .line 18
    .line 19
    const-string v9, "getBootId"

    .line 20
    .line 21
    const-string v10, "sdkList"

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1}, Lcom/octopus/ad/d/b/b;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v13

    .line 31
    if-eqz v13, :cond_0

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    new-instance v13, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v12, "canGetPkg"

    .line 41
    .line 42
    invoke-static {v13, v12}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    const-string v14, "getLauncherPkg"

    .line 47
    .line 48
    invoke-static {v13, v14}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    const-string v15, "isUseSoPkg"

    .line 53
    .line 54
    invoke-static {v13, v15}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v15

    .line 58
    invoke-static {v13, v9}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    move/from16 v16, v12

    .line 63
    .line 64
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    iput-boolean v11, v12, Lcom/octopus/ad/internal/q;->f:Z

    .line 69
    .line 70
    iget-object v12, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-static {v12, v9, v11}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v13, v8}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    iput-boolean v9, v11, Lcom/octopus/ad/internal/q;->i:Z

    .line 88
    .line 89
    iget-object v11, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-static {v11, v8, v9}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-static {v13, v7}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    iput v9, v8, Lcom/octopus/ad/internal/q;->a:I

    .line 107
    .line 108
    iget-object v8, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    iget v9, v9, Lcom/octopus/ad/internal/q;->a:I

    .line 115
    .line 116
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-static {v8, v7, v9}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    const-string v8, "retryTime"

    .line 128
    .line 129
    invoke-static {v13, v8}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    iput v8, v7, Lcom/octopus/ad/internal/q;->b:I

    .line 134
    .line 135
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    const-string v8, "filterLevel"

    .line 140
    .line 141
    invoke-static {v13, v8}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    iput v8, v7, Lcom/octopus/ad/internal/q;->e:I

    .line 146
    .line 147
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    const-string v8, "bidTime"

    .line 152
    .line 153
    invoke-static {v13, v8}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    iput v8, v7, Lcom/octopus/ad/internal/q;->c:I

    .line 158
    .line 159
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    const-string v8, "isSpeed"

    .line 164
    .line 165
    invoke-static {v13, v8}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    iput v8, v7, Lcom/octopus/ad/internal/q;->d:I

    .line 170
    .line 171
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    const-string v8, "splitNum"

    .line 176
    .line 177
    invoke-static {v13, v8}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    iput v8, v7, Lcom/octopus/ad/internal/q;->B:I

    .line 182
    .line 183
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-static {v13, v6}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    iput v8, v7, Lcom/octopus/ad/internal/q;->C:I

    .line 192
    .line 193
    iget-object v7, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    iget v8, v8, Lcom/octopus/ad/internal/q;->C:I

    .line 200
    .line 201
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-static {v7, v6, v8}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v6

    .line 212
    iget-object v8, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 213
    .line 214
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-static {v8, v5, v6}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v13, v4}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    iput-boolean v5, v6, Lcom/octopus/ad/internal/q;->h:Z

    .line 230
    .line 231
    iget-object v6, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 232
    .line 233
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v6, v4, v5}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v13, v3}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    iput-boolean v4, v5, Lcom/octopus/ad/internal/q;->g:Z

    .line 249
    .line 250
    iget-object v5, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 251
    .line 252
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-static {v5, v3, v4}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    const-string v3, "domain"

    .line 260
    .line 261
    invoke-static {v13, v3}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-nez v4, :cond_5

    .line 270
    .line 271
    new-instance v4, Lorg/json/JSONObject;

    .line 272
    .line 273
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v4, v2}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-nez v5, :cond_1

    .line 285
    .line 286
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    iput-object v3, v5, Lcom/octopus/ad/internal/q;->j:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v5, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 293
    .line 294
    invoke-static {v5, v2, v3}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    goto/16 :goto_5

    .line 300
    .line 301
    :cond_1
    :goto_0
    invoke-static {v4, v10}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const/4 v3, 0x0

    .line 306
    if-eqz v2, :cond_3

    .line 307
    .line 308
    invoke-static {v2}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    if-eqz v2, :cond_2

    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    const/4 v6, 0x1

    .line 319
    if-le v5, v6, :cond_2

    .line 320
    .line 321
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    iput-object v2, v3, Lcom/octopus/ad/internal/q;->k:Ljava/util/ArrayList;

    .line 326
    .line 327
    iget-object v3, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 328
    .line 329
    invoke-static {v3, v10, v2}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_2
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    iget-object v2, v2, Lcom/octopus/ad/internal/q;->k:Ljava/util/ArrayList;

    .line 338
    .line 339
    if-eqz v2, :cond_4

    .line 340
    .line 341
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iput-object v3, v2, Lcom/octopus/ad/internal/q;->k:Ljava/util/ArrayList;

    .line 346
    .line 347
    iget-object v2, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 348
    .line 349
    invoke-static {v2, v10}, Lcom/octopus/ad/internal/c/o;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_3
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    iget-object v2, v2, Lcom/octopus/ad/internal/q;->k:Ljava/util/ArrayList;

    .line 358
    .line 359
    if-eqz v2, :cond_4

    .line 360
    .line 361
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    iput-object v3, v2, Lcom/octopus/ad/internal/q;->k:Ljava/util/ArrayList;

    .line 366
    .line 367
    iget-object v2, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 368
    .line 369
    invoke-static {v2, v10}, Lcom/octopus/ad/internal/c/o;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :cond_4
    :goto_1
    invoke-static {v4, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-nez v3, :cond_5

    .line 381
    .line 382
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    iput-object v2, v3, Lcom/octopus/ad/internal/q;->l:Ljava/lang/String;

    .line 387
    .line 388
    iget-object v3, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 389
    .line 390
    invoke-static {v3, v0, v2}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :cond_5
    invoke-static {}, Lcom/octopus/ad/utils/a;->d()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    const-string v2, "armeabi-v7a"

    .line 398
    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    const-string v3, ""

    .line 404
    .line 405
    if-eqz v2, :cond_6

    .line 406
    .line 407
    :try_start_1
    const-string v2, "armeabi"

    .line 408
    .line 409
    goto :goto_2

    .line 410
    :cond_6
    const-string v2, "arm64-v8a"

    .line 411
    .line 412
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 413
    .line 414
    .line 415
    move-result v2

    .line 416
    if-eqz v2, :cond_7

    .line 417
    .line 418
    const-string v2, "arm64"

    .line 419
    .line 420
    goto :goto_2

    .line 421
    :cond_7
    move-object v2, v3

    .line 422
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-nez v4, :cond_8

    .line 427
    .line 428
    invoke-static {v13, v2}, Lcom/octopus/ad/internal/c/k;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-direct {v1, v2, v0}, Lcom/octopus/ad/d/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    :cond_8
    const-string v0, "dpOrUlkTrackingList"

    .line 436
    .line 437
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-static {v0}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    iput-object v0, v2, Lcom/octopus/ad/internal/q;->D:Ljava/util/ArrayList;

    .line 450
    .line 451
    const-string v0, "data"

    .line 452
    .line 453
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    new-instance v2, Lorg/json/JSONArray;

    .line 458
    .line 459
    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    new-instance v0, Ljava/util/ArrayList;

    .line 463
    .line 464
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    if-lez v4, :cond_f

    .line 472
    .line 473
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    iget v4, v4, Lcom/octopus/ad/internal/q;->B:I

    .line 478
    .line 479
    if-nez v4, :cond_e

    .line 480
    .line 481
    const/4 v4, 0x0

    .line 482
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-ge v4, v5, :cond_d

    .line 487
    .line 488
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    const-string v6, "sid"

    .line 493
    .line 494
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    const-string v7, "pkg"

    .line 499
    .line 500
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-static {v5}, Lcom/octopus/ad/d/b/i;->a(Ljava/lang/String;)Z

    .line 505
    .line 506
    .line 507
    move-result v7

    .line 508
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 509
    .line 510
    .line 511
    move-result-object v8

    .line 512
    if-eqz v8, :cond_9

    .line 513
    .line 514
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    invoke-virtual {v8}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUseAppList()Z

    .line 519
    .line 520
    .line 521
    move-result v8

    .line 522
    if-eqz v8, :cond_b

    .line 523
    .line 524
    :cond_9
    if-nez v7, :cond_a

    .line 525
    .line 526
    if-eqz v14, :cond_a

    .line 527
    .line 528
    iget-object v7, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 529
    .line 530
    invoke-static {v7, v5, v15}, Lcom/octopus/ad/d/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    :cond_a
    if-nez v7, :cond_b

    .line 535
    .line 536
    if-eqz v16, :cond_b

    .line 537
    .line 538
    iget-object v7, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 539
    .line 540
    invoke-static {v7, v5}, Lcom/octopus/ad/d/b/i;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 541
    .line 542
    .line 543
    move-result v7

    .line 544
    :cond_b
    if-eqz v7, :cond_c

    .line 545
    .line 546
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 550
    .line 551
    goto :goto_3

    .line 552
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    if-nez v2, :cond_f

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    const-string v2, "["

    .line 563
    .line 564
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    const-string v2, "]"

    .line 569
    .line 570
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    iget-object v2, v1, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    .line 575
    .line 576
    const-string v3, "codeList"

    .line 577
    .line 578
    invoke-static {v2, v3, v0}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    invoke-static {}, Lcom/octopus/ad/internal/c/a;->a()Lcom/octopus/ad/internal/c/a;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    iput-object v0, v2, Lcom/octopus/ad/internal/c/a;->F:Ljava/lang/String;

    .line 586
    .line 587
    return-void

    .line 588
    :cond_e
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    iput-object v2, v0, Lcom/octopus/ad/internal/q;->A:Lorg/json/JSONArray;

    .line 593
    .line 594
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    .line 600
    .line 601
    :cond_f
    :goto_4
    return-void

    .line 602
    :goto_5
    new-instance v2, Lcom/octopus/ad/internal/l;

    .line 603
    .line 604
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-virtual {v3}, Lcom/octopus/ad/internal/q;->k()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    const-string v4, "CFG"

    .line 613
    .line 614
    const/4 v5, 0x0

    .line 615
    invoke-direct {v2, v4, v3, v5}, Lcom/octopus/ad/internal/l;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 616
    .line 617
    .line 618
    invoke-static {v2}, Lcom/octopus/ad/internal/o;->a(Lcom/octopus/ad/internal/l;)V

    .line 619
    .line 620
    .line 621
    const-string v2, "OctopusAd"

    .line 622
    .line 623
    const-string v3, "An Exception Caught"

    .line 624
    .line 625
    invoke-static {v2, v3, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    .line 627
    .line 628
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/b/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/octopus/ad/Octopus;->isHttpsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "zyeyJkdXJhdGlvbiI6ODY0MDAsImluaXRTbyI6ZmFsc2UsImdldEJvb3RJZCI6dHJ1ZSwiZGF0YSI6W3sicGtnIjoiY29tLmJhaWR1LnNlYXJjaGJveCIsInNpZCI6IjMifSx7InBrZyI6ImNvbS5jdWJpYy5hdXRvaG9tZSIsInNpZCI6IjIifSx7InBrZyI6ImNvbS5qaW5nZG9uZy5hcHAubWFsbCIsInNpZCI6IjEifSx7InBrZyI6ImNvbS50YW9iYW8udGFvYmFvIiwic2lkIjoiNCJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAiLCJzaWQiOiI1In0seyJwa2ciOiJjb20uYWxpYmFiYS5hbmRyb2lkLnJpbWV0Iiwic2lkIjoiNiJ9LHsicGtnIjoiY29tLlVDTW9iaWxlIiwic2lkIjoiNyJ9LHsicGtnIjoiY29tLmVnLmFuZHJvaWQuQWxpcGF5R3Bob25lIiwic2lkIjoiOCJ9LHsicGtnIjoiY29tLnNhbmt1YWkubWVpdHVhbiIsInNpZCI6IjkifSx7InBrZyI6ImNvbS5zaW5hLndlaWJvIiwic2lkIjoiMTAifSx7InBrZyI6ImNvbS50YW9iYW8ubGl0ZXRhbyIsInNpZCI6IjExIn0seyJwa2ciOiJjb20udG1hbGwud2lyZWxlc3MiLCJzaWQiOiIxMiJ9LHsicGtnIjoiY29tLnRhb2Jhby5saXZlIiwic2lkIjoiMTMifSx7InBrZyI6ImNvbS56aGlodS5hbmRyb2lkIiwic2lkIjoiMTQifSx7InBrZyI6ImNvbS50ZW5jZW50LmthcmFva2UiLCJzaWQiOiIxNSJ9LHsicGtnIjoiY29tLnF1YXJrLmJyb3dzZXIiLCJzaWQiOiIxNiJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lIiwic2lkIjoiMTcifSx7InBrZyI6Im1lLmVsZSIsInNpZCI6IjE4In0seyJwa2ciOiJjb20uUXVuYXIiLCJzaWQiOiIxOSJ9LHsicGtnIjoiY29tLnh1bm1lbmcucGluZHVvZHVvIiwic2lkIjoiMjAifSx7InBrZyI6ImNvbS5zbWlsZS5naWZtYWtlciIsInNpZCI6IjIxIn0seyJwa2ciOiJjb20ua3VhaXNob3UubmVidWxhIiwic2lkIjoiMjIifSx7InBrZyI6ImNvbS5zZHUuZGlkaS5wc25nZXIiLCJzaWQiOiIyMyJ9LHsicGtnIjoiY29tLmRpZGFwaW5jaGUuYm9va2luZyIsInNpZCI6IjI0In0seyJwa2ciOiJhaXIudHYuZG91eXUuYW5kcm9pZCIsInNpZCI6IjI1In0seyJwa2ciOiJjb20ueGluZ2luLnhocyIsInNpZCI6IjI2In0seyJwa2ciOiJjb20uamQuanJhcHAiLCJzaWQiOiIyNyJ9LHsicGtnIjoiY29tLnlvdWt1LnBob25lIiwic2lkIjoiMjgifSx7InBrZyI6ImNvbS5vcHBvLnN0b3JlIiwic2lkIjoiMjkifSx7InBrZyI6ImNvbS5oZXl0YXAubWFya2V0Iiwic2lkIjoiMzAifSx7InBrZyI6ImNvbS5tZncucm9hZGJvb2siLCJzaWQiOiIzMSJ9LHsicGtnIjoiY29tLnNoaXpodWFuZy5kdWFwcCIsInNpZCI6IjMyIn0seyJwa2ciOiJjb20uYWNoaWV2by52aXBzaG9wIiwic2lkIjoiMzMifSx7InBrZyI6ImNvbS50YW91Lm1haW1haSIsInNpZCI6IjM0In0seyJwa2ciOiJjb20uc2Fua3VhaS5tZWl0dWFuLnRha2VvdXRuZXciLCJzaWQiOiIzNSJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lLmxpdGUiLCJzaWQiOiIzNiJ9LHsicGtnIjoiY29tLmFuanVrZS5hbmRyb2lkLmFwcCIsInNpZCI6IjM3In0seyJwa2ciOiJjb20uc3MuYW5kcm9pZC5hcnRpY2xlLm5ld3MiLCJzaWQiOiIzOCJ9LHsicGtnIjoiY29tLnRhb2Jhby5pZGxlZmlzaCIsInNpZCI6IjM5In0seyJwa2ciOiJjb20udWNtb2JpbGUubGl0ZSIsInNpZCI6IjQwIn0seyJwa2ciOiJjb20ueXVuY2VudGVjaG5vbG9neS5nb2Q0c29uZ3MiLCJzaWQiOiI0MSJ9LHsicGtnIjoiY29tLmZ6eWNpbmMuY2hhcmdpbmdlYXJudHJlYXN1cmUiLCJzaWQiOiI0MiJ9LHsicGtnIjoiY29tLnl1bmNlbnRlY2x0ZC5icm93c2luZ2hpZ2giLCJzaWQiOiI0MyJ9LHsicGtnIjoiY29tLm5uZGNpbmMuZ3Vlc3Npbmdzb25nbmFtZSIsInNpZCI6IjQ0In0seyJwa2ciOiJjb20uZ3JlZW5wb2ludC5hbmRyb2lkLm1jMTAwODYuYWN0aXZpdHkiLCJzaWQiOiI0NSJ9LHsicGtnIjoiY29tLnd1ZGFva291LmhpcHBvIiwic2lkIjoiNDYifSx7InBrZyI6ImNvbS5jYWluaWFvLndpcmVsZXNzIiwic2lkIjoiNDcifSx7InBrZyI6ImNvbS50YW9iYW8udHJscCIsInNpZCI6IjQ4In0seyJwa2ciOiJjb20ua2FvbGEiLCJzaWQiOiI0OSJ9LHsicGtnIjoiY29tLnRhb2Jhby5tb2JpbGUuZGlwZWwiLCJzaWQiOiI1MCJ9LHsicGtnIjoiY29tLnN1bmluZy5tb2JpbGUuZWJ1eSIsInNpZCI6IjUxIn0seyJwa2ciOiJjbi5hbWF6b24ubVNob3AuYW5kcm9pZCIsInNpZCI6IjUyIn0seyJwa2ciOiJjb20udGhlc3RvcmUubWFpbiIsInNpZCI6IjUzIn0seyJwa2ciOiJjb20uTW9iaWxlVGlja2V0Iiwic2lkIjoiNTQifSx7InBrZyI6ImNvbS5zaHVxaS5jb250cm9sbGVyIiwic2lkIjoiNTUifSx7InBrZyI6ImNvbS50YW9iYW8ubW9iaWxlLmRpcGVpIiwic2lkIjoiNTYifSx7InBrZyI6ImNvbS5xaXlpLnZpZGVvIiwic2lkIjoiNTcifSx7InBrZyI6ImN0cmlwLmFuZHJvaWQudmlldyIsInNpZCI6IjU4In0seyJwa2ciOiJjb20ubmV0ZWFzZS5jbG91ZG11c2ljIiwic2lkIjoiNTkifSx7InBrZyI6ImNvbS50aWFueWFuY2hhLnNreWV5ZSIsInNpZCI6IjYwIn0seyJwa2ciOiJjb20ua214cy5yZWFkZXIiLCJzaWQiOiI2MSJ9LHsicGtnIjoiY29tLnRhb2Jhby50cmlwIiwic2lkIjoiNjIifSx7InBrZyI6ImNvbS5hbGliYWJhLndpcmVsZXNzLmxzdHJldGFpbGVyIiwic2lkIjoiNjMifSx7InBrZyI6ImNvbS5tbWJhbmcubmVpZ2hib3Job29kIiwic2lkIjoiNjQifSx7InBrZyI6ImNvbS55YXlhLnpvbmUiLCJzaWQiOiI2NSJ9LHsicGtnIjoiY29tLmFsaWJhYmEud2lyZWxlc3MiLCJzaWQiOiI2NiJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAuY3VzdG9tIiwic2lkIjoiNjcifSx7InBrZyI6ImNvbS5rd2FpLnRoYW5vcyIsInNpZCI6IjY4In0seyJwa2ciOiJjb20ubGlhbmppYS5iZWlrZSIsInNpZCI6IjY5In0seyJwa2ciOiJjb20uYmFua2NvbW0uQmFua2NvbW0iLCJzaWQiOiI4MiJ9LHsicGtnIjoiY29tLnRhb2Jhby5ldGFvIiwic2lkIjoiODMifSx7InBrZyI6ImNvbS5kdW93YW4ubW9iaWxlIiwic2lkIjoiODQifSx7InBrZyI6ImNvbS5uZXRlYXNlLnlhbnh1YW4iLCJzaWQiOiI4NSJ9XSwiY2FuR2V0UGtnIjpmYWxzZSwiaXB2NiI6ZmFsc2UsImRvbWFpbiI6IntcInNka2xvZ1wiOlwiaHR0cHM6Ly9zZGtsb2cuemhhbmd5dXlpZG9uZy5jblwiLFwic2RrXCI6XCJodHRwczovL3Nkay56aGFuZ3l1eWlkb25nLmNuXCJ9IiwidmVyc2lvbiI6IjE3NDU1NjE0ODYzOTAiLCJzc2wiOnRydWUsImZpbHRlckxldmVsIjowfQ=="

    goto :goto_0

    :cond_0
    const-string v1, "zyeyJkdXJhdGlvbiI6ODY0MDAsImluaXRTbyI6ZmFsc2UsImdldEJvb3RJZCI6dHJ1ZSwiZGF0YSI6W3sicGtnIjoiY29tLmJhaWR1LnNlYXJjaGJveCIsInNpZCI6IjMifSx7InBrZyI6ImNvbS5jdWJpYy5hdXRvaG9tZSIsInNpZCI6IjIifSx7InBrZyI6ImNvbS5qaW5nZG9uZy5hcHAubWFsbCIsInNpZCI6IjEifSx7InBrZyI6ImNvbS50YW9iYW8udGFvYmFvIiwic2lkIjoiNCJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAiLCJzaWQiOiI1In0seyJwa2ciOiJjb20uYWxpYmFiYS5hbmRyb2lkLnJpbWV0Iiwic2lkIjoiNiJ9LHsicGtnIjoiY29tLlVDTW9iaWxlIiwic2lkIjoiNyJ9LHsicGtnIjoiY29tLmVnLmFuZHJvaWQuQWxpcGF5R3Bob25lIiwic2lkIjoiOCJ9LHsicGtnIjoiY29tLnNhbmt1YWkubWVpdHVhbiIsInNpZCI6IjkifSx7InBrZyI6ImNvbS5zaW5hLndlaWJvIiwic2lkIjoiMTAifSx7InBrZyI6ImNvbS50YW9iYW8ubGl0ZXRhbyIsInNpZCI6IjExIn0seyJwa2ciOiJjb20udG1hbGwud2lyZWxlc3MiLCJzaWQiOiIxMiJ9LHsicGtnIjoiY29tLnRhb2Jhby5saXZlIiwic2lkIjoiMTMifSx7InBrZyI6ImNvbS56aGlodS5hbmRyb2lkIiwic2lkIjoiMTQifSx7InBrZyI6ImNvbS50ZW5jZW50LmthcmFva2UiLCJzaWQiOiIxNSJ9LHsicGtnIjoiY29tLnF1YXJrLmJyb3dzZXIiLCJzaWQiOiIxNiJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lIiwic2lkIjoiMTcifSx7InBrZyI6Im1lLmVsZSIsInNpZCI6IjE4In0seyJwa2ciOiJjb20uUXVuYXIiLCJzaWQiOiIxOSJ9LHsicGtnIjoiY29tLnh1bm1lbmcucGluZHVvZHVvIiwic2lkIjoiMjAifSx7InBrZyI6ImNvbS5zbWlsZS5naWZtYWtlciIsInNpZCI6IjIxIn0seyJwa2ciOiJjb20ua3VhaXNob3UubmVidWxhIiwic2lkIjoiMjIifSx7InBrZyI6ImNvbS5zZHUuZGlkaS5wc25nZXIiLCJzaWQiOiIyMyJ9LHsicGtnIjoiY29tLmRpZGFwaW5jaGUuYm9va2luZyIsInNpZCI6IjI0In0seyJwa2ciOiJhaXIudHYuZG91eXUuYW5kcm9pZCIsInNpZCI6IjI1In0seyJwa2ciOiJjb20ueGluZ2luLnhocyIsInNpZCI6IjI2In0seyJwa2ciOiJjb20uamQuanJhcHAiLCJzaWQiOiIyNyJ9LHsicGtnIjoiY29tLnlvdWt1LnBob25lIiwic2lkIjoiMjgifSx7InBrZyI6ImNvbS5vcHBvLnN0b3JlIiwic2lkIjoiMjkifSx7InBrZyI6ImNvbS5oZXl0YXAubWFya2V0Iiwic2lkIjoiMzAifSx7InBrZyI6ImNvbS5tZncucm9hZGJvb2siLCJzaWQiOiIzMSJ9LHsicGtnIjoiY29tLnNoaXpodWFuZy5kdWFwcCIsInNpZCI6IjMyIn0seyJwa2ciOiJjb20uYWNoaWV2by52aXBzaG9wIiwic2lkIjoiMzMifSx7InBrZyI6ImNvbS50YW91Lm1haW1haSIsInNpZCI6IjM0In0seyJwa2ciOiJjb20uc2Fua3VhaS5tZWl0dWFuLnRha2VvdXRuZXciLCJzaWQiOiIzNSJ9LHsicGtnIjoiY29tLnNzLmFuZHJvaWQudWdjLmF3ZW1lLmxpdGUiLCJzaWQiOiIzNiJ9LHsicGtnIjoiY29tLmFuanVrZS5hbmRyb2lkLmFwcCIsInNpZCI6IjM3In0seyJwa2ciOiJjb20uc3MuYW5kcm9pZC5hcnRpY2xlLm5ld3MiLCJzaWQiOiIzOCJ9LHsicGtnIjoiY29tLnRhb2Jhby5pZGxlZmlzaCIsInNpZCI6IjM5In0seyJwa2ciOiJjb20udWNtb2JpbGUubGl0ZSIsInNpZCI6IjQwIn0seyJwa2ciOiJjb20ueXVuY2VudGVjaG5vbG9neS5nb2Q0c29uZ3MiLCJzaWQiOiI0MSJ9LHsicGtnIjoiY29tLmZ6eWNpbmMuY2hhcmdpbmdlYXJudHJlYXN1cmUiLCJzaWQiOiI0MiJ9LHsicGtnIjoiY29tLnl1bmNlbnRlY2x0ZC5icm93c2luZ2hpZ2giLCJzaWQiOiI0MyJ9LHsicGtnIjoiY29tLm5uZGNpbmMuZ3Vlc3Npbmdzb25nbmFtZSIsInNpZCI6IjQ0In0seyJwa2ciOiJjb20uZ3JlZW5wb2ludC5hbmRyb2lkLm1jMTAwODYuYWN0aXZpdHkiLCJzaWQiOiI0NSJ9LHsicGtnIjoiY29tLnd1ZGFva291LmhpcHBvIiwic2lkIjoiNDYifSx7InBrZyI6ImNvbS5jYWluaWFvLndpcmVsZXNzIiwic2lkIjoiNDcifSx7InBrZyI6ImNvbS50YW9iYW8udHJscCIsInNpZCI6IjQ4In0seyJwa2ciOiJjb20ua2FvbGEiLCJzaWQiOiI0OSJ9LHsicGtnIjoiY29tLnRhb2Jhby5tb2JpbGUuZGlwZWwiLCJzaWQiOiI1MCJ9LHsicGtnIjoiY29tLnN1bmluZy5tb2JpbGUuZWJ1eSIsInNpZCI6IjUxIn0seyJwa2ciOiJjbi5hbWF6b24ubVNob3AuYW5kcm9pZCIsInNpZCI6IjUyIn0seyJwa2ciOiJjb20udGhlc3RvcmUubWFpbiIsInNpZCI6IjUzIn0seyJwa2ciOiJjb20uTW9iaWxlVGlja2V0Iiwic2lkIjoiNTQifSx7InBrZyI6ImNvbS5zaHVxaS5jb250cm9sbGVyIiwic2lkIjoiNTUifSx7InBrZyI6ImNvbS50YW9iYW8ubW9iaWxlLmRpcGVpIiwic2lkIjoiNTYifSx7InBrZyI6ImNvbS5xaXlpLnZpZGVvIiwic2lkIjoiNTcifSx7InBrZyI6ImN0cmlwLmFuZHJvaWQudmlldyIsInNpZCI6IjU4In0seyJwa2ciOiJjb20ubmV0ZWFzZS5jbG91ZG11c2ljIiwic2lkIjoiNTkifSx7InBrZyI6ImNvbS50aWFueWFuY2hhLnNreWV5ZSIsInNpZCI6IjYwIn0seyJwa2ciOiJjb20ua214cy5yZWFkZXIiLCJzaWQiOiI2MSJ9LHsicGtnIjoiY29tLnRhb2Jhby50cmlwIiwic2lkIjoiNjIifSx7InBrZyI6ImNvbS5hbGliYWJhLndpcmVsZXNzLmxzdHJldGFpbGVyIiwic2lkIjoiNjMifSx7InBrZyI6ImNvbS5tbWJhbmcubmVpZ2hib3Job29kIiwic2lkIjoiNjQifSx7InBrZyI6ImNvbS55YXlhLnpvbmUiLCJzaWQiOiI2NSJ9LHsicGtnIjoiY29tLmFsaWJhYmEud2lyZWxlc3MiLCJzaWQiOiI2NiJ9LHsicGtnIjoiY29tLmF1dG9uYXZpLm1pbmltYXAuY3VzdG9tIiwic2lkIjoiNjcifSx7InBrZyI6ImNvbS5rd2FpLnRoYW5vcyIsInNpZCI6IjY4In0seyJwa2ciOiJjb20ubGlhbmppYS5iZWlrZSIsInNpZCI6IjY5In0seyJwa2ciOiJjb20uYmFua2NvbW0uQmFua2NvbW0iLCJzaWQiOiI4MiJ9LHsicGtnIjoiY29tLnRhb2Jhby5ldGFvIiwic2lkIjoiODMifSx7InBrZyI6ImNvbS5kdW93YW4ubW9iaWxlIiwic2lkIjoiODQifSx7InBrZyI6ImNvbS5uZXRlYXNlLnlhbnh1YW4iLCJzaWQiOiI4NSJ9XSwiY2FuR2V0UGtnIjpmYWxzZSwiaXB2NiI6ZmFsc2UsImRvbWFpbiI6IntcInNka2xvZ1wiOlwiaHR0cDovL3Nka2xvZy56aGFuZ3l1eWlkb25nLmNuXCIsXCJzZGtcIjpcImh0dHA6Ly9zZGsuemhhbmd5dXlpZG9uZy5jblwifSIsInZlcnNpb24iOiIxNzQ1NTYxNDg2MzkwIiwic3NsIjpmYWxzZSwiZmlsdGVyTGV2ZWwiOjB9"

    :goto_0
    const-string v2, "responseBody"

    invoke-static {v0, v2, v1}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 3
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/d/b/b;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

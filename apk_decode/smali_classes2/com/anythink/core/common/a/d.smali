.class public final Lcom/anythink/core/common/a/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/h/r;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/anythink/core/common/a/d;->b(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/h/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/anythink/core/common/h/r;
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/anythink/core/common/d/i$e;->e:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    const-string v3, "seatbid"

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    move-object p1, v2

    .line 22
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v4, Lcom/anythink/core/common/h/r;

    .line 32
    .line 33
    invoke-direct {v4}, Lcom/anythink/core/common/h/r;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Lcom/anythink/core/common/h/w;->I(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v4, p1}, Lcom/anythink/core/common/h/w;->Q(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/r;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p0, "oid"

    .line 54
    .line 55
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->j(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "c_id"

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->k(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "pkg"

    .line 72
    .line 73
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->w(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string p0, "title"

    .line 81
    .line 82
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->l(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string p0, "desc"

    .line 90
    .line 91
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->m(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p0, "rating"

    .line 99
    .line 100
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->i(I)V

    .line 105
    .line 106
    .line 107
    const-string p0, "icon_u"

    .line 108
    .line 109
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->n(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string p0, "full_u"

    .line 117
    .line 118
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->p(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string p0, "unit_type"

    .line 126
    .line 127
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->g(I)V

    .line 132
    .line 133
    .line 134
    const-string p0, "tp_logo_u"

    .line 135
    .line 136
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->q(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string p0, "cta"

    .line 144
    .line 145
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->r(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string p0, "video_u"

    .line 153
    .line 154
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->s(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string p0, "video_l"

    .line 162
    .line 163
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    int-to-long p0, p0

    .line 168
    invoke-virtual {v4, p0, p1}, Lcom/anythink/core/common/h/bl;->a(J)V

    .line 169
    .line 170
    .line 171
    const-string p0, "video_r"

    .line 172
    .line 173
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->X(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    const-string p0, "ec_u"

    .line 181
    .line 182
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->Y(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string p0, "store_u"

    .line 190
    .line 191
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->t(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string p0, "link_type"

    .line 199
    .line 200
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->h(I)V

    .line 205
    .line 206
    .line 207
    const-string p0, "click_u"

    .line 208
    .line 209
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->v(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string p0, "deeplink"

    .line 217
    .line 218
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->u(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string p0, "crt_type"

    .line 226
    .line 227
    const/4 p1, 0x1

    .line 228
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->s(I)V

    .line 233
    .line 234
    .line 235
    const-string p0, "img_list"

    .line 236
    .line 237
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->Z(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string p0, "banner_xhtml"

    .line 245
    .line 246
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->aa(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string p0, "offer_firm_id"

    .line 254
    .line 255
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->f(I)V

    .line 260
    .line 261
    .line 262
    const-string p0, "jump_url"

    .line 263
    .line 264
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 269
    .line 270
    .line 271
    :try_start_2
    const-string p0, "sdk_resp"

    .line 272
    .line 273
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-nez v5, :cond_2

    .line 282
    .line 283
    new-instance v5, Lorg/json/JSONObject;

    .line 284
    .line 285
    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string p0, "data"

    .line 289
    .line 290
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/r;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .line 296
    .line 297
    :catchall_0
    :cond_2
    :try_start_3
    const-string p0, "app_name"

    .line 298
    .line 299
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->ab(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string p0, "publisher"

    .line 307
    .line 308
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->x(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    const-string p0, "app_version"

    .line 316
    .line 317
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->y(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    const-string p0, "privacy"

    .line 325
    .line 326
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->z(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const-string p0, "permission"

    .line 334
    .line 335
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->A(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string p0, "app_desc"

    .line 343
    .line 344
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->c(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const-string p0, "mtr_ver"

    .line 352
    .line 353
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p0

    .line 357
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->h(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const-string p0, "o_im_cap_sw"

    .line 361
    .line 362
    const/4 v5, 0x2

    .line 363
    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 364
    .line 365
    .line 366
    move-result p0

    .line 367
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->t(I)V

    .line 368
    .line 369
    .line 370
    const-string p0, "o_cl_cap_sw"

    .line 371
    .line 372
    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 373
    .line 374
    .line 375
    move-result p0

    .line 376
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->u(I)V

    .line 377
    .line 378
    .line 379
    const-string p0, "c_im_cap_sw"

    .line 380
    .line 381
    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->v(I)V

    .line 386
    .line 387
    .line 388
    const-string p0, "c_cl_cap_sw"

    .line 389
    .line 390
    invoke-virtual {v2, p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 391
    .line 392
    .line 393
    move-result p0

    .line 394
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->w(I)V

    .line 395
    .line 396
    .line 397
    const/16 p0, 0x43

    .line 398
    .line 399
    if-ne p2, p0, :cond_3

    .line 400
    .line 401
    invoke-virtual {v4, v5}, Lcom/anythink/core/common/h/r;->a(I)V

    .line 402
    .line 403
    .line 404
    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {v4, p1}, Lcom/anythink/core/common/h/r;->a(I)V

    .line 406
    .line 407
    .line 408
    :goto_0
    const-string p0, "ctrl"

    .line 409
    .line 410
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    invoke-static {p0}, Lcom/anythink/core/common/h/bm;->u(Ljava/lang/String;)Lcom/anythink/core/common/h/bm;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->a(Lcom/anythink/core/common/h/y;)V

    .line 419
    .line 420
    .line 421
    const-string p0, "tk"

    .line 422
    .line 423
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    invoke-static {p0}, Lcom/anythink/core/common/h/bn;->a(Ljava/lang/String;)Lcom/anythink/core/common/h/bn;

    .line 428
    .line 429
    .line 430
    move-result-object p0

    .line 431
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->a(Lcom/anythink/core/common/h/bn;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 432
    .line 433
    .line 434
    :try_start_4
    new-instance p0, Lorg/json/JSONObject;

    .line 435
    .line 436
    const-string v6, "nw_info"

    .line 437
    .line 438
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-direct {p0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    const-string v6, "app_id"

    .line 446
    .line 447
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-virtual {v4, v6}, Lcom/anythink/core/common/h/bl;->S(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    const-string v6, "app_key"

    .line 455
    .line 456
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    invoke-virtual {v4, v6}, Lcom/anythink/core/common/h/bl;->T(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    const-string v6, "unit_id"

    .line 464
    .line 465
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->U(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 470
    .line 471
    .line 472
    :catchall_1
    :try_start_5
    const-string p0, "dsp_id"

    .line 473
    .line 474
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->V(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    const-string p0, "dsp_oid"

    .line 482
    .line 483
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->W(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    const-string p0, "fca"

    .line 491
    .line 492
    const/4 v6, -0x1

    .line 493
    invoke-virtual {v2, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->q(I)V

    .line 498
    .line 499
    .line 500
    const-string p0, "install_sw"

    .line 501
    .line 502
    invoke-virtual {v2, p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/bl;->r(I)V

    .line 507
    .line 508
    .line 509
    const-string p0, "wv_ctrl"

    .line 510
    .line 511
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->F(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    const-string p0, "adp_type"

    .line 519
    .line 520
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    move-result p0

    .line 524
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->e(I)V

    .line 525
    .line 526
    .line 527
    const-string p0, "offer_html"

    .line 528
    .line 529
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->f(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    const-string p0, "offer_url"

    .line 537
    .line 538
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->g(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    const-string p0, "wx_username"

    .line 546
    .line 547
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p0

    .line 551
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->d(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const-string p0, "wx_path"

    .line 555
    .line 556
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object p0

    .line 560
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->e(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    const-string p0, "o_w"

    .line 564
    .line 565
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    move-result p0

    .line 569
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->c(I)V

    .line 570
    .line 571
    .line 572
    const-string p0, "o_h"

    .line 573
    .line 574
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    move-result p0

    .line 578
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->d(I)V

    .line 579
    .line 580
    .line 581
    const-string p0, "return_flag"

    .line 582
    .line 583
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 584
    .line 585
    .line 586
    move-result p0

    .line 587
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/r;->b(I)V

    .line 588
    .line 589
    .line 590
    const-string p0, "mraid_u"

    .line 591
    .line 592
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->G(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    const/16 p0, 0x42

    .line 600
    .line 601
    if-ne p2, p0, :cond_6

    .line 602
    .line 603
    invoke-virtual {v4}, Lcom/anythink/core/common/h/w;->r()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p0

    .line 607
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 608
    .line 609
    .line 610
    move-result p0

    .line 611
    if-nez p0, :cond_6

    .line 612
    .line 613
    const-string p0, "dp_package"

    .line 614
    .line 615
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->B(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 623
    .line 624
    .line 625
    move-result p2

    .line 626
    if-eqz p2, :cond_4

    .line 627
    .line 628
    const/4 v5, 0x3

    .line 629
    goto :goto_1

    .line 630
    :cond_4
    invoke-static {}, Lcom/anythink/core/common/d/s;->b()Lcom/anythink/core/common/d/s;

    .line 631
    .line 632
    .line 633
    move-result-object p2

    .line 634
    invoke-virtual {p2}, Lcom/anythink/core/common/d/s;->g()Landroid/content/Context;

    .line 635
    .line 636
    .line 637
    move-result-object p2

    .line 638
    invoke-static {p2, p0}, Lcom/anythink/core/common/v/p;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 639
    .line 640
    .line 641
    move-result p0

    .line 642
    if-eqz p0, :cond_5

    .line 643
    .line 644
    move v5, p1

    .line 645
    :cond_5
    :goto_1
    invoke-virtual {v4, v5}, Lcom/anythink/core/common/h/w;->j(I)V

    .line 646
    .line 647
    .line 648
    :cond_6
    const-string p0, "adm"

    .line 649
    .line 650
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object p0

    .line 654
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->H(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    const-string p0, "cr_m"

    .line 658
    .line 659
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 660
    .line 661
    .line 662
    move-result p0

    .line 663
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->o(I)V

    .line 664
    .line 665
    .line 666
    const-string p0, "scr_m"

    .line 667
    .line 668
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 669
    .line 670
    .line 671
    move-result p0

    .line 672
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->p(I)V

    .line 673
    .line 674
    .line 675
    const-string p0, "img_w"

    .line 676
    .line 677
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 678
    .line 679
    .line 680
    move-result p0

    .line 681
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->m(I)V

    .line 682
    .line 683
    .line 684
    const-string p0, "img_h"

    .line 685
    .line 686
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 687
    .line 688
    .line 689
    move-result p0

    .line 690
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->n(I)V

    .line 691
    .line 692
    .line 693
    const-string p0, "video_w"

    .line 694
    .line 695
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 696
    .line 697
    .line 698
    move-result p0

    .line 699
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->k(I)V

    .line 700
    .line 701
    .line 702
    const-string p0, "video_h"

    .line 703
    .line 704
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 705
    .line 706
    .line 707
    move-result p0

    .line 708
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->l(I)V

    .line 709
    .line 710
    .line 711
    const-string p0, "a_info"

    .line 712
    .line 713
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object p0

    .line 717
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->K(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    const-string p0, "a_privacy"

    .line 721
    .line 722
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object p0

    .line 726
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->L(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    const-string p0, "a_info_url"

    .line 730
    .line 731
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object p0

    .line 735
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->J(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    const-string p0, "fast_u"

    .line 739
    .line 740
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object p0

    .line 744
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->N(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    const-string p0, "market_u"

    .line 748
    .line 749
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object p0

    .line 753
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->M(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    const-string p0, "d_c_u"

    .line 757
    .line 758
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object p0

    .line 762
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->O(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    const-string p0, "om_ids"

    .line 766
    .line 767
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object p0

    .line 771
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->P(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    const-string p0, "p_pkg"

    .line 775
    .line 776
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object p0

    .line 780
    invoke-virtual {v4, p0}, Lcom/anythink/core/common/h/w;->R(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 781
    .line 782
    .line 783
    return-object v4

    .line 784
    :catchall_2
    return-object v1
.end method

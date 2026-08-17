.class public abstract Lcom/smartdigimkt/f3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;IZ)Lcom/smartdigimkt/m3/b;
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    const-string v0, "data"

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "seatbid"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    move-object p1, v0

    .line 20
    :cond_1
    const-string v0, "seatbid"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Lcom/smartdigimkt/m3/b;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/smartdigimkt/m3/b;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->c0:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-object p2, v2, Lcom/smartdigimkt/m3/c;->c0:Ljava/lang/String;

    .line 50
    .line 51
    :goto_0
    const-string p1, "oid"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->a:Ljava/lang/String;

    .line 58
    .line 59
    const-string p1, "c_id"

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->b:Ljava/lang/String;

    .line 66
    .line 67
    const-string p1, "pkg"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->m:Ljava/lang/String;

    .line 74
    .line 75
    const-string p1, "title"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->c:Ljava/lang/String;

    .line 82
    .line 83
    const-string p1, "desc"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->d:Ljava/lang/String;

    .line 90
    .line 91
    const-string p1, "rating"

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    const-string p1, "icon_u"

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->e:Ljava/lang/String;

    .line 103
    .line 104
    const-string p1, "full_u"

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->f:Ljava/lang/String;

    .line 111
    .line 112
    const-string p1, "unit_type"

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iput p1, v2, Lcom/smartdigimkt/m3/c;->n:I

    .line 119
    .line 120
    const-string p1, "tp_logo_u"

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->g:Ljava/lang/String;

    .line 127
    .line 128
    const-string p1, "cta"

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->h:Ljava/lang/String;

    .line 135
    .line 136
    const-string p1, "video_u"

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->i:Ljava/lang/String;

    .line 143
    .line 144
    const-string p1, "video_l"

    .line 145
    .line 146
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    int-to-long p1, p1

    .line 151
    iput-wide p1, v2, Lcom/smartdigimkt/m3/k;->e0:J

    .line 152
    .line 153
    const-string p1, "video_r"

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    const-string p1, "ec_u"

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iput-object p1, v2, Lcom/smartdigimkt/m3/k;->f0:Ljava/lang/String;

    .line 165
    .line 166
    const-string p1, "store_u"

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->j:Ljava/lang/String;

    .line 173
    .line 174
    const-string p1, "link_type"

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    iput p1, v2, Lcom/smartdigimkt/m3/c;->o:I

    .line 181
    .line 182
    const-string p1, "click_u"

    .line 183
    .line 184
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->l:Ljava/lang/String;

    .line 189
    .line 190
    const-string p1, "deeplink"

    .line 191
    .line 192
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->k:Ljava/lang/String;

    .line 197
    .line 198
    const-string p1, "crt_type"

    .line 199
    .line 200
    const/4 p2, 0x1

    .line 201
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    iput p1, v2, Lcom/smartdigimkt/m3/k;->g0:I

    .line 206
    .line 207
    const-string p1, "img_list"

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, v2, Lcom/smartdigimkt/m3/k;->h0:Ljava/lang/String;

    .line 214
    .line 215
    const-string p1, "banner_xhtml"

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    const-string p1, "offer_firm_id"

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    iput p1, v2, Lcom/smartdigimkt/m3/c;->p:I

    .line 227
    .line 228
    const-string p1, "jump_url"

    .line 229
    .line 230
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 235
    .line 236
    :try_start_1
    const-string p1, "sdk_resp"

    .line 237
    .line 238
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-nez v3, :cond_3

    .line 247
    .line 248
    new-instance v3, Lorg/json/JSONObject;

    .line 249
    .line 250
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    const-string p1, "data"

    .line 254
    .line 255
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iput-object p1, v2, Lcom/smartdigimkt/m3/b;->v0:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .line 261
    :catchall_0
    :cond_3
    :try_start_2
    const-string p1, "app_name"

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iput-object p1, v2, Lcom/smartdigimkt/m3/k;->j0:Ljava/lang/String;

    .line 268
    .line 269
    const-string p1, "publisher"

    .line 270
    .line 271
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->r:Ljava/lang/String;

    .line 276
    .line 277
    const-string p1, "app_version"

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->s:Ljava/lang/String;

    .line 284
    .line 285
    const-string p1, "privacy"

    .line 286
    .line 287
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->t:Ljava/lang/String;

    .line 292
    .line 293
    const-string p1, "permission"

    .line 294
    .line 295
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->u:Ljava/lang/String;

    .line 300
    .line 301
    const-string p1, "app_desc"

    .line 302
    .line 303
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->v:Ljava/lang/String;

    .line 308
    .line 309
    const-string p1, "mtr_ver"

    .line 310
    .line 311
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    const-string p1, "o_im_cap_sw"

    .line 315
    .line 316
    const/4 v3, 0x2

    .line 317
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    iput p1, v2, Lcom/smartdigimkt/m3/k;->k0:I

    .line 322
    .line 323
    const-string p1, "o_cl_cap_sw"

    .line 324
    .line 325
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    iput p1, v2, Lcom/smartdigimkt/m3/k;->l0:I

    .line 330
    .line 331
    const-string p1, "c_im_cap_sw"

    .line 332
    .line 333
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    iput p1, v2, Lcom/smartdigimkt/m3/k;->m0:I

    .line 338
    .line 339
    const-string p1, "c_cl_cap_sw"

    .line 340
    .line 341
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    iput p1, v2, Lcom/smartdigimkt/m3/k;->n0:I

    .line 346
    .line 347
    const/16 p1, 0x43

    .line 348
    .line 349
    if-ne p3, p1, :cond_4

    .line 350
    .line 351
    iput v3, v2, Lcom/smartdigimkt/m3/b;->w0:I

    .line 352
    .line 353
    goto :goto_1

    .line 354
    :cond_4
    iput p2, v2, Lcom/smartdigimkt/m3/b;->w0:I

    .line 355
    .line 356
    :goto_1
    const-string p1, "ctrl"

    .line 357
    .line 358
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-static {p1}, Lcom/smartdigimkt/m3/l;->a(Lorg/json/JSONObject;)Lcom/smartdigimkt/m3/l;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->w:Lcom/smartdigimkt/m3/e;

    .line 367
    .line 368
    const-string p1, "tk"

    .line 369
    .line 370
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {p1}, Lcom/smartdigimkt/m3/m;->a(Lorg/json/JSONObject;)Lcom/smartdigimkt/m3/m;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    iput-object p1, v2, Lcom/smartdigimkt/m3/k;->i0:Lcom/smartdigimkt/m3/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 379
    .line 380
    :try_start_3
    const-string p1, "nw_info"

    .line 381
    .line 382
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    if-eqz p1, :cond_5

    .line 387
    .line 388
    const-string v4, "app_id"

    .line 389
    .line 390
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    const-string v4, "app_key"

    .line 394
    .line 395
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    const-string v4, "unit_id"

    .line 399
    .line 400
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 401
    .line 402
    .line 403
    :catchall_1
    :cond_5
    :try_start_4
    const-string p1, "dsp_id"

    .line 404
    .line 405
    const-string v4, ""

    .line 406
    .line 407
    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    iput-object p1, v2, Lcom/smartdigimkt/m3/k;->o0:Ljava/lang/String;

    .line 412
    .line 413
    const-string p1, "dsp_oid"

    .line 414
    .line 415
    const-string v4, ""

    .line 416
    .line 417
    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    iput-object p1, v2, Lcom/smartdigimkt/m3/k;->p0:Ljava/lang/String;

    .line 422
    .line 423
    const-string p1, "fca"

    .line 424
    .line 425
    const/4 v4, -0x1

    .line 426
    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    iput p1, v2, Lcom/smartdigimkt/m3/k;->q0:I

    .line 431
    .line 432
    sget-object p1, Lcom/smartdigimkt/c5/o;->d:Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    iput p1, v2, Lcom/smartdigimkt/m3/k;->r0:I

    .line 439
    .line 440
    const-string p1, "wv_ctrl"

    .line 441
    .line 442
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->y:Ljava/lang/String;

    .line 447
    .line 448
    const-string p1, "adp_type"

    .line 449
    .line 450
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    iput p1, v2, Lcom/smartdigimkt/m3/c;->z:I

    .line 455
    .line 456
    const-string p1, "offer_html"

    .line 457
    .line 458
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->A:Ljava/lang/String;

    .line 463
    .line 464
    const-string p1, "offer_url"

    .line 465
    .line 466
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->B:Ljava/lang/String;

    .line 471
    .line 472
    const-string p1, "wx_username"

    .line 473
    .line 474
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->C:Ljava/lang/String;

    .line 479
    .line 480
    const-string p1, "wx_path"

    .line 481
    .line 482
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->D:Ljava/lang/String;

    .line 487
    .line 488
    const-string p1, "o_w"

    .line 489
    .line 490
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    move-result p1

    .line 494
    iput p1, v2, Lcom/smartdigimkt/m3/c;->E:I

    .line 495
    .line 496
    const-string p1, "o_h"

    .line 497
    .line 498
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result p1

    .line 502
    iput p1, v2, Lcom/smartdigimkt/m3/c;->F:I

    .line 503
    .line 504
    if-eqz p4, :cond_6

    .line 505
    .line 506
    const-string p1, "return_flag"

    .line 507
    .line 508
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    .line 510
    .line 511
    :cond_6
    const-string p1, "return_flag"

    .line 512
    .line 513
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    move-result p1

    .line 517
    iput p1, v2, Lcom/smartdigimkt/m3/b;->x0:I

    .line 518
    .line 519
    const-string p1, "mraid_u"

    .line 520
    .line 521
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->P:Ljava/lang/String;

    .line 526
    .line 527
    const/16 p1, 0x42

    .line 528
    .line 529
    if-ne p3, p1, :cond_9

    .line 530
    .line 531
    iget-object p1, v2, Lcom/smartdigimkt/m3/c;->k:Ljava/lang/String;

    .line 532
    .line 533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 534
    .line 535
    .line 536
    move-result p1

    .line 537
    if-nez p1, :cond_9

    .line 538
    .line 539
    const-string p1, "dp_package"

    .line 540
    .line 541
    const-string p3, ""

    .line 542
    .line 543
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->O:Ljava/lang/String;

    .line 548
    .line 549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 550
    .line 551
    .line 552
    move-result p3

    .line 553
    if-eqz p3, :cond_7

    .line 554
    .line 555
    const/4 p1, 0x3

    .line 556
    iput p1, v2, Lcom/smartdigimkt/m3/c;->N:I

    .line 557
    .line 558
    goto :goto_2

    .line 559
    :cond_7
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 560
    .line 561
    .line 562
    move-result-object p3

    .line 563
    invoke-virtual {p3}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    .line 564
    .line 565
    .line 566
    move-result-object p3

    .line 567
    invoke-static {p3, p1}, Lcom/smartdigimkt/c5/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 568
    .line 569
    .line 570
    move-result p1

    .line 571
    if-eqz p1, :cond_8

    .line 572
    .line 573
    move v3, p2

    .line 574
    :cond_8
    iput v3, v2, Lcom/smartdigimkt/m3/c;->N:I

    .line 575
    .line 576
    :cond_9
    :goto_2
    const-string p1, "adm"

    .line 577
    .line 578
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->Q:Ljava/lang/String;

    .line 583
    .line 584
    const-string p1, "cr_m"

    .line 585
    .line 586
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 587
    .line 588
    .line 589
    const-string p1, "img_w"

    .line 590
    .line 591
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 592
    .line 593
    .line 594
    move-result p1

    .line 595
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 596
    :try_start_5
    iput p1, v2, Lcom/smartdigimkt/m3/c;->I:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 597
    .line 598
    :try_start_6
    monitor-exit v2

    .line 599
    const-string p1, "img_h"

    .line 600
    .line 601
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 602
    .line 603
    .line 604
    move-result p1

    .line 605
    invoke-virtual {v2, p1}, Lcom/smartdigimkt/m3/c;->a(I)V

    .line 606
    .line 607
    .line 608
    const-string p1, "video_w"

    .line 609
    .line 610
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 611
    .line 612
    .line 613
    move-result p1

    .line 614
    iput p1, v2, Lcom/smartdigimkt/m3/c;->K:I

    .line 615
    .line 616
    const-string p1, "video_h"

    .line 617
    .line 618
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 619
    .line 620
    .line 621
    move-result p1

    .line 622
    iput p1, v2, Lcom/smartdigimkt/m3/c;->L:I

    .line 623
    .line 624
    const-string p1, "a_info"

    .line 625
    .line 626
    const-string p2, ""

    .line 627
    .line 628
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object p1

    .line 632
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->U:Ljava/lang/String;

    .line 633
    .line 634
    const-string p1, "a_privacy"

    .line 635
    .line 636
    const-string p2, ""

    .line 637
    .line 638
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->V:Ljava/lang/String;

    .line 643
    .line 644
    const-string p1, "a_info_url"

    .line 645
    .line 646
    const-string p2, ""

    .line 647
    .line 648
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->T:Ljava/lang/String;

    .line 653
    .line 654
    const-string p1, "fast_u"

    .line 655
    .line 656
    const-string p2, ""

    .line 657
    .line 658
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->Z:Ljava/lang/String;

    .line 663
    .line 664
    const-string p1, "market_u"

    .line 665
    .line 666
    const-string p2, ""

    .line 667
    .line 668
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->Y:Ljava/lang/String;

    .line 673
    .line 674
    const-string p1, "d_c_u"

    .line 675
    .line 676
    const-string p2, ""

    .line 677
    .line 678
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->a0:Ljava/lang/String;

    .line 683
    .line 684
    const-string p1, "om_ids"

    .line 685
    .line 686
    const-string p2, ""

    .line 687
    .line 688
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->b0:Ljava/lang/String;

    .line 693
    .line 694
    const-string p1, "p_pkg"

    .line 695
    .line 696
    const-string p2, ""

    .line 697
    .line 698
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    iput-object p1, v2, Lcom/smartdigimkt/m3/c;->d0:Ljava/lang/String;

    .line 703
    .line 704
    return-object v2

    .line 705
    :catchall_2
    move-exception p1

    .line 706
    monitor-exit v2

    .line 707
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 708
    :catchall_3
    return-object p0
.end method

.class public final Lcom/kwad/sdk/core/b/a/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/core/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/d<",
        "Lcom/kwad/sdk/core/response/model/AdTemplate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static l(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "mOriginJString"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v1, ""

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    const-string v0, "posId"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->posId:J

    .line 37
    .line 38
    const-string v0, "adStyle"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adStyle:I

    .line 45
    .line 46
    const-string v0, "type"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    .line 53
    .line 54
    const-string v0, "subType"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->subType:I

    .line 61
    .line 62
    const-string v0, "defaultType"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->defaultType:I

    .line 69
    .line 70
    const-string v0, "contentType"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->contentType:I

    .line 77
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    .line 84
    .line 85
    const-string v0, "adInfo"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-ge v2, v3, :cond_2

    .line 99
    .line 100
    new-instance v3, Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 101
    .line 102
    invoke-direct {v3}, Lcom/kwad/sdk/core/response/model/AdInfo;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 110
    .line 111
    .line 112
    iget-object v4, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    new-instance v0, Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 121
    .line 122
    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/LiveInfo;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 126
    .line 127
    const-string v2, "liveInfo"

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "impAdExtra"

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->impAdExtra:Ljava/lang/String;

    .line 143
    .line 144
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->impAdExtra:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_3

    .line 157
    .line 158
    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->impAdExtra:Ljava/lang/String;

    .line 159
    .line 160
    :cond_3
    const-string v2, "llsid"

    .line 161
    .line 162
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v2

    .line 166
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->llsid:J

    .line 167
    .line 168
    const-string v2, "mIsFromContent"

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsFromContent:Z

    .line 175
    .line 176
    const-string v2, "extra"

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->extra:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->extra:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_4

    .line 195
    .line 196
    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->extra:Ljava/lang/String;

    .line 197
    .line 198
    :cond_4
    const-string v2, "mUniqueId"

    .line 199
    .line 200
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mUniqueId:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mUniqueId:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_5

    .line 217
    .line 218
    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mUniqueId:Ljava/lang/String;

    .line 219
    .line 220
    :cond_5
    const-string v2, "mBidEcpm"

    .line 221
    .line 222
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:J

    .line 227
    .line 228
    new-instance v2, Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 229
    .line 230
    invoke-direct {v2}, Lcom/kwad/sdk/internal/api/SceneImpl;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 234
    .line 235
    const-string v3, "mAdScene"

    .line 236
    .line 237
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 242
    .line 243
    .line 244
    const-string v2, "realShowType"

    .line 245
    .line 246
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    iput v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    .line 251
    .line 252
    const-string v2, "mInitVoiceStatus"

    .line 253
    .line 254
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iput v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    .line 259
    .line 260
    const-string v2, "mMediaPlayerType"

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    iput v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mMediaPlayerType:I

    .line 267
    .line 268
    new-instance v2, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 269
    .line 270
    invoke-direct {v2}, Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;-><init>()V

    .line 271
    .line 272
    .line 273
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 274
    .line 275
    const-string v3, "mVideoPlayerStatus"

    .line 276
    .line 277
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 282
    .line 283
    .line 284
    new-instance v2, Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 285
    .line 286
    invoke-direct {v2}, Lcom/kwad/sdk/core/response/model/LiveDetailReward;-><init>()V

    .line 287
    .line 288
    .line 289
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mLiveDetailRewardFromAdLive:Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 290
    .line 291
    const-string v3, "mLiveDetailRewardFromAdLive"

    .line 292
    .line 293
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 298
    .line 299
    .line 300
    new-instance v2, Ljava/lang/Long;

    .line 301
    .line 302
    const-string v3, "-1"

    .line 303
    .line 304
    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 308
    .line 309
    .line 310
    move-result-wide v4

    .line 311
    const-string v2, "mOutClickTimeParam"

    .line 312
    .line 313
    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 314
    .line 315
    .line 316
    move-result-wide v4

    .line 317
    iput-wide v4, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOutClickTimeParam:J

    .line 318
    .line 319
    new-instance v2, Ljava/lang/Long;

    .line 320
    .line 321
    invoke-direct {v2, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 325
    .line 326
    .line 327
    move-result-wide v2

    .line 328
    const-string v4, "mVisibleTimeParam"

    .line 329
    .line 330
    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 331
    .line 332
    .line 333
    move-result-wide v2

    .line 334
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVisibleTimeParam:J

    .line 335
    .line 336
    const-string v2, "mIsLeftSlipStatus"

    .line 337
    .line 338
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    iput v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsLeftSlipStatus:I

    .line 343
    .line 344
    const-string v2, "mPhotoResponseType"

    .line 345
    .line 346
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    iput v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPhotoResponseType:I

    .line 351
    .line 352
    new-instance v2, Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 353
    .line 354
    invoke-direct {v2}, Lcom/kwad/sdk/core/response/model/PageInfo;-><init>()V

    .line 355
    .line 356
    .line 357
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 358
    .line 359
    const-string v3, "mPageInfo"

    .line 360
    .line 361
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 366
    .line 367
    .line 368
    new-instance v2, Ljava/lang/Boolean;

    .line 369
    .line 370
    const-string v3, "false"

    .line 371
    .line 372
    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    const-string v4, "mIsForceJumpLandingPage"

    .line 380
    .line 381
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsForceJumpLandingPage:Z

    .line 386
    .line 387
    const-string v2, "mIsAudioEnable"

    .line 388
    .line 389
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 394
    .line 395
    const-string v2, "mRewardVerifyCalled"

    .line 396
    .line 397
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mRewardVerifyCalled:Z

    .line 402
    .line 403
    const-string v2, "isWebViewDownload"

    .line 404
    .line 405
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isWebViewDownload:Z

    .line 410
    .line 411
    const-string v2, "watched"

    .line 412
    .line 413
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->watched:Z

    .line 418
    .line 419
    const-string v2, "swipeAngle"

    .line 420
    .line 421
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    iput v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->swipeAngle:I

    .line 426
    .line 427
    const-string v2, "converted"

    .line 428
    .line 429
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->converted:Z

    .line 434
    .line 435
    new-instance v2, Ljava/lang/Boolean;

    .line 436
    .line 437
    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    const-string v3, "fromCache"

    .line 445
    .line 446
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->fromCache:Z

    .line 451
    .line 452
    const-string v2, "requestStartTime"

    .line 453
    .line 454
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 455
    .line 456
    .line 457
    move-result-wide v2

    .line 458
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->requestStartTime:J

    .line 459
    .line 460
    const-string v2, "loadDataTime"

    .line 461
    .line 462
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 463
    .line 464
    .line 465
    move-result-wide v2

    .line 466
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->loadDataTime:J

    .line 467
    .line 468
    const-string v2, "showStartTime"

    .line 469
    .line 470
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 471
    .line 472
    .line 473
    move-result-wide v2

    .line 474
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->showStartTime:J

    .line 475
    .line 476
    const-string v2, "addStartTime"

    .line 477
    .line 478
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 479
    .line 480
    .line 481
    move-result-wide v2

    .line 482
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->addStartTime:J

    .line 483
    .line 484
    const-string v2, "showTime"

    .line 485
    .line 486
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 487
    .line 488
    .line 489
    move-result-wide v2

    .line 490
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->showTime:J

    .line 491
    .line 492
    const-string v2, "notNetworkRequest"

    .line 493
    .line 494
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->notNetworkRequest:Z

    .line 499
    .line 500
    const-string v2, "downloadDuration"

    .line 501
    .line 502
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 503
    .line 504
    .line 505
    move-result-wide v2

    .line 506
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadDuration:J

    .line 507
    .line 508
    const-string v2, "adLoadTotalTime"

    .line 509
    .line 510
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 511
    .line 512
    .line 513
    move-result-wide v2

    .line 514
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adLoadTotalTime:J

    .line 515
    .line 516
    const-string v2, "adShowStartTimeStamp"

    .line 517
    .line 518
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 519
    .line 520
    .line 521
    move-result-wide v2

    .line 522
    iput-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adShowStartTimeStamp:J

    .line 523
    .line 524
    new-instance v2, Lcom/kwad/sdk/core/response/model/AdStatusInfo;

    .line 525
    .line 526
    invoke-direct {v2}, Lcom/kwad/sdk/core/response/model/AdStatusInfo;-><init>()V

    .line 527
    .line 528
    .line 529
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdStatusInfo:Lcom/kwad/sdk/core/response/model/AdStatusInfo;

    .line 530
    .line 531
    const-string v3, "mAdStatusInfo"

    .line 532
    .line 533
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 538
    .line 539
    .line 540
    new-instance v2, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    .line 541
    .line 542
    invoke-direct {v2}, Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;-><init>()V

    .line 543
    .line 544
    .line 545
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adVideoPreCacheConfig:Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    .line 546
    .line 547
    const-string v3, "adVideoPreCacheConfig"

    .line 548
    .line 549
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    invoke-virtual {v2, v3}, Lcom/kwad/sdk/core/response/a/a;->parseJson(Lorg/json/JSONObject;)V

    .line 554
    .line 555
    .line 556
    const-string v2, "isNativeRewardPreview"

    .line 557
    .line 558
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isNativeRewardPreview:Z

    .line 563
    .line 564
    const-string v2, "mInstallApkFromSDK"

    .line 565
    .line 566
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInstallApkFromSDK:Z

    .line 571
    .line 572
    const-string v2, "mInstallApkFormUser"

    .line 573
    .line 574
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInstallApkFormUser:Z

    .line 579
    .line 580
    const-string v2, "mClickOpenAppStore"

    .line 581
    .line 582
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    iput-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mClickOpenAppStore:Z

    .line 587
    .line 588
    const-string v2, "mDataLoadTraceElement"

    .line 589
    .line 590
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataLoadTraceElement:Ljava/lang/String;

    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    iget-object v3, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataLoadTraceElement:Ljava/lang/String;

    .line 601
    .line 602
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    if-eqz v2, :cond_6

    .line 607
    .line 608
    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataLoadTraceElement:Ljava/lang/String;

    .line 609
    .line 610
    :cond_6
    const-string v2, "mDataCacheTraceElement"

    .line 611
    .line 612
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    iput-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataCacheTraceElement:Ljava/lang/String;

    .line 617
    .line 618
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataCacheTraceElement:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-eqz v0, :cond_7

    .line 629
    .line 630
    iput-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataCacheTraceElement:Ljava/lang/String;

    .line 631
    .line 632
    :cond_7
    new-instance v0, Ljava/lang/Integer;

    .line 633
    .line 634
    const-string v1, "3"

    .line 635
    .line 636
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    const-string v1, "downLoadType"

    .line 644
    .line 645
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    iput v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    .line 650
    .line 651
    const-string v0, "hasInnerEcFailed"

    .line 652
    .line 653
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    iput-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->hasInnerEcFailed:Z

    .line 658
    .line 659
    const-string v0, "isDoAuth"

    .line 660
    .line 661
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 662
    .line 663
    .line 664
    move-result p1

    .line 665
    iput-boolean p1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isDoAuth:Z

    .line 666
    .line 667
    return-void
.end method

.method private static m(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "mOriginJString"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOriginJString:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->posId:J

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    cmp-long v0, v2, v4

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v0, "posId"

    .line 36
    .line 37
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adStyle:I

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const-string v2, "adStyle"

    .line 45
    .line 46
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    :cond_3
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->type:I

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    const-string v2, "type"

    .line 54
    .line 55
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->subType:I

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    const-string v2, "subType"

    .line 63
    .line 64
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    :cond_5
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->defaultType:I

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    const-string v2, "defaultType"

    .line 72
    .line 73
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    :cond_6
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->contentType:I

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    const-string v2, "contentType"

    .line 81
    .line 82
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    :cond_7
    const-string v0, "adInfo"

    .line 86
    .line 87
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    .line 88
    .line 89
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    const-string v0, "liveInfo"

    .line 93
    .line 94
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->liveInfo:Lcom/kwad/sdk/core/response/model/LiveInfo;

    .line 95
    .line 96
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->impAdExtra:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_8

    .line 108
    .line 109
    const-string v0, "impAdExtra"

    .line 110
    .line 111
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->impAdExtra:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->llsid:J

    .line 117
    .line 118
    cmp-long v0, v2, v4

    .line 119
    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    const-string v0, "llsid"

    .line 123
    .line 124
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 125
    .line 126
    .line 127
    :cond_9
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsFromContent:Z

    .line 128
    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    const-string v2, "mIsFromContent"

    .line 132
    .line 133
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 134
    .line 135
    .line 136
    :cond_a
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->extra:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v0, :cond_b

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_b

    .line 145
    .line 146
    const-string v0, "extra"

    .line 147
    .line 148
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->extra:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mUniqueId:Ljava/lang/String;

    .line 154
    .line 155
    if-eqz v0, :cond_c

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_c

    .line 162
    .line 163
    const-string v0, "mUniqueId"

    .line 164
    .line 165
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mUniqueId:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_c
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mBidEcpm:J

    .line 171
    .line 172
    cmp-long v0, v2, v4

    .line 173
    .line 174
    if-eqz v0, :cond_d

    .line 175
    .line 176
    const-string v0, "mBidEcpm"

    .line 177
    .line 178
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 179
    .line 180
    .line 181
    :cond_d
    const-string v0, "mAdScene"

    .line 182
    .line 183
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdScene:Lcom/kwad/sdk/internal/api/SceneImpl;

    .line 184
    .line 185
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 186
    .line 187
    .line 188
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->realShowType:I

    .line 189
    .line 190
    if-eqz v0, :cond_e

    .line 191
    .line 192
    const-string v2, "realShowType"

    .line 193
    .line 194
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    :cond_e
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInitVoiceStatus:I

    .line 198
    .line 199
    if-eqz v0, :cond_f

    .line 200
    .line 201
    const-string v2, "mInitVoiceStatus"

    .line 202
    .line 203
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    :cond_f
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mMediaPlayerType:I

    .line 207
    .line 208
    if-eqz v0, :cond_10

    .line 209
    .line 210
    const-string v2, "mMediaPlayerType"

    .line 211
    .line 212
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    :cond_10
    const-string v0, "mVideoPlayerStatus"

    .line 216
    .line 217
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVideoPlayerStatus:Lcom/kwad/sdk/core/response/model/VideoPlayerStatus;

    .line 218
    .line 219
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 220
    .line 221
    .line 222
    const-string v0, "mLiveDetailRewardFromAdLive"

    .line 223
    .line 224
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mLiveDetailRewardFromAdLive:Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 225
    .line 226
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 227
    .line 228
    .line 229
    const-string v0, "mOutClickTimeParam"

    .line 230
    .line 231
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mOutClickTimeParam:J

    .line 232
    .line 233
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 234
    .line 235
    .line 236
    const-string v0, "mVisibleTimeParam"

    .line 237
    .line 238
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mVisibleTimeParam:J

    .line 239
    .line 240
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 241
    .line 242
    .line 243
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsLeftSlipStatus:I

    .line 244
    .line 245
    if-eqz v0, :cond_11

    .line 246
    .line 247
    const-string v2, "mIsLeftSlipStatus"

    .line 248
    .line 249
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    :cond_11
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPhotoResponseType:I

    .line 253
    .line 254
    if-eqz v0, :cond_12

    .line 255
    .line 256
    const-string v2, "mPhotoResponseType"

    .line 257
    .line 258
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    :cond_12
    const-string v0, "mPageInfo"

    .line 262
    .line 263
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPageInfo:Lcom/kwad/sdk/core/response/model/PageInfo;

    .line 264
    .line 265
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 266
    .line 267
    .line 268
    const-string v0, "mIsForceJumpLandingPage"

    .line 269
    .line 270
    iget-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsForceJumpLandingPage:Z

    .line 271
    .line 272
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mIsAudioEnable:Z

    .line 276
    .line 277
    if-eqz v0, :cond_13

    .line 278
    .line 279
    const-string v2, "mIsAudioEnable"

    .line 280
    .line 281
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 282
    .line 283
    .line 284
    :cond_13
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mRewardVerifyCalled:Z

    .line 285
    .line 286
    if-eqz v0, :cond_14

    .line 287
    .line 288
    const-string v2, "mRewardVerifyCalled"

    .line 289
    .line 290
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 291
    .line 292
    .line 293
    :cond_14
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isWebViewDownload:Z

    .line 294
    .line 295
    if-eqz v0, :cond_15

    .line 296
    .line 297
    const-string v2, "isWebViewDownload"

    .line 298
    .line 299
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 300
    .line 301
    .line 302
    :cond_15
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->watched:Z

    .line 303
    .line 304
    if-eqz v0, :cond_16

    .line 305
    .line 306
    const-string v2, "watched"

    .line 307
    .line 308
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 309
    .line 310
    .line 311
    :cond_16
    iget v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->swipeAngle:I

    .line 312
    .line 313
    if-eqz v0, :cond_17

    .line 314
    .line 315
    const-string v2, "swipeAngle"

    .line 316
    .line 317
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    :cond_17
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->converted:Z

    .line 321
    .line 322
    if-eqz v0, :cond_18

    .line 323
    .line 324
    const-string v2, "converted"

    .line 325
    .line 326
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 327
    .line 328
    .line 329
    :cond_18
    const-string v0, "fromCache"

    .line 330
    .line 331
    iget-boolean v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->fromCache:Z

    .line 332
    .line 333
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 334
    .line 335
    .line 336
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->requestStartTime:J

    .line 337
    .line 338
    cmp-long v0, v2, v4

    .line 339
    .line 340
    if-eqz v0, :cond_19

    .line 341
    .line 342
    const-string v0, "requestStartTime"

    .line 343
    .line 344
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 345
    .line 346
    .line 347
    :cond_19
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->loadDataTime:J

    .line 348
    .line 349
    cmp-long v0, v2, v4

    .line 350
    .line 351
    if-eqz v0, :cond_1a

    .line 352
    .line 353
    const-string v0, "loadDataTime"

    .line 354
    .line 355
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 356
    .line 357
    .line 358
    :cond_1a
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->showStartTime:J

    .line 359
    .line 360
    cmp-long v0, v2, v4

    .line 361
    .line 362
    if-eqz v0, :cond_1b

    .line 363
    .line 364
    const-string v0, "showStartTime"

    .line 365
    .line 366
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 367
    .line 368
    .line 369
    :cond_1b
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->addStartTime:J

    .line 370
    .line 371
    cmp-long v0, v2, v4

    .line 372
    .line 373
    if-eqz v0, :cond_1c

    .line 374
    .line 375
    const-string v0, "addStartTime"

    .line 376
    .line 377
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 378
    .line 379
    .line 380
    :cond_1c
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->showTime:J

    .line 381
    .line 382
    cmp-long v0, v2, v4

    .line 383
    .line 384
    if-eqz v0, :cond_1d

    .line 385
    .line 386
    const-string v0, "showTime"

    .line 387
    .line 388
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 389
    .line 390
    .line 391
    :cond_1d
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->notNetworkRequest:Z

    .line 392
    .line 393
    if-eqz v0, :cond_1e

    .line 394
    .line 395
    const-string v2, "notNetworkRequest"

    .line 396
    .line 397
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 398
    .line 399
    .line 400
    :cond_1e
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadDuration:J

    .line 401
    .line 402
    cmp-long v0, v2, v4

    .line 403
    .line 404
    if-eqz v0, :cond_1f

    .line 405
    .line 406
    const-string v0, "downloadDuration"

    .line 407
    .line 408
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 409
    .line 410
    .line 411
    :cond_1f
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adLoadTotalTime:J

    .line 412
    .line 413
    cmp-long v0, v2, v4

    .line 414
    .line 415
    if-eqz v0, :cond_20

    .line 416
    .line 417
    const-string v0, "adLoadTotalTime"

    .line 418
    .line 419
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 420
    .line 421
    .line 422
    :cond_20
    iget-wide v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adShowStartTimeStamp:J

    .line 423
    .line 424
    cmp-long v0, v2, v4

    .line 425
    .line 426
    if-eqz v0, :cond_21

    .line 427
    .line 428
    const-string v0, "adShowStartTimeStamp"

    .line 429
    .line 430
    invoke-static {p1, v0, v2, v3}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 431
    .line 432
    .line 433
    :cond_21
    const-string v0, "mAdStatusInfo"

    .line 434
    .line 435
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mAdStatusInfo:Lcom/kwad/sdk/core/response/model/AdStatusInfo;

    .line 436
    .line 437
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 438
    .line 439
    .line 440
    const-string v0, "adVideoPreCacheConfig"

    .line 441
    .line 442
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->adVideoPreCacheConfig:Lcom/kwad/sdk/core/response/model/AdVideoPreCacheConfig;

    .line 443
    .line 444
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    .line 445
    .line 446
    .line 447
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isNativeRewardPreview:Z

    .line 448
    .line 449
    if-eqz v0, :cond_22

    .line 450
    .line 451
    const-string v2, "isNativeRewardPreview"

    .line 452
    .line 453
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 454
    .line 455
    .line 456
    :cond_22
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInstallApkFromSDK:Z

    .line 457
    .line 458
    if-eqz v0, :cond_23

    .line 459
    .line 460
    const-string v2, "mInstallApkFromSDK"

    .line 461
    .line 462
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 463
    .line 464
    .line 465
    :cond_23
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mInstallApkFormUser:Z

    .line 466
    .line 467
    if-eqz v0, :cond_24

    .line 468
    .line 469
    const-string v2, "mInstallApkFormUser"

    .line 470
    .line 471
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 472
    .line 473
    .line 474
    :cond_24
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mClickOpenAppStore:Z

    .line 475
    .line 476
    if-eqz v0, :cond_25

    .line 477
    .line 478
    const-string v2, "mClickOpenAppStore"

    .line 479
    .line 480
    invoke-static {p1, v2, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 481
    .line 482
    .line 483
    :cond_25
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataLoadTraceElement:Ljava/lang/String;

    .line 484
    .line 485
    if-eqz v0, :cond_26

    .line 486
    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-nez v0, :cond_26

    .line 492
    .line 493
    const-string v0, "mDataLoadTraceElement"

    .line 494
    .line 495
    iget-object v2, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataLoadTraceElement:Ljava/lang/String;

    .line 496
    .line 497
    invoke-static {p1, v0, v2}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    :cond_26
    iget-object v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataCacheTraceElement:Ljava/lang/String;

    .line 501
    .line 502
    if-eqz v0, :cond_27

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-nez v0, :cond_27

    .line 509
    .line 510
    const-string v0, "mDataCacheTraceElement"

    .line 511
    .line 512
    iget-object v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDataCacheTraceElement:Ljava/lang/String;

    .line 513
    .line 514
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    :cond_27
    const-string v0, "downLoadType"

    .line 518
    .line 519
    iget v1, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downLoadType:I

    .line 520
    .line 521
    invoke-static {p1, v0, v1}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 522
    .line 523
    .line 524
    iget-boolean v0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->hasInnerEcFailed:Z

    .line 525
    .line 526
    if-eqz v0, :cond_28

    .line 527
    .line 528
    const-string v1, "hasInnerEcFailed"

    .line 529
    .line 530
    invoke-static {p1, v1, v0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 531
    .line 532
    .line 533
    :cond_28
    iget-boolean p0, p0, Lcom/kwad/sdk/core/response/model/AdTemplate;->isDoAuth:Z

    .line 534
    .line 535
    if-eqz p0, :cond_29

    .line 536
    .line 537
    const-string v0, "isDoAuth"

    .line 538
    .line 539
    invoke-static {p1, v0, p0}, Lcom/kwad/sdk/utils/ac;->putValue(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 540
    .line 541
    .line 542
    :cond_29
    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/ax;->l(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic b(Lcom/kwad/sdk/core/b;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/b/a/ax;->m(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

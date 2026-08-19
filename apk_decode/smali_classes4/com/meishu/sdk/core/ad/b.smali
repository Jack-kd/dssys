.class public abstract Lcom/meishu/sdk/core/ad/b;
.super Lcom/meishu/sdk/core/loader/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/meishu/sdk/core/loader/IAdLoadListener;",
        ">",
        "Lcom/meishu/sdk/core/loader/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseFullScreenVideoAdLoader"


# instance fields
.field private isMute:Z

.field private mediaViewIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/b;->mediaViewIdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public addRewardMediaViewLocalId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/b;->mediaViewIdList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public createMeishuAdDelegate(Landroid/content/Context;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 3

    .line 1
    new-instance p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 2
    .line 3
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/nativ/f;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/f$a;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/platform/ms/f;->a()Lcom/meishu/sdk/platform/ms/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/b;->getAppId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_appid()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxAppId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScale_type()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScaleType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setEventUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWinUrl()[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWinUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLossUrl()[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setLossUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAction_desc()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActionDesc(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScheme()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScheme(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDynamicMap()Ljava/util/HashMap;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDynamicMap(Ljava/util/HashMap;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFieldExport()Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFieldExport(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAdg()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdg(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAdp()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDefImage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDefImage(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDefault_coord()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDefaultCoord(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDpsign()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDpSign(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_ext()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActExt(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getUob()Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setUob(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getRs()Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setRs(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDPSIGN()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDPSIGN(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReward_tmp_url()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setRewardTmpUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReward_tmp_type()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setRewardTmpType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReward_tmp_time()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setRewardTmpTime(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getRewardTmpId()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setRewardTmpId(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLoadedTime()J

    .line 246
    .line 247
    .line 248
    move-result-wide v0

    .line 249
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setLoadedTime(J)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_type()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_count()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerCount(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_delay()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerDelay(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 284
    .line 285
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_area()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClkArea(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index2()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex2(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExpire_timestamp()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExpireTimestamp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 324
    .line 325
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setEcpm(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDClickData(Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 344
    .line 345
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_type()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 354
    .line 355
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAd_type()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCbc()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCBC(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 374
    .line 375
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getNop()I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setNOP(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 384
    .line 385
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_code()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_code(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 394
    .line 395
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_ext()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_ext(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 404
    .line 405
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setReqId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 414
    .line 415
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_id()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 424
    .line 425
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDirect_market()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDirectMarket(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 434
    .line 435
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPackage_name()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 444
    .line 445
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPosId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 454
    .line 455
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission_url()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermissionUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 464
    .line 465
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission()Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermisssList(Ljava/util/List;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 474
    .line 475
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intor_url()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntroUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 484
    .line 485
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCid()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 494
    .line 495
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCat()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCat(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 504
    .line 505
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAder_id()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 514
    .line 515
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTitle()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 520
    .line 521
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 522
    .line 523
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getContent()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 528
    .line 529
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 530
    .line 531
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 536
    .line 537
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTarget_type()I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setInteractionType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 548
    .line 549
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 554
    .line 555
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 556
    .line 557
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 562
    .line 563
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 564
    .line 565
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getdUrl()[Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 574
    .line 575
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_cover()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setVideo_cover(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 584
    .line 585
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_endcover()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 590
    .line 591
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    .line 592
    .line 593
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_keep_time()J

    .line 594
    .line 595
    .line 596
    move-result-wide v0

    .line 597
    iget-object v2, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 598
    .line 599
    iput-wide v0, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->i:J

    .line 600
    .line 601
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_name()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 606
    .line 607
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appName:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setIcon(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 618
    .line 619
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScore()F

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScore(F)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 628
    .line 629
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeveloper()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeveloper(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 634
    .line 635
    .line 636
    move-result-object p1

    .line 637
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 638
    .line 639
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intro()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntro(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 648
    .line 649
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_feature()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppFeature(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 654
    .line 655
    .line 656
    move-result-object p1

    .line 657
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 658
    .line 659
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPayment_types()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPaymentTypes(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 668
    .line 669
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_size()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppSize(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 678
    .line 679
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_ver()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppVer(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 688
    .line 689
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_privacy()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppPrivacy(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 698
    .line 699
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPrivacy_agreement()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPrivacyAgreement(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 708
    .line 709
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeep_link()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeepLink(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 714
    .line 715
    .line 716
    move-result-object p1

    .line 717
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 718
    .line 719
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_username()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_username(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 724
    .line 725
    .line 726
    move-result-object p1

    .line 727
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 728
    .line 729
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_path()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_path(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 734
    .line 735
    .line 736
    move-result-object p1

    .line 737
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 738
    .line 739
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_start()[Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxStart([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 744
    .line 745
    .line 746
    move-result-object p1

    .line 747
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 748
    .line 749
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_succ()[Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxSuccess([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 754
    .line 755
    .line 756
    move-result-object p1

    .line 757
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 758
    .line 759
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_fail()[Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxFail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 764
    .line 765
    .line 766
    move-result-object p1

    .line 767
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 768
    .line 769
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMonitorUrl()[Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setMonitorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 778
    .line 779
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getResponUrl()[Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setResponUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 784
    .line 785
    .line 786
    move-result-object p1

    .line 787
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 788
    .line 789
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickUrl()[Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 798
    .line 799
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_start()[Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 804
    .line 805
    .line 806
    move-result-object p1

    .line 807
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 808
    .line 809
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_succ()[Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 814
    .line 815
    .line 816
    move-result-object p1

    .line 817
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 818
    .line 819
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_start()[Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 824
    .line 825
    .line 826
    move-result-object p1

    .line 827
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 828
    .line 829
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 838
    .line 839
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_active()[Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_active([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 844
    .line 845
    .line 846
    move-result-object p1

    .line 847
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 848
    .line 849
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_start()[Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 854
    .line 855
    .line 856
    move-result-object p1

    .line 857
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 858
    .line 859
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_fail()[Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_fail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 864
    .line 865
    .line 866
    move-result-object p1

    .line 867
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 868
    .line 869
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_succ()[Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 874
    .line 875
    .line 876
    move-result-object p1

    .line 877
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 878
    .line 879
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_start()[Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 884
    .line 885
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->j:[Ljava/lang/String;

    .line 886
    .line 887
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_quarter()[Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 892
    .line 893
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->k:[Ljava/lang/String;

    .line 894
    .line 895
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_half()[Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 900
    .line 901
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->l:[Ljava/lang/String;

    .line 902
    .line 903
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_three_quarter()[Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 908
    .line 909
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->m:[Ljava/lang/String;

    .line 910
    .line 911
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_complete()[Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 916
    .line 917
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->n:[Ljava/lang/String;

    .line 918
    .line 919
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_pause()[Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 924
    .line 925
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->o:[Ljava/lang/String;

    .line 926
    .line 927
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_resume()[Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 932
    .line 933
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->p:[Ljava/lang/String;

    .line 934
    .line 935
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_skip()[Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 940
    .line 941
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->q:[Ljava/lang/String;

    .line 942
    .line 943
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_close()[Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 948
    .line 949
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->u:[Ljava/lang/String;

    .line 950
    .line 951
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_mute()[Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 956
    .line 957
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->r:[Ljava/lang/String;

    .line 958
    .line 959
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_unmute()[Ljava/lang/String;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 964
    .line 965
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->s:[Ljava/lang/String;

    .line 966
    .line 967
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_replay()[Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 972
    .line 973
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->t:[Ljava/lang/String;

    .line 974
    .line 975
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setImageUrls([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 980
    .line 981
    .line 982
    move-result-object p1

    .line 983
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 984
    .line 985
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickid()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 994
    .line 995
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAction_text()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v0

    .line 999
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1000
    .line 1001
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->d:Ljava/lang/String;

    .line 1002
    .line 1003
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_logo()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromLogo(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1008
    .line 1009
    .line 1010
    move-result-object p1

    .line 1011
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1012
    .line 1013
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDrawing()I

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDrawing(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1018
    .line 1019
    .line 1020
    move-result-object p1

    .line 1021
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1022
    .line 1023
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickable_range()I

    .line 1024
    .line 1025
    .line 1026
    move-result v0

    .line 1027
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1028
    .line 1029
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->v:I

    .line 1030
    .line 1031
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClose_btn()I

    .line 1032
    .line 1033
    .line 1034
    move-result v0

    .line 1035
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1036
    .line 1037
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->w:I

    .line 1038
    .line 1039
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getContent()Ljava/lang/String;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1044
    .line 1045
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getErrorUrl()[Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setErrorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1052
    .line 1053
    .line 1054
    move-result-object p1

    .line 1055
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1056
    .line 1057
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTitle()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1062
    .line 1063
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 1064
    .line 1065
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getContent()Ljava/lang/String;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v0

    .line 1069
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1070
    .line 1071
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 1072
    .line 1073
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1078
    .line 1079
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 1080
    .line 1081
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getH5_url()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setH5Url(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1086
    .line 1087
    .line 1088
    move-result-object p1

    .line 1089
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1090
    .line 1091
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getH5_ext()Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setH5Ext(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1096
    .line 1097
    .line 1098
    move-result-object p1

    .line 1099
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1100
    .line 1101
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWebTempId()I

    .line 1102
    .line 1103
    .line 1104
    move-result v0

    .line 1105
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWebTempId(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1106
    .line 1107
    .line 1108
    move-result-object p1

    .line 1109
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1110
    .line 1111
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWebTempUrl()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWebTempUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1116
    .line 1117
    .line 1118
    move-result-object p1

    .line 1119
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1120
    .line 1121
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1122
    .line 1123
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCreative_type()I

    .line 1124
    .line 1125
    .line 1126
    move-result v0

    .line 1127
    iput v0, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adPatternType:I

    .line 1128
    .line 1129
    const/4 v1, 0x2

    .line 1130
    if-ne v0, v1, :cond_1

    .line 1131
    .line 1132
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v0

    .line 1136
    if-eqz v0, :cond_0

    .line 1137
    .line 1138
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    array-length v0, v0

    .line 1143
    if-lez v0, :cond_0

    .line 1144
    .line 1145
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p2

    .line 1149
    const/4 v0, 0x0

    .line 1150
    aget-object p2, p2, v0

    .line 1151
    .line 1152
    iput-object p2, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 1153
    .line 1154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/ad/b;->createMeishuAdDelegateInternal(Lcom/meishu/sdk/meishu_ad/nativ/f;)Lcom/meishu/sdk/core/loader/d;

    .line 1155
    .line 1156
    .line 1157
    move-result-object p1

    .line 1158
    return-object p1

    .line 1159
    :cond_1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object p2

    .line 1163
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setImageUrls([Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/core/ad/b;->createMeishuAdDelegateInternal(Lcom/meishu/sdk/meishu_ad/nativ/f;)Lcom/meishu/sdk/core/loader/d;

    .line 1167
    .line 1168
    .line 1169
    move-result-object p1

    .line 1170
    return-object p1
.end method

.method public abstract createMeishuAdDelegateInternal(Lcom/meishu/sdk/meishu_ad/nativ/f;)Lcom/meishu/sdk/core/loader/d;
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardMediaView()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getVideoIsMute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/b;->isMute:Z

    .line 2
    .line 3
    return v0
.end method

.method public setVideoIsMute(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/b;->isMute:Z

    .line 2
    .line 3
    return-void
.end method

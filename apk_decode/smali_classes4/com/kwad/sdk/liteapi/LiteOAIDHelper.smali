.class public Lcom/kwad/sdk/liteapi/LiteOAIDHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final KEY_OAID:Ljava/lang/String; = "kasd_oaid_key"

.field private static final TAG:Ljava/lang/String; = "OAIDHelper"

.field private static sGetOaidFail:Z = false

.field private static final sHasReadSp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sOAID:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sHasReadSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->getOAIDNormal(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getAppOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/liteapi/LiteSDKDeviceController;->useOaidDisable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/liteapi/LiteSDKDeviceController;->getDevOaid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/sdk/liteapi/LiteSDKDeviceController;->getDevOaid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/liteapi/LiteSDKDeviceController;->useOaidDisable()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-static {p0}, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->initAsync(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    sget-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 46
    .line 47
    return-object p0
.end method

.method private static getOAIDNormal(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sGetOaidFail:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    sparse-switch v1, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :sswitch_0
    const-string v1, "HUAWEI"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :sswitch_1
    const-string v1, "FERRMEOS"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    const/16 v1, 0xe

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_2
    const-string v1, "MOTOLORA"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_3
    const-string v1, "NUBIA"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    const/16 v1, 0xa

    .line 83
    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :sswitch_4
    const-string v1, "MEIZU"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    const/16 v1, 0x9

    .line 95
    .line 96
    goto/16 :goto_1

    .line 97
    .line 98
    :sswitch_5
    const-string v1, "HONOR"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    move v1, v2

    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :sswitch_6
    const-string v1, "VIVO"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    const/4 v1, 0x6

    .line 118
    goto :goto_1

    .line 119
    :sswitch_7
    const-string v1, "SSUI"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    const/16 v1, 0xf

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :sswitch_8
    const-string v1, "OPPO"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    goto :goto_1

    .line 140
    :sswitch_9
    const-string v1, "ASUS"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    const/16 v1, 0xc

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :sswitch_a
    const-string v1, "ZTE"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    .line 159
    const/16 v1, 0xd

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :sswitch_b
    const-string v1, "ONEPLUS"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_2

    .line 169
    .line 170
    const/4 v1, 0x5

    .line 171
    goto :goto_1

    .line 172
    :sswitch_c
    const-string v1, "BLACKSHARK"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_2

    .line 179
    .line 180
    const/4 v1, 0x3

    .line 181
    goto :goto_1

    .line 182
    :sswitch_d
    const-string v1, "XIAOMI"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    .line 190
    const/4 v1, 0x2

    .line 191
    goto :goto_1

    .line 192
    :sswitch_e
    const-string v1, "SAMSUNG"

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_2

    .line 199
    .line 200
    const/16 v1, 0xb

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :sswitch_f
    const-string v1, "LENOVO"

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_2

    .line 210
    .line 211
    const/4 v1, 0x7

    .line 212
    goto :goto_1

    .line 213
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 214
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 215
    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :pswitch_0
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/ZTEDeviceIDHelper;

    .line 220
    .line 221
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/ZTEDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/ZTEDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 229
    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :pswitch_1
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/ASUSDeviceIDHelper;

    .line 233
    .line 234
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/ASUSDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/ASUSDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :pswitch_2
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/SamsungDeviceIDHelper;

    .line 245
    .line 246
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/SamsungDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/SamsungDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :pswitch_3
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/NubiaDeviceIDHelper;

    .line 257
    .line 258
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/NubiaDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/NubiaDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :pswitch_4
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/MeizuDeviceIDHelper;

    .line 269
    .line 270
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/MeizuDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/MeizuDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :pswitch_5
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/LenovoDeviceIDHelper;

    .line 281
    .line 282
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/LenovoDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/LenovoDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :pswitch_6
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/VivoDeviceIDHelper;

    .line 293
    .line 294
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/VivoDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/VivoDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :pswitch_7
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/OppoDeviceIDHelper;

    .line 305
    .line 306
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/OppoDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/OppoDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 314
    .line 315
    goto :goto_2

    .line 316
    :pswitch_8
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/XiaomiDeviceIDHelper;

    .line 317
    .line 318
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/XiaomiDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/XiaomiDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :pswitch_9
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/HONORDeviceIDHelper;

    .line 329
    .line 330
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/HONORDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/HONORDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :pswitch_a
    new-instance v1, Lcom/kwad/sdk/liteapi/oaid/helpers/HWDeviceIDHelper;

    .line 341
    .line 342
    invoke-direct {v1, p0}, Lcom/kwad/sdk/liteapi/oaid/helpers/HWDeviceIDHelper;-><init>(Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1}, Lcom/kwad/sdk/liteapi/oaid/helpers/HWDeviceIDHelper;->getOAID()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    sput-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 350
    .line 351
    :goto_2
    const-string p0, "OAIDHelper"

    .line 352
    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    const-string v3, "manufacturer:"

    .line 356
    .line 357
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v0, "--OAID:"

    .line 364
    .line 365
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    sget-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-static {p0, v0}, Lcom/kwad/sdk/liteapi/LiteApiLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sget-object p0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 381
    .line 382
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-eqz p0, :cond_3

    .line 387
    .line 388
    sput-boolean v2, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sGetOaidFail:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .line 390
    return-void

    .line 391
    :catchall_0
    move-exception p0

    .line 392
    invoke-static {p0}, Lcom/kwad/sdk/liteapi/LiteApiLogger;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 393
    .line 394
    .line 395
    :cond_3
    :goto_3
    return-void

    .line 396
    nop

    .line 397
    :sswitch_data_0
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_f
        -0x660bb426 -> :sswitch_e
        -0x65b21745 -> :sswitch_d
        -0x43a32cba -> :sswitch_c
        -0x23e7db20 -> :sswitch_b
        0x15c4b -> :sswitch_a
        0x1ece50 -> :sswitch_9
        0x251fa0 -> :sswitch_8
        0x26fcf4 -> :sswitch_7
        0x2834ac -> :sswitch_6
        0x41bb44a -> :sswitch_5
        0x45d8cac -> :sswitch_4
        0x472cdb3 -> :sswitch_3
        0x259adc0f -> :sswitch_2
        0x3a35353b -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static initAsync(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/kwad/sdk/liteapi/LiteOAIDHelper$1;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/sdk/api/a/a;->a(Lcom/kwad/sdk/api/a/b;)Ljava/util/concurrent/Future;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static obtainCurrent()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/liteapi/LiteOAIDHelper;->sOAID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

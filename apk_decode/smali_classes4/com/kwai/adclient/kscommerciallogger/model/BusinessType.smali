.class public final enum Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_BANNER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_CONVERT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_DRAW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_FULLSCREEN:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_INTERSTITIAL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_NATIVE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_REWARD:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_SDK_INIT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_SPLASH:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_WEBVIEW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_FEED_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_HORIZONTAL_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_HOTSPOT_ENTRY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_HOTSPOT_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_IMAGE_TEXT_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_IMAGE_TEXT_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_PROFILE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_PROFILE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_VIDEO_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_WALLPAPER_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_WALLPAPER_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum EU_LIVE_REPLAY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum EU_LIVE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum OTHER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum TACHIKOMA:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum WEB_CACHE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 2
    .line 3
    const-string v0, "TACHIKOMA"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->TACHIKOMA:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 10
    .line 11
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 12
    .line 13
    const-string v0, "AD_SPLASH"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v0, v3, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_SPLASH:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 20
    .line 21
    new-instance v3, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 22
    .line 23
    const-string v0, "AD_INTERSTITIAL"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v3, v0, v4, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_INTERSTITIAL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 30
    .line 31
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 32
    .line 33
    const-string v0, "AD_FULLSCREEN"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v4, v0, v5, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_FULLSCREEN:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 40
    .line 41
    new-instance v5, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 42
    .line 43
    const-string v0, "AD_REWARD"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v5, v0, v6, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v5, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_REWARD:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 50
    .line 51
    new-instance v6, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 52
    .line 53
    const-string v0, "AD_FEED"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v6, v0, v7, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 60
    .line 61
    new-instance v7, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 62
    .line 63
    const-string v0, "AD_NATIVE"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v7, v0, v8, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v7, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_NATIVE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 70
    .line 71
    new-instance v8, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 72
    .line 73
    const-string v0, "AD_DRAW"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v8, v0, v9, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v8, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_DRAW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 80
    .line 81
    new-instance v9, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 82
    .line 83
    const-string v0, "AD_BANNER"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v9, v0, v10, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v9, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_BANNER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 91
    .line 92
    new-instance v10, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 93
    .line 94
    const-string v0, "CU_SLIDE"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v10, v0, v11, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v10, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 102
    .line 103
    new-instance v11, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 104
    .line 105
    const-string v0, "CU_PROFILE"

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v11, v0, v12, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v11, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_PROFILE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 113
    .line 114
    new-instance v12, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 115
    .line 116
    const-string v0, "CU_PROFILE_SLIDE"

    .line 117
    .line 118
    const/16 v13, 0xb

    .line 119
    .line 120
    invoke-direct {v12, v0, v13, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sput-object v12, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_PROFILE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 124
    .line 125
    new-instance v13, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 126
    .line 127
    const-string v0, "CU_FEED"

    .line 128
    .line 129
    const/16 v14, 0xc

    .line 130
    .line 131
    invoke-direct {v13, v0, v14, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v13, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 135
    .line 136
    new-instance v14, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 137
    .line 138
    const-string v0, "CU_FEED_SLIDE"

    .line 139
    .line 140
    const/16 v15, 0xd

    .line 141
    .line 142
    invoke-direct {v14, v0, v15, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sput-object v14, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_FEED_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 146
    .line 147
    new-instance v15, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 148
    .line 149
    const-string v0, "CU_HOTSPOT_ENTRY"

    .line 150
    .line 151
    move-object/from16 v16, v1

    .line 152
    .line 153
    const/16 v1, 0xe

    .line 154
    .line 155
    invoke-direct {v15, v0, v1, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sput-object v15, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_HOTSPOT_ENTRY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 159
    .line 160
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 161
    .line 162
    const-string v1, "CU_HOTSPOT_SLIDE"

    .line 163
    .line 164
    move-object/from16 v17, v2

    .line 165
    .line 166
    const/16 v2, 0xf

    .line 167
    .line 168
    invoke-direct {v0, v1, v2, v1}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_HOTSPOT_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 172
    .line 173
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 174
    .line 175
    const-string v2, "CU_HORIZONTAL_FEED"

    .line 176
    .line 177
    move-object/from16 v18, v0

    .line 178
    .line 179
    const/16 v0, 0x10

    .line 180
    .line 181
    invoke-direct {v1, v2, v0, v2}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_HORIZONTAL_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 185
    .line 186
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 187
    .line 188
    const-string v2, "CU_VIDEO_DETAIL"

    .line 189
    .line 190
    move-object/from16 v19, v1

    .line 191
    .line 192
    const/16 v1, 0x11

    .line 193
    .line 194
    invoke-direct {v0, v2, v1, v2}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_VIDEO_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 198
    .line 199
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 200
    .line 201
    const-string v2, "CU_IMAGE_TEXT_FEED"

    .line 202
    .line 203
    move-object/from16 v20, v0

    .line 204
    .line 205
    const/16 v0, 0x12

    .line 206
    .line 207
    invoke-direct {v1, v2, v0, v2}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_IMAGE_TEXT_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 211
    .line 212
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 213
    .line 214
    const-string v2, "CU_IMAGE_TEXT_DETAIL"

    .line 215
    .line 216
    move-object/from16 v21, v1

    .line 217
    .line 218
    const/16 v1, 0x13

    .line 219
    .line 220
    invoke-direct {v0, v2, v1, v2}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_IMAGE_TEXT_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 224
    .line 225
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 226
    .line 227
    const-string v2, "CU_WALLPAPER_FEED"

    .line 228
    .line 229
    move-object/from16 v22, v0

    .line 230
    .line 231
    const/16 v0, 0x14

    .line 232
    .line 233
    invoke-direct {v1, v2, v0, v2}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_WALLPAPER_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 237
    .line 238
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 239
    .line 240
    const-string v2, "CU_WALLPAPER_SLIDE"

    .line 241
    .line 242
    move-object/from16 v23, v1

    .line 243
    .line 244
    const/16 v1, 0x15

    .line 245
    .line 246
    invoke-direct {v0, v2, v1, v2}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_WALLPAPER_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 250
    .line 251
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 252
    .line 253
    const/16 v2, 0x16

    .line 254
    .line 255
    move-object/from16 v24, v0

    .line 256
    .line 257
    const-string v0, "EU_LIVE_SLIDE"

    .line 258
    .line 259
    move-object/from16 v25, v3

    .line 260
    .line 261
    const-string v3, "EU_LIVE_SLIDE"

    .line 262
    .line 263
    invoke-direct {v1, v3, v2, v0}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->EU_LIVE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 267
    .line 268
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 269
    .line 270
    const/16 v2, 0x17

    .line 271
    .line 272
    const-string v3, "EU_LIVE_REPLAY"

    .line 273
    .line 274
    move-object/from16 v26, v1

    .line 275
    .line 276
    const-string v1, "EU_LIVE_REPLAY"

    .line 277
    .line 278
    invoke-direct {v0, v1, v2, v3}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->EU_LIVE_REPLAY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 282
    .line 283
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 284
    .line 285
    const/16 v2, 0x18

    .line 286
    .line 287
    const-string v3, "WEB_CACHE"

    .line 288
    .line 289
    move-object/from16 v27, v0

    .line 290
    .line 291
    const-string v0, "WEB_CACHE"

    .line 292
    .line 293
    invoke-direct {v1, v0, v2, v3}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->WEB_CACHE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 297
    .line 298
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 299
    .line 300
    const/16 v2, 0x19

    .line 301
    .line 302
    const-string v3, "AD_SDK_INIT"

    .line 303
    .line 304
    move-object/from16 v28, v1

    .line 305
    .line 306
    const-string v1, "AD_SDK_INIT"

    .line 307
    .line 308
    invoke-direct {v0, v1, v2, v3}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_SDK_INIT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 312
    .line 313
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 314
    .line 315
    const/16 v2, 0x1a

    .line 316
    .line 317
    const-string v3, "AD_WEBVIEW"

    .line 318
    .line 319
    move-object/from16 v29, v0

    .line 320
    .line 321
    const-string v0, "AD_WEBVIEW"

    .line 322
    .line 323
    invoke-direct {v1, v0, v2, v3}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_WEBVIEW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 327
    .line 328
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 329
    .line 330
    const/16 v2, 0x1b

    .line 331
    .line 332
    const-string v3, "AD_CONVERT"

    .line 333
    .line 334
    move-object/from16 v30, v1

    .line 335
    .line 336
    const-string v1, "AD_CONVERT"

    .line 337
    .line 338
    invoke-direct {v0, v1, v2, v3}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    .line 340
    .line 341
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_CONVERT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 342
    .line 343
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 344
    .line 345
    const/16 v2, 0x1c

    .line 346
    .line 347
    const-string v3, "OTHER"

    .line 348
    .line 349
    move-object/from16 v31, v0

    .line 350
    .line 351
    const-string v0, "OTHER"

    .line 352
    .line 353
    invoke-direct {v1, v0, v2, v3}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->OTHER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 357
    .line 358
    move-object/from16 v2, v17

    .line 359
    .line 360
    move-object/from16 v17, v19

    .line 361
    .line 362
    move-object/from16 v19, v21

    .line 363
    .line 364
    move-object/from16 v21, v23

    .line 365
    .line 366
    move-object/from16 v3, v25

    .line 367
    .line 368
    move-object/from16 v23, v26

    .line 369
    .line 370
    move-object/from16 v25, v28

    .line 371
    .line 372
    move-object/from16 v26, v29

    .line 373
    .line 374
    move-object/from16 v28, v31

    .line 375
    .line 376
    move-object/from16 v29, v1

    .line 377
    .line 378
    move-object/from16 v1, v16

    .line 379
    .line 380
    move-object/from16 v16, v18

    .line 381
    .line 382
    move-object/from16 v18, v20

    .line 383
    .line 384
    move-object/from16 v20, v22

    .line 385
    .line 386
    move-object/from16 v22, v24

    .line 387
    .line 388
    move-object/from16 v24, v27

    .line 389
    .line 390
    move-object/from16 v27, v30

    .line 391
    .line 392
    filled-new-array/range {v1 .. v29}, [Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->$VALUES:[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 397
    .line 398
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;
    .locals 1

    .line 1
    const-class v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->$VALUES:[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 8
    .line 9
    return-object v0
.end method

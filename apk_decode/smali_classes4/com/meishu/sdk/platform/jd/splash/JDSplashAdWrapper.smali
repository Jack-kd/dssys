.class public Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# instance fields
.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field private splashAd:Lcom/jd/ad/sdk/splash/JADSplash;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;->splashAd:Lcom/jd/ad/sdk/splash/JADSplash;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;->splashAd:Lcom/jd/ad/sdk/splash/JADSplash;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper$1;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    const/high16 v0, 0x44870000    # 1080.0f

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :try_start_1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-lez v2, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-lez v2, :cond_0

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    int-to-float v0, v0

    .line 115
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    int-to-float v1, v1

    .line 130
    goto :goto_1

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 132
    .line 133
    check-cast v2, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .line 149
    if-lez v2, :cond_1

    .line 150
    .line 151
    int-to-float v0, v2

    .line 152
    :catch_0
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 153
    .line 154
    const-string v3, "KEY_AUTO_SHOW"

    .line 155
    .line 156
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Ljava/lang/Boolean;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    new-instance v3, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 167
    .line 168
    invoke-direct {v3}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSlotID(Ljava/lang/String;)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 184
    .line 185
    check-cast v4, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-static {v4, v0}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 196
    .line 197
    check-cast v4, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 198
    .line 199
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-static {v4, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {v3, v0, v1}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSize(FF)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const/high16 v1, 0x40600000    # 3.5f

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setTolerateTime(F)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->build()Lcom/jd/ad/sdk/dl/model/JADSlot;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v1, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 228
    .line 229
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getAdContainer()Landroid/view/ViewGroup;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-direct {v1, p0, v3}, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;-><init>(Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;Landroid/view/ViewGroup;)V

    .line 234
    .line 235
    .line 236
    new-instance v3, Lcom/jd/ad/sdk/splash/JADSplash;

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-direct {v3, v4, v0}, Lcom/jd/ad/sdk/splash/JADSplash;-><init>(Landroid/content/Context;Lcom/jd/ad/sdk/dl/model/JADSlot;)V

    .line 243
    .line 244
    .line 245
    iput-object v3, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;->splashAd:Lcom/jd/ad/sdk/splash/JADSplash;

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;->setSplashAD(Lcom/jd/ad/sdk/splash/JADSplash;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;->splashAd:Lcom/jd/ad/sdk/splash/JADSplash;

    .line 251
    .line 252
    new-instance v3, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;

    .line 253
    .line 254
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 255
    .line 256
    check-cast v4, Lcom/meishu/sdk/core/ad/splash/d;

    .line 257
    .line 258
    invoke-direct {v3, p0, v4, v1, v2}, Lcom/meishu/sdk/platform/jd/splash/JDSplashAdListenerImpl;-><init>(Lcom/meishu/sdk/platform/jd/splash/JDSplashAdWrapper;Lcom/meishu/sdk/core/ad/splash/d;Lcom/meishu/sdk/platform/jd/splash/JDSplashAd;Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v3}, Lcom/jd/ad/sdk/splash/JADSplash;->loadAd(Lcom/jd/ad/sdk/splash/JADSplashListener;)V

    .line 262
    .line 263
    .line 264
    return-void
.end method

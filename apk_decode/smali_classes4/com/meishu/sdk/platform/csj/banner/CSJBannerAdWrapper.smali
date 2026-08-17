.class public Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;",
        "Lcom/meishu/sdk/core/ad/banner/b;",
        ">;"
    }
.end annotation


# instance fields
.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field private ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->getTtAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-object v1, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public loadAd()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 26
    .line 27
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->isInitSuccess()Z

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const-wide/16 v0, 0x1f4

    .line 40
    .line 41
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 v0, 0x438

    .line 82
    .line 83
    const/16 v1, 0x780

    .line 84
    .line 85
    :goto_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptWidth()Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptWidth()Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-lez v3, :cond_2

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptWidth()Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    int-to-float v3, v3

    .line 142
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 146
    .line 147
    int-to-float v3, v3

    .line 148
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 149
    .line 150
    :goto_2
    div-float/2addr v3, v4

    .line 151
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    check-cast v4, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptHeight()Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_3

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptHeight()Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-lez v4, :cond_3

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    check-cast v4, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptHeight()Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    int-to-float v4, v4

    .line 194
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 195
    .line 196
    div-float/2addr v4, v2

    .line 197
    goto :goto_3

    .line 198
    :cond_3
    const/4 v4, 0x0

    .line 199
    :goto_3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 200
    .line 201
    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    const/4 v5, 0x1

    .line 217
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->ttAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 234
    .line 235
    new-instance v2, Lcom/meishu/sdk/platform/csj/banner/CSJBannerListenerImpl;

    .line 236
    .line 237
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/csj/banner/CSJBannerListenerImpl;-><init>(Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    :goto_5
    return-void
.end method

.method public setTtNativeExpressAd(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/banner/CSJBannerAdWrapper;->ttNativeExpressAd:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    return-void
.end method

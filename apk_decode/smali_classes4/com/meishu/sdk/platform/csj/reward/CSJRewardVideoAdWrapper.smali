.class public Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;",
        "Lcom/meishu/sdk/core/ad/reward/a;",
        ">;"
    }
.end annotation


# instance fields
.field private apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

.field private mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
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
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getApiRewardAdMediaListener()Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadAd()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "window"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/WindowManager;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-lez v0, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 73
    .line 74
    check-cast v0, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 89
    .line 90
    if-lez v1, :cond_1

    .line 91
    .line 92
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    if-lez v0, :cond_1

    .line 95
    .line 96
    move v4, v1

    .line 97
    move v1, v0

    .line 98
    move v0, v4

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    :cond_1
    const/16 v0, 0x438

    .line 101
    .line 102
    const/16 v1, 0x780

    .line 103
    .line 104
    :goto_0
    :try_start_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 105
    .line 106
    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const/4 v3, 0x1

    .line 120
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    int-to-float v0, v0

    .line 129
    int-to-float v1, v1

    .line 130
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->userId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 151
    .line 152
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/RewardVideoLoader;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v2}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    new-instance v3, Lcom/meishu/sdk/core/utils/i;

    .line 171
    .line 172
    invoke-direct {v3}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/meishu/sdk/platform/csj/CSJAdConfig;->isInitSuccess()Z

    .line 179
    .line 180
    .line 181
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    if-nez v1, :cond_2

    .line 183
    .line 184
    const-wide/16 v1, 0x1f4

    .line 185
    .line 186
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :catch_1
    move-exception v1

    .line 191
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    .line 193
    .line 194
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->mTTAdNative:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 195
    .line 196
    new-instance v2, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;

    .line 197
    .line 198
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 199
    .line 200
    check-cast v3, Lcom/meishu/sdk/core/ad/reward/a;

    .line 201
    .line 202
    invoke-direct {v2, p0, v3}, Lcom/meishu/sdk/platform/csj/reward/RewardVideoListenerAdapter;-><init>(Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;Lcom/meishu/sdk/core/ad/reward/a;)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    .line 211
    .line 212
    :goto_3
    return-void
.end method

.method public setApiRewardAdMediaListener(Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/reward/CSJRewardVideoAdWrapper;->apiRewardAdMediaListener:Lcom/meishu/sdk/core/ad/reward/RewardAdMediaListener;

    .line 2
    .line 3
    return-void
.end method

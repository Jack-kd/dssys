.class public Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;
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
.field private bannerAd:Lcom/jd/ad/sdk/banner/JADBanner;

.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;->bannerAd:Lcom/jd/ad/sdk/banner/JADBanner;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;->bannerAd:Lcom/jd/ad/sdk/banner/JADBanner;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 4

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 34
    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptWidth()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 44
    .line 45
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptHeight()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 54
    .line 55
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptWidth()Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 66
    .line 67
    check-cast v1, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->getAcceptHeight()Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :cond_0
    const/16 v1, 0xb4

    .line 82
    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 84
    .line 85
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 104
    .line 105
    if-lez v2, :cond_1

    .line 106
    .line 107
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    if-lez v0, :cond_1

    .line 110
    .line 111
    :try_start_2
    div-int/lit8 v1, v2, 0x6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    :catch_0
    move v0, v2

    .line 114
    goto :goto_0

    .line 115
    :catch_1
    :cond_1
    const/16 v0, 0x438

    .line 116
    .line 117
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 118
    .line 119
    check-cast v2, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    int-to-float v0, v0

    .line 126
    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 131
    .line 132
    check-cast v2, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    int-to-float v1, v1

    .line 139
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    new-instance v2, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 144
    .line 145
    invoke-direct {v2}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSlotID(Ljava/lang/String;)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v2, v0, v1}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSize(FF)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->build()Lcom/jd/ad/sdk/dl/model/JADSlot;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;

    .line 169
    .line 170
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;-><init>(Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;)V

    .line 171
    .line 172
    .line 173
    new-instance v2, Lcom/jd/ad/sdk/banner/JADBanner;

    .line 174
    .line 175
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 176
    .line 177
    check-cast v3, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-direct {v2, v3, v0}, Lcom/jd/ad/sdk/banner/JADBanner;-><init>(Landroid/content/Context;Lcom/jd/ad/sdk/dl/model/JADSlot;)V

    .line 188
    .line 189
    .line 190
    iput-object v2, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;->bannerAd:Lcom/jd/ad/sdk/banner/JADBanner;

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;->setJDBanner(Lcom/jd/ad/sdk/banner/JADBanner;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;->bannerAd:Lcom/jd/ad/sdk/banner/JADBanner;

    .line 196
    .line 197
    new-instance v2, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;

    .line 198
    .line 199
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 200
    .line 201
    check-cast v3, Lcom/meishu/sdk/core/ad/banner/b;

    .line 202
    .line 203
    invoke-direct {v2, p0, v3, v1}, Lcom/meishu/sdk/platform/jd/banner/JDBannerAdListenerImpl;-><init>(Lcom/meishu/sdk/platform/jd/banner/JDBannerAdWrapper;Lcom/meishu/sdk/core/ad/banner/b;Lcom/meishu/sdk/platform/jd/banner/JDBannerAd;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v2}, Lcom/jd/ad/sdk/banner/JADBanner;->loadAd(Lcom/jd/ad/sdk/banner/JADBannerListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 211
    .line 212
    .line 213
    :goto_2
    return-void
.end method

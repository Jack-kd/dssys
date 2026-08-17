.class public Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;",
        "Lcom/meishu/sdk/core/ad/interstitial/b;",
        ">;"
    }
.end annotation


# instance fields
.field private interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

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
    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 50
    .line 51
    const-string v2, "KEY_WIDTH"

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Float;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->localParams:Ljava/util/Map;

    .line 60
    .line 61
    const-string v3, "KEY_HEIGHT"

    .line 62
    .line 63
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/lang/Float;

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    const/4 v4, 0x0

    .line 78
    cmpl-float v3, v3, v4

    .line 79
    .line 80
    if-eqz v3, :cond_0

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 94
    .line 95
    int-to-float v1, v1

    .line 96
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 97
    .line 98
    div-float/2addr v1, v0

    .line 99
    const/high16 v0, 0x40400000    # 3.0f

    .line 100
    .line 101
    mul-float/2addr v1, v0

    .line 102
    const/high16 v0, 0x40800000    # 4.0f

    .line 103
    .line 104
    div-float v0, v1, v0

    .line 105
    .line 106
    const v1, 0x3f266666    # 0.65f

    .line 107
    .line 108
    .line 109
    div-float v1, v0, v1

    .line 110
    .line 111
    :goto_0
    new-instance v2, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 112
    .line 113
    invoke-direct {v2}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSlotID(Ljava/lang/String;)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2, v0, v1}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSize(FF)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->build()Lcom/jd/ad/sdk/dl/model/JADSlot;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;

    .line 137
    .line 138
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 139
    .line 140
    check-cast v2, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Landroid/app/Activity;

    .line 147
    .line 148
    invoke-direct {v1, p0, v2}, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;-><init>(Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;Landroid/app/Activity;)V

    .line 149
    .line 150
    .line 151
    new-instance v2, Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 152
    .line 153
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 154
    .line 155
    check-cast v3, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    .line 156
    .line 157
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-direct {v2, v3, v0}, Lcom/jd/ad/sdk/interstitial/JADInterstitial;-><init>(Landroid/content/Context;Lcom/jd/ad/sdk/dl/model/JADSlot;)V

    .line 162
    .line 163
    .line 164
    iput-object v2, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;->setInterstitialAd(Lcom/jd/ad/sdk/interstitial/JADInterstitial;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;->interstitialAd:Lcom/jd/ad/sdk/interstitial/JADInterstitial;

    .line 170
    .line 171
    new-instance v2, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 174
    .line 175
    check-cast v3, Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 176
    .line 177
    invoke-direct {v2, p0, v3, v1}, Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdListenerImpl;-><init>(Lcom/meishu/sdk/platform/jd/interstitial/JDInterstitialAdWrapper;Lcom/meishu/sdk/core/ad/interstitial/b;Lcom/meishu/sdk/platform/jd/interstitial/JDIntersititialAd;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v2}, Lcom/jd/ad/sdk/interstitial/JADInterstitial;->loadAd(Lcom/jd/ad/sdk/interstitial/JADInterstitialListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    return-void
.end method

.class public Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;
.super Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;
.source "SourceFile"


# instance fields
.field private apiAdListener:Lcom/meishu/sdk/core/ad/interstitial/b;

.field private interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Lcom/meishu/sdk/core/ad/interstitial/b;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MS"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAd;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/meishu/sdk/core/ad/interstitial/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->apiAdListener:Lcom/meishu/sdk/core/ad/interstitial/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getData()Lcom/meishu/sdk/core/utils/ResultBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/utils/ResultBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/ResultBean;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDrawing()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setDrawing(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setPrice(I)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ""

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v1, "MS"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/ResultBean;->setAdInfo(Lcom/meishu/sdk/core/utils/ResultBean$AdInfo;)V

    .line 182
    .line 183
    .line 184
    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/a;->a(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/a;->a(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public getIsOperationContent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/a;->a(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isAdValid()Z
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const-wide/32 v0, 0x1a8ce0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 18
    .line 19
    int-to-long v0, v0

    .line 20
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sub-long/2addr v2, v4

    .line 35
    cmp-long v0, v2, v0

    .line 36
    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    return v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    return v0
.end method

.method public sendLossNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLossUrl()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public sendWinNotification(Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWinUrl()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/meishu/sdk/core/ad/a;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/a;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast v0, Lcom/meishu/sdk/platform/ms/interstitial/a;

    const-string v3, "\u63d2\u5c4f\u6e32\u67d3\u5931\u8d25,showAd"

    invoke-virtual {v0, v3, v2}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    check-cast v0, Lcom/meishu/sdk/platform/ms/interstitial/a;

    const-string v2, "\u63d2\u5c4f\u6e32\u67d3\u5931\u8d25,showAd"

    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/platform/ms/interstitial/a;->onAdRenderFail(Ljava/lang/String;I)V

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/interstitial/MeishuInterstitialAdAdapter;->interstitialAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

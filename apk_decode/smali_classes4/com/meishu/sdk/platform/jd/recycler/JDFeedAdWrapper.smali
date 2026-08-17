.class public Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;",
        "Lcom/meishu/sdk/core/ad/recycler/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JDFeedAdWrapper"


# instance fields
.field private jadFeed:Lcom/jd/ad/sdk/feed/JADFeed;

.field private meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private loadExpressAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lez v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    int-to-float v1, v1

    .line 58
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .line 60
    :goto_0
    div-float/2addr v1, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-lez v2, :cond_1

    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    int-to-float v2, v2

    .line 111
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 112
    .line 113
    div-float/2addr v2, v0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    const/4 v2, 0x0

    .line 116
    :goto_2
    new-instance v0, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 117
    .line 118
    invoke-direct {v0}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v0, v3}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSlotID(Ljava/lang/String;)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSize(FF)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->build()Lcom/jd/ad/sdk/dl/model/JADSlot;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;-><init>(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;)V

    .line 144
    .line 145
    .line 146
    new-instance v2, Lcom/jd/ad/sdk/feed/JADFeed;

    .line 147
    .line 148
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 149
    .line 150
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-direct {v2, v3, v0}, Lcom/jd/ad/sdk/feed/JADFeed;-><init>(Landroid/content/Context;Lcom/jd/ad/sdk/dl/model/JADSlot;)V

    .line 157
    .line 158
    .line 159
    iput-object v2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->jadFeed:Lcom/jd/ad/sdk/feed/JADFeed;

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;->setFeedAd(Lcom/jd/ad/sdk/feed/JADFeed;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->jadFeed:Lcom/jd/ad/sdk/feed/JADFeed;

    .line 165
    .line 166
    new-instance v2, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;

    .line 167
    .line 168
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 169
    .line 170
    check-cast v3, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 171
    .line 172
    invoke-direct {v2, p0, v3, v1}, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdListenerImpl;-><init>(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;Lcom/meishu/sdk/core/ad/recycler/a;Lcom/meishu/sdk/platform/jd/recycler/JDExpressFeedAd;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Lcom/jd/ad/sdk/feed/JADFeed;->loadAd(Lcom/jd/ad/sdk/feed/JADFeedListener;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method private loadNativeAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .line 32
    :goto_0
    div-float/2addr v1, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    iget-object v2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lez v2, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->meishuAdInfo:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    int-to-float v2, v2

    .line 55
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .line 57
    div-float/2addr v2, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    const/high16 v0, 0x41100000    # 9.0f

    .line 60
    .line 61
    mul-float/2addr v0, v1

    .line 62
    const/high16 v2, 0x41800000    # 16.0f

    .line 63
    .line 64
    div-float v2, v0, v2

    .line 65
    .line 66
    :goto_2
    new-instance v0, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setSlotID(Ljava/lang/String;)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setImageSize(FF)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x2

    .line 88
    invoke-virtual {v0, v1}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->setAdType(I)Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/jd/ad/sdk/dl/model/JADSlot$Builder;->build()Lcom/jd/ad/sdk/dl/model/JADSlot;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lcom/jd/ad/sdk/nativead/JADNative;

    .line 97
    .line 98
    invoke-direct {v1, v0}, Lcom/jd/ad/sdk/nativead/JADNative;-><init>(Lcom/jd/ad/sdk/dl/model/JADSlot;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;

    .line 102
    .line 103
    invoke-direct {v0, p0, v1}, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;Lcom/jd/ad/sdk/nativead/JADNative;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/jd/ad/sdk/nativead/JADNative;->loadAd(Lcom/jd/ad/sdk/nativead/JADNativeLoadListener;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

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
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const v1, 0x30d40

    .line 44
    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    if-ne v0, v1, :cond_0

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const/4 v1, 0x2

    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/meishu/sdk/platform/csj/CSJPlatformError;

    .line 65
    .line 66
    const/4 v1, -0x1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v3, "\u4fe1\u606f\u6d41\u6a21\u5f0f\u4e0d\u652f\u6301"

    .line 76
    .line 77
    invoke-direct {v0, v3, v1, v2}, Lcom/meishu/sdk/platform/csj/CSJPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    const v1, 0x186a0

    .line 87
    .line 88
    .line 89
    if-ne v0, v1, :cond_3

    .line 90
    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->loadExpressAd()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;->loadNativeAd()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

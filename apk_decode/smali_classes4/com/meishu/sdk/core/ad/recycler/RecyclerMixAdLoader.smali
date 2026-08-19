.class public Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;
.super Lcom/meishu/sdk/core/loader/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/core/loader/c<",
        "Lcom/meishu/sdk/core/ad/recycler/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerMixAdLoader"


# instance fields
.field private fetchCount:I

.field private fixedHeight:I

.field private isNativeFeedUseShake:Z

.field private isVideoAutoPlay:Z

.field private recyclerAdListenerAdapter:Lcom/meishu/sdk/core/ad/recycler/b;

.field public showDetail:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdEventListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->fetchCount:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->isVideoAutoPlay:Z

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p1, "RecyclerMixAdLoader"

    .line 12
    .line 13
    const-string p2, "MsAdSlot is null"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getIsShowDetail()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iput-boolean v1, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->showDetail:Z

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getIsVideoAutoPlay()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput-boolean v1, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->isVideoAutoPlay:Z

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getFixedHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->fixedHeight:I

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getFetchCount()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-gtz v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getFetchCount()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    :goto_0
    iput v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->fetchCount:I

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getChannel()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->channel:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v0, Lcom/meishu/sdk/core/ad/recycler/b;

    .line 77
    .line 78
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/core/ad/recycler/b;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdEventListener;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->recyclerAdListenerAdapter:Lcom/meishu/sdk/core/ad/recycler/b;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getPid()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget-object p3, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->recyclerAdListenerAdapter:Lcom/meishu/sdk/core/ad/recycler/b;

    .line 88
    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/core/loader/c;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private newMeishuAdNativeWarapper(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/ms/recycler/c;
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setImageUrls([Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p2, Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 9
    .line 10
    invoke-direct {p2, p0, p1}, Lcom/meishu/sdk/platform/ms/recycler/c;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 11
    .line 12
    .line 13
    return-object p2
.end method


# virtual methods
.method public clearErrorState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->recyclerAdListenerAdapter:Lcom/meishu/sdk/core/ad/recycler/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/recycler/b;->b:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/recycler/b;->c:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public createDelegate(Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/meishu/sdk/core/AdSdk;->isTestMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->isVideoAutoPlay()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->isVideoAutoPlay:Z

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "CUSTOM"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->recyclerLoader(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->recyclerLoader(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    return-object p1
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
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getNative_s_e()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setNativeSE(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLoadedTime()J

    .line 216
    .line 217
    .line 218
    move-result-wide v0

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setLoadedTime(J)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_type()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_area()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClkArea(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index2()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex2(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_delay()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerDelay(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_count()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerCount(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 284
    .line 285
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExpire_timestamp()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExpireTimestamp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setEcpm(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDClickData(Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_type()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 324
    .line 325
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExtend_up()I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExtend_up(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExtend_down()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExtend_down(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 344
    .line 345
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExtend_left()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExtend_left(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 354
    .line 355
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExtend_right()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExtend_right(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExtend_interval()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExtend_interval(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 374
    .line 375
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExtend_max_count()I

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExtend_max_count(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 384
    .line 385
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAd_type()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 394
    .line 395
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCbc()I

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCBC(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 404
    .line 405
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getNop()I

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setNOP(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 414
    .line 415
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_duration()J

    .line 416
    .line 417
    .line 418
    move-result-wide v0

    .line 419
    iget-object v2, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 420
    .line 421
    iput-wide v0, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->y:J

    .line 422
    .line 423
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_code()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_code(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 432
    .line 433
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_ext()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_ext(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 442
    .line 443
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setReqId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 452
    .line 453
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_id()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 462
    .line 463
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDirect_market()I

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDirectMarket(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 472
    .line 473
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPackage_name()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 478
    .line 479
    .line 480
    move-result-object p1

    .line 481
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 482
    .line 483
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPosId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 492
    .line 493
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission_url()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermissionUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 502
    .line 503
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission()Ljava/util/List;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermisssList(Ljava/util/List;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 512
    .line 513
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intor_url()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntroUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 522
    .line 523
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getStyle_id()I

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 528
    .line 529
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->x:I

    .line 530
    .line 531
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCid()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 540
    .line 541
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCat()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCat(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 550
    .line 551
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAder_id()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 560
    .line 561
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTitle()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 566
    .line 567
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getContent()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 574
    .line 575
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTarget_type()I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setInteractionType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 586
    .line 587
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWidth()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 592
    .line 593
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 594
    .line 595
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getHeight()I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 600
    .line 601
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 602
    .line 603
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDrawing()I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDrawing(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 612
    .line 613
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->isVideoAutoPlay()Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 618
    .line 619
    invoke-static {v1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/f;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Z)Z

    .line 620
    .line 621
    .line 622
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->isVideoMute()Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 627
    .line 628
    invoke-static {v1, v0}, Lcom/meishu/sdk/meishu_ad/nativ/f;->b(Lcom/meishu/sdk/meishu_ad/nativ/f;Z)Z

    .line 629
    .line 630
    .line 631
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getdUrl()[Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 645
    .line 646
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_name()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 651
    .line 652
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appName:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setIcon(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 659
    .line 660
    .line 661
    move-result-object p1

    .line 662
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 663
    .line 664
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScore()F

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScore(F)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 669
    .line 670
    .line 671
    move-result-object p1

    .line 672
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 673
    .line 674
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeveloper()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeveloper(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 679
    .line 680
    .line 681
    move-result-object p1

    .line 682
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 683
    .line 684
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intro()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntro(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 693
    .line 694
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_feature()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppFeature(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 703
    .line 704
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPayment_types()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPaymentTypes(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 709
    .line 710
    .line 711
    move-result-object p1

    .line 712
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 713
    .line 714
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_size()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppSize(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 723
    .line 724
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_ver()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppVer(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 733
    .line 734
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_privacy()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppPrivacy(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 743
    .line 744
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPrivacy_agreement()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPrivacyAgreement(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 749
    .line 750
    .line 751
    move-result-object p1

    .line 752
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 753
    .line 754
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeep_link()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeepLink(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 763
    .line 764
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_username()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_username(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 773
    .line 774
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_path()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_path(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 783
    .line 784
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_start()[Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxStart([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 793
    .line 794
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_succ()[Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxSuccess([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 799
    .line 800
    .line 801
    move-result-object p1

    .line 802
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 803
    .line 804
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_fail()[Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxFail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 809
    .line 810
    .line 811
    move-result-object p1

    .line 812
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 813
    .line 814
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMonitorUrl()[Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setMonitorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 819
    .line 820
    .line 821
    move-result-object p1

    .line 822
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 823
    .line 824
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getResponUrl()[Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setResponUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 829
    .line 830
    .line 831
    move-result-object p1

    .line 832
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 833
    .line 834
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickUrl()[Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 839
    .line 840
    .line 841
    move-result-object p1

    .line 842
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 843
    .line 844
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_start()[Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 849
    .line 850
    .line 851
    move-result-object p1

    .line 852
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 853
    .line 854
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_succ()[Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 863
    .line 864
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_start()[Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 869
    .line 870
    .line 871
    move-result-object p1

    .line 872
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 873
    .line 874
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 879
    .line 880
    .line 881
    move-result-object p1

    .line 882
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 883
    .line 884
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_active()[Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_active([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 889
    .line 890
    .line 891
    move-result-object p1

    .line 892
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 893
    .line 894
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_start()[Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 899
    .line 900
    .line 901
    move-result-object p1

    .line 902
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 903
    .line 904
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_fail()[Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_fail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 909
    .line 910
    .line 911
    move-result-object p1

    .line 912
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 913
    .line 914
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_succ()[Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 919
    .line 920
    .line 921
    move-result-object p1

    .line 922
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 923
    .line 924
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_start()[Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 929
    .line 930
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->j:[Ljava/lang/String;

    .line 931
    .line 932
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_quarter()[Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 937
    .line 938
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->k:[Ljava/lang/String;

    .line 939
    .line 940
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_half()[Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v0

    .line 944
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 945
    .line 946
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->l:[Ljava/lang/String;

    .line 947
    .line 948
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_three_quarter()[Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 953
    .line 954
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->m:[Ljava/lang/String;

    .line 955
    .line 956
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_complete()[Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v0

    .line 960
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 961
    .line 962
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->n:[Ljava/lang/String;

    .line 963
    .line 964
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_pause()[Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 969
    .line 970
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->o:[Ljava/lang/String;

    .line 971
    .line 972
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_resume()[Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 977
    .line 978
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->p:[Ljava/lang/String;

    .line 979
    .line 980
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_skip()[Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 985
    .line 986
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->q:[Ljava/lang/String;

    .line 987
    .line 988
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_close()[Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 993
    .line 994
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->u:[Ljava/lang/String;

    .line 995
    .line 996
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_mute()[Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1001
    .line 1002
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->r:[Ljava/lang/String;

    .line 1003
    .line 1004
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_unmute()[Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1009
    .line 1010
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->s:[Ljava/lang/String;

    .line 1011
    .line 1012
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_replay()[Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1017
    .line 1018
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->t:[Ljava/lang/String;

    .line 1019
    .line 1020
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setImageUrls([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p1

    .line 1028
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1029
    .line 1030
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_cover()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setVideo_cover(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1035
    .line 1036
    .line 1037
    move-result-object p1

    .line 1038
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1039
    .line 1040
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickid()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v0

    .line 1044
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1045
    .line 1046
    .line 1047
    move-result-object p1

    .line 1048
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1049
    .line 1050
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPackage_name()Ljava/lang/String;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1055
    .line 1056
    .line 1057
    move-result-object p1

    .line 1058
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1059
    .line 1060
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getContent()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1065
    .line 1066
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->c:Ljava/lang/String;

    .line 1067
    .line 1068
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAction_text()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1073
    .line 1074
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->d:Ljava/lang/String;

    .line 1075
    .line 1076
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1081
    .line 1082
    iput-object v0, v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 1083
    .line 1084
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon_title()Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1089
    .line 1090
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->e:Ljava/lang/String;

    .line 1091
    .line 1092
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_logo()Ljava/lang/String;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromLogo(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1097
    .line 1098
    .line 1099
    move-result-object p1

    .line 1100
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1101
    .line 1102
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom()Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v0

    .line 1106
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1107
    .line 1108
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->f:Ljava/lang/String;

    .line 1109
    .line 1110
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_id()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1115
    .line 1116
    .line 1117
    move-result-object p1

    .line 1118
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1119
    .line 1120
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDown_num()I

    .line 1121
    .line 1122
    .line 1123
    move-result v0

    .line 1124
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDownNum(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1125
    .line 1126
    .line 1127
    move-result-object p1

    .line 1128
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1129
    .line 1130
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScore()F

    .line 1131
    .line 1132
    .line 1133
    move-result v0

    .line 1134
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScore(F)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1135
    .line 1136
    .line 1137
    move-result-object p1

    .line 1138
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1139
    .line 1140
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getComments()I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setComments(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1145
    .line 1146
    .line 1147
    move-result-object p1

    .line 1148
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1149
    .line 1150
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getErrorUrl()[Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setErrorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1155
    .line 1156
    .line 1157
    move-result-object p1

    .line 1158
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1159
    .line 1160
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDrawing()I

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDrawing(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1165
    .line 1166
    .line 1167
    move-result-object p1

    .line 1168
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;

    .line 1169
    .line 1170
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/f$a;->a:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 1171
    .line 1172
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCreative_type()I

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    iput v0, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adPatternType:I

    .line 1177
    .line 1178
    const/4 v1, 0x1

    .line 1179
    if-eq v0, v1, :cond_3

    .line 1180
    .line 1181
    const/16 v1, 0xb

    .line 1182
    .line 1183
    if-eq v0, v1, :cond_3

    .line 1184
    .line 1185
    const/16 v1, 0xc

    .line 1186
    .line 1187
    if-eq v0, v1, :cond_3

    .line 1188
    .line 1189
    const/16 v1, 0xd

    .line 1190
    .line 1191
    if-ne v0, v1, :cond_0

    .line 1192
    .line 1193
    goto :goto_0

    .line 1194
    :cond_0
    const/4 v1, 0x2

    .line 1195
    if-ne v0, v1, :cond_2

    .line 1196
    .line 1197
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    if-eqz v0, :cond_1

    .line 1202
    .line 1203
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    array-length v0, v0

    .line 1208
    if-lez v0, :cond_1

    .line 1209
    .line 1210
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object p2

    .line 1214
    const/4 v0, 0x0

    .line 1215
    aget-object p2, p2, v0

    .line 1216
    .line 1217
    iput-object p2, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 1218
    .line 1219
    :cond_1
    new-instance p2, Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 1220
    .line 1221
    invoke-direct {p2, p0, p1}, Lcom/meishu/sdk/platform/ms/recycler/c;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/meishu_ad/nativ/f;)V

    .line 1222
    .line 1223
    .line 1224
    return-object p2

    .line 1225
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    .line 1229
    .line 1230
    const-string v2, "\u4e0d\u652f\u6301\u7684\u521b\u610f\u7c7b\u578b\uff0c\u7c7b\u578b\u6807\u8bc6\u4e3a["

    .line 1231
    .line 1232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    const-string v0, "]"

    .line 1239
    .line 1240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    const-string v1, "RecyclerMixAdLoader"

    .line 1248
    .line 1249
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->newMeishuAdNativeWarapper(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 1253
    .line 1254
    .line 1255
    move-result-object p1

    .line 1256
    return-object p1

    .line 1257
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->newMeishuAdNativeWarapper(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/platform/ms/recycler/c;

    .line 1258
    .line 1259
    .line 1260
    move-result-object p1

    .line 1261
    return-object p1
.end method

.method public getAdPatternType()I
    .locals 1

    const v0, 0x30d40

    return v0
.end method

.method public getFetchCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->fetchCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getFixedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->fixedHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsVideoAutoPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->isVideoAutoPlay:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNativeFeedUseShake()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->isNativeFeedUseShake:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowDetail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->showDetail:Z

    .line 2
    .line 3
    return v0
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "KEY_TOKEN"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-super {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

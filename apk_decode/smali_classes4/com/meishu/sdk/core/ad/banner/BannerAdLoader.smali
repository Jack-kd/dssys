.class public Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;
.super Lcom/meishu/sdk/core/loader/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/core/loader/c<",
        "Lcom/meishu/sdk/core/ad/banner/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerAdLoader"


# instance fields
.field private acceptHeight:Ljava/lang/Integer;

.field private acceptWidth:Ljava/lang/Integer;

.field private bannerAdListenerAdapter:Lcom/meishu/sdk/core/ad/banner/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/c;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p1, "BannerAdLoader"

    .line 7
    .line 8
    const-string p2, "MsAdSlot is null"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->acceptWidth:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->acceptHeight:Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getChannel()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->channel:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v0, Lcom/meishu/sdk/core/ad/banner/c;

    .line 61
    .line 62
    invoke-direct {v0, p0, p3}, Lcom/meishu/sdk/core/ad/banner/c;-><init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/ad/banner/BannerAdEventListener;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->bannerAdListenerAdapter:Lcom/meishu/sdk/core/ad/banner/c;

    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getPid()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    iget-object p3, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->bannerAdListenerAdapter:Lcom/meishu/sdk/core/ad/banner/c;

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/core/loader/c;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public clearErrorState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->bannerAdListenerAdapter:Lcom/meishu/sdk/core/ad/banner/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/banner/c;->b:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/banner/c;->c:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public createDelegate(Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getCls()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "CUSTOM"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->bannerLoader(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/core/a;->a(Ljava/lang/String;)Lcom/meishu/sdk/core/e;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->bannerLoader(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public createMeishuAdDelegate(Landroid/content/Context;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;
    .locals 2

    .line 1
    new-instance p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 2
    .line 3
    new-instance v0, Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/banner/a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/meishu/sdk/meishu_ad/banner/a$a;-><init>(Lcom/meishu/sdk/meishu_ad/banner/a;)V

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getLoadedTime()J

    .line 206
    .line 207
    .line 208
    move-result-wide v0

    .line 209
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setLoadedTime(J)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 214
    .line 215
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_type()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_area()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClkArea(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index2()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex2(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExpire_timestamp()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExpireTimestamp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setEcpm(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDClickData(Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 284
    .line 285
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_type()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAd_type()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCbc()I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCBC(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getNop()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setNOP(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 324
    .line 325
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_code()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_code(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_ext()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_ext(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 344
    .line 345
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_id()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 354
    .line 355
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setReqId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDirect_market()I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDirectMarket(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 374
    .line 375
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPosId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 384
    .line 385
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission_url()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermissionUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 394
    .line 395
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermisssList(Ljava/util/List;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 404
    .line 405
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intor_url()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntroUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 414
    .line 415
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCid()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 424
    .line 425
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCat()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCat(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 434
    .line 435
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAder_id()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 444
    .line 445
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setImageUrls([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 454
    .line 455
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTarget_type()I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setInteractionType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 464
    .line 465
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getdUrl()[Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 474
    .line 475
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_name()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 484
    .line 485
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setIcon(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 494
    .line 495
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScore()F

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScore(F)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 500
    .line 501
    .line 502
    move-result-object p1

    .line 503
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 504
    .line 505
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeveloper()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeveloper(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 514
    .line 515
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intro()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntro(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 524
    .line 525
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_feature()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppFeature(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 530
    .line 531
    .line 532
    move-result-object p1

    .line 533
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 534
    .line 535
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPayment_types()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPaymentTypes(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 544
    .line 545
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_size()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppSize(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 554
    .line 555
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_ver()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppVer(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 564
    .line 565
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_privacy()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppPrivacy(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 574
    .line 575
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPrivacy_agreement()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPrivacyAgreement(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 584
    .line 585
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPackage_name()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 594
    .line 595
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeep_link()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeepLink(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 604
    .line 605
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_username()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_username(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 614
    .line 615
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_path()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_path(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 620
    .line 621
    .line 622
    move-result-object p1

    .line 623
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 624
    .line 625
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_start()[Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxStart([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 634
    .line 635
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_succ()[Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxSuccess([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 640
    .line 641
    .line 642
    move-result-object p1

    .line 643
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 644
    .line 645
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_fail()[Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxFail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 654
    .line 655
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMonitorUrl()[Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setMonitorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 664
    .line 665
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getResponUrl()[Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setResponUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 674
    .line 675
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickUrl()[Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 684
    .line 685
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_start()[Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 694
    .line 695
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_succ()[Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 704
    .line 705
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_start()[Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 710
    .line 711
    .line 712
    move-result-object p1

    .line 713
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 714
    .line 715
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 724
    .line 725
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_active()[Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_active([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 730
    .line 731
    .line 732
    move-result-object p1

    .line 733
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 734
    .line 735
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_start()[Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 744
    .line 745
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_fail()[Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_fail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 754
    .line 755
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_succ()[Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 760
    .line 761
    .line 762
    move-result-object p1

    .line 763
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 764
    .line 765
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickid()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 770
    .line 771
    .line 772
    move-result-object p1

    .line 773
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 774
    .line 775
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_logo()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromLogo(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 780
    .line 781
    .line 782
    move-result-object p1

    .line 783
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 784
    .line 785
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCreative_type()I

    .line 786
    .line 787
    .line 788
    move-result v0

    .line 789
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdPatternType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 790
    .line 791
    .line 792
    move-result-object p1

    .line 793
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 794
    .line 795
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getErrorUrl()[Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object p2

    .line 799
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setErrorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 800
    .line 801
    .line 802
    move-result-object p1

    .line 803
    check-cast p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;

    .line 804
    .line 805
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/banner/a$a;->a:Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 806
    .line 807
    new-instance p2, Lcom/meishu/sdk/platform/ms/banner/b;

    .line 808
    .line 809
    invoke-direct {p2, p0, p1}, Lcom/meishu/sdk/platform/ms/banner/b;-><init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/meishu_ad/banner/a;)V

    .line 810
    .line 811
    .line 812
    return-object p2
.end method

.method public getAcceptHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->acceptHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAcceptWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;->acceptWidth:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
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

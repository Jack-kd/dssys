.class public Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;
.super Lcom/meishu/sdk/core/loader/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/core/loader/c<",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_AUTO_SHOW:Ljava/lang/String; = "KEY_AUTO_SHOW"

.field public static final KEY_SKIP_BUTTON:Ljava/lang/String; = "KEY_SKIP_BUTTON"

.field private static final TAG:Ljava/lang/String; = "SplashAdLoader"


# instance fields
.field private adContainer:Landroid/view/ViewGroup;

.field private fetchDelay:I

.field private hideSkipButton:Z

.field private isMute:Z

.field private isSplashFullScreen:Z

.field private splashAdListenerAdapter:Lcom/meishu/sdk/core/ad/splash/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/splash/SplashAdEventListener;I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/c;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    if-nez p3, :cond_0

    .line 14
    const-string p1, "SplashAdLoader"

    const-string p2, "MsAdSlot is null"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 16
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 17
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getIsMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    .line 18
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getIsHideSkipButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->hideSkipButton:Z

    .line 19
    iput-object p2, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    .line 20
    iput p5, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->fetchDelay:I

    .line 21
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot;->isSplashFullScreen()Z

    move-result p2

    iput-boolean p2, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isSplashFullScreen:Z

    .line 22
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getChannel()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meishu/sdk/core/loader/c;->channel:Ljava/lang/String;

    .line 23
    new-instance p2, Lcom/meishu/sdk/core/ad/splash/e;

    invoke-direct {p2, p0, p4}, Lcom/meishu/sdk/core/ad/splash/e;-><init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/ad/splash/SplashAdEventListener;)V

    iput-object p2, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->splashAdListenerAdapter:Lcom/meishu/sdk/core/ad/splash/e;

    .line 24
    invoke-virtual {p3}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getPid()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->splashAdListenerAdapter:Lcom/meishu/sdk/core/ad/splash/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/core/loader/c;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/MsAdSlot;Lcom/meishu/sdk/core/ad/splash/SplashAdEventListener;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/loader/c;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    if-nez p2, :cond_0

    .line 3
    const-string p1, "SplashAdLoader"

    const-string p2, "MsAdSlot is null"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_width:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/core/loader/c;->accept_ad_height:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getIsMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    .line 7
    iput p4, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->fetchDelay:I

    .line 8
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getIsHideSkipButton()Z

    move-result p4

    iput-boolean p4, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->hideSkipButton:Z

    .line 9
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getChannel()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/meishu/sdk/core/loader/c;->channel:Ljava/lang/String;

    .line 10
    new-instance p4, Lcom/meishu/sdk/core/ad/splash/e;

    invoke-direct {p4, p0, p3}, Lcom/meishu/sdk/core/ad/splash/e;-><init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/ad/splash/SplashAdEventListener;)V

    iput-object p4, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->splashAdListenerAdapter:Lcom/meishu/sdk/core/ad/splash/e;

    .line 11
    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/MsAdSlot;->getPid()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->splashAdListenerAdapter:Lcom/meishu/sdk/core/ad/splash/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/meishu/sdk/core/loader/c;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public clearErrorState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->splashAdListenerAdapter:Lcom/meishu/sdk/core/ad/splash/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/splash/e;->b:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/meishu/sdk/core/ad/splash/e;->c:Z

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
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->splashLoader(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

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
    invoke-interface {v0, p0, p1, p2}, Lcom/meishu/sdk/core/e;->splashLoader(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;Lcom/meishu/sdk/core/domain/MeishuAdInfo;)Lcom/meishu/sdk/core/loader/d;

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
    .locals 3

    .line 1
    new-instance p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 2
    .line 3
    new-instance v0, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/meishu/sdk/meishu_ad/splash/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/meishu/sdk/meishu_ad/splash/d$a;-><init>(Lcom/meishu/sdk/meishu_ad/splash/d;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->appId()Ljava/lang/String;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCloseUrl()[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCloseUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAction_desc()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActionDesc(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScheme()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScheme(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDynamicMap()Ljava/util/HashMap;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDynamicMap(Ljava/util/HashMap;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFieldExport()Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFieldExport(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAdg()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdg(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAdp()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDefImage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDefImage(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDefault_coord()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDefaultCoord(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 164
    .line 165
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDpsign()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDpSign(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_ext()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActExt(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 184
    .line 185
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getUob()Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setUob(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getRs()Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setRs(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 204
    .line 205
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDPSIGN()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDPSIGN(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

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
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 224
    .line 225
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getExpire_timestamp()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setExpireTimestamp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getEcpm()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setEcpm(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 244
    .line 245
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDClickData(Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAct_type()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setActType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 264
    .line 265
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAd_type()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCbc()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCBC(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 284
    .line 285
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getNop()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setNOP(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_code()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_code(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 304
    .line 305
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getS_ext()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setS_ext(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getReq_id()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setReqId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 324
    .line 325
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_id()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDirect_market()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDirectMarket(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 344
    .line 345
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPackage_name()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 354
    .line 355
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIs_eyes()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 360
    .line 361
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/splash/d;->H:I

    .line 362
    .line 363
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPid()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPosId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 372
    .line 373
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission_url()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermissionUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 382
    .line 383
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_permission()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPermisssList(Ljava/util/List;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 392
    .line 393
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intor_url()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntroUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 402
    .line 403
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_type()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 408
    .line 409
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/splash/d;->E:I

    .line 410
    .line 411
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_area()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClkArea(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 420
    .line 421
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClk_type()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 430
    .line 431
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 436
    .line 437
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/splash/d;->F:I

    .line 438
    .line 439
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_index2()I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex2(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 448
    .line 449
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_type()I

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 454
    .line 455
    iput v0, v1, Lcom/meishu/sdk/meishu_ad/splash/d;->G:I

    .line 456
    .line 457
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_count()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerCount(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 466
    .line 467
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPower_delay()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPowerDelay(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 476
    .line 477
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCid()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 486
    .line 487
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCat()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setCat(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 496
    .line 497
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getAder_id()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 506
    .line 507
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setImageUrls([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 516
    .line 517
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTarget_type()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setInteractionType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 526
    .line 527
    iget-object v0, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getdUrl()[Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 541
    .line 542
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_name()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 547
    .line 548
    .line 549
    move-result-object p1

    .line 550
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 551
    .line 552
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setIcon(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 561
    .line 562
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getScore()F

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setScore(F)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 571
    .line 572
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeveloper()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeveloper(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 581
    .line 582
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_intro()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppIntro(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 591
    .line 592
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_feature()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppFeature(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 601
    .line 602
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPayment_types()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPaymentTypes(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 611
    .line 612
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_size()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppSize(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 621
    .line 622
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_ver()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppVer(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 631
    .line 632
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getApp_privacy()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAppPrivacy(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 641
    .line 642
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getPrivacy_agreement()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setPrivacyAgreement(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 651
    .line 652
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDeep_link()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDeepLink(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 661
    .line 662
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_username()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_username(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 667
    .line 668
    .line 669
    move-result-object p1

    .line 670
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 671
    .line 672
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_path()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWx_path(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 681
    .line 682
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_start()[Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxStart([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 687
    .line 688
    .line 689
    move-result-object p1

    .line 690
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 691
    .line 692
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_succ()[Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxSuccess([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 697
    .line 698
    .line 699
    move-result-object p1

    .line 700
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 701
    .line 702
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWx_fail()[Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWxFail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 707
    .line 708
    .line 709
    move-result-object p1

    .line 710
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 711
    .line 712
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMonitorUrl()[Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setMonitorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 717
    .line 718
    .line 719
    move-result-object p1

    .line 720
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 721
    .line 722
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getResponUrl()[Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setResponUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 727
    .line 728
    .line 729
    move-result-object p1

    .line 730
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 731
    .line 732
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickUrl()[Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 737
    .line 738
    .line 739
    move-result-object p1

    .line 740
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 741
    .line 742
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_start()[Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 747
    .line 748
    .line 749
    move-result-object p1

    .line 750
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 751
    .line 752
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_succ()[Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 757
    .line 758
    .line 759
    move-result-object p1

    .line 760
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 761
    .line 762
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_start()[Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 767
    .line 768
    .line 769
    move-result-object p1

    .line 770
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 771
    .line 772
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 777
    .line 778
    .line 779
    move-result-object p1

    .line 780
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 781
    .line 782
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDn_active()[Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDn_active([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 791
    .line 792
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_start()[Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v0

    .line 796
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 797
    .line 798
    .line 799
    move-result-object p1

    .line 800
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 801
    .line 802
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_fail()[Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_fail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 811
    .line 812
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDp_succ()[Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDp_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 817
    .line 818
    .line 819
    move-result-object p1

    .line 820
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 821
    .line 822
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_start()[Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 827
    .line 828
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->j:[Ljava/lang/String;

    .line 829
    .line 830
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_quarter()[Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 835
    .line 836
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->k:[Ljava/lang/String;

    .line 837
    .line 838
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_one_half()[Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 843
    .line 844
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->l:[Ljava/lang/String;

    .line 845
    .line 846
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_three_quarter()[Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 851
    .line 852
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->m:[Ljava/lang/String;

    .line 853
    .line 854
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_complete()[Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 859
    .line 860
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->n:[Ljava/lang/String;

    .line 861
    .line 862
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_pause()[Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 867
    .line 868
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->o:[Ljava/lang/String;

    .line 869
    .line 870
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_resume()[Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 875
    .line 876
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->p:[Ljava/lang/String;

    .line 877
    .line 878
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_mute()[Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 883
    .line 884
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->r:[Ljava/lang/String;

    .line 885
    .line 886
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_unmute()[Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 891
    .line 892
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->s:[Ljava/lang/String;

    .line 893
    .line 894
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_replay()[Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 899
    .line 900
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->t:[Ljava/lang/String;

    .line 901
    .line 902
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_cover()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setVideo_cover(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 911
    .line 912
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_endcover()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    iget-object v1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 917
    .line 918
    iput-object v0, v1, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    .line 919
    .line 920
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getVideo_keep_time()J

    .line 921
    .line 922
    .line 923
    move-result-wide v0

    .line 924
    iget-object v2, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 925
    .line 926
    iput-wide v0, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->i:J

    .line 927
    .line 928
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getClickid()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setClickid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 933
    .line 934
    .line 935
    move-result-object p1

    .line 936
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 937
    .line 938
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getFrom_logo()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setFromLogo(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 943
    .line 944
    .line 945
    move-result-object p1

    .line 946
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 947
    .line 948
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getDrawing()I

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDrawing(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 953
    .line 954
    .line 955
    move-result-object p1

    .line 956
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 957
    .line 958
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getTitle()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setTitle(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 963
    .line 964
    .line 965
    move-result-object p1

    .line 966
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 967
    .line 968
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getContent()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setDesc(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 973
    .line 974
    .line 975
    move-result-object p1

    .line 976
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 977
    .line 978
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getIcon()Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setIconUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 983
    .line 984
    .line 985
    move-result-object p1

    .line 986
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 987
    .line 988
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCreative_type()I

    .line 989
    .line 990
    .line 991
    move-result v0

    .line 992
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setAdPatternType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 993
    .line 994
    .line 995
    move-result-object p1

    .line 996
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 997
    .line 998
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getErrorUrl()[Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setErrorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1003
    .line 1004
    .line 1005
    move-result-object p1

    .line 1006
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 1007
    .line 1008
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getMaterialTimeout()I

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setMaterialTimeout(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p1

    .line 1016
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 1017
    .line 1018
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWebTempId()I

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWebTempId(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1023
    .line 1024
    .line 1025
    move-result-object p1

    .line 1026
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 1027
    .line 1028
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getWebTempUrl()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v0

    .line 1032
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setWebTempUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1033
    .line 1034
    .line 1035
    move-result-object p1

    .line 1036
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 1037
    .line 1038
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSkipBtnLocation()I

    .line 1039
    .line 1040
    .line 1041
    move-result v0

    .line 1042
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->setSkipBtnLocation(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 1043
    .line 1044
    .line 1045
    move-result-object p1

    .line 1046
    check-cast p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;

    .line 1047
    .line 1048
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/d$a;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 1049
    .line 1050
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getCreative_type()I

    .line 1051
    .line 1052
    .line 1053
    move-result v0

    .line 1054
    const/4 v1, 0x2

    .line 1055
    if-ne v0, v1, :cond_0

    .line 1056
    .line 1057
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    if-eqz v0, :cond_0

    .line 1062
    .line 1063
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v0

    .line 1067
    array-length v0, v0

    .line 1068
    if-lez v0, :cond_0

    .line 1069
    .line 1070
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->getSrcUrls()[Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object p2

    .line 1074
    const/4 v0, 0x0

    .line 1075
    aget-object p2, p2, v0

    .line 1076
    .line 1077
    iput-object p2, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 1078
    .line 1079
    :cond_0
    new-instance p2, Lcom/meishu/sdk/platform/ms/splash/a;

    .line 1080
    .line 1081
    invoke-direct {p2, p0, p1}, Lcom/meishu/sdk/platform/ms/splash/a;-><init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/meishu_ad/splash/d;)V

    .line 1082
    .line 1083
    .line 1084
    return-object p2
.end method

.method public getAdContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFetchDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->fetchDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsHideSkipBtn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->hideSkipButton:Z

    .line 2
    .line 3
    return v0
.end method

.method public getVideoIsMute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSplashFullScreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->isSplashFullScreen:Z

    .line 2
    .line 3
    return v0
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->loadAd(Landroid/view/View;)V

    return-void
.end method

.method public loadAd(Landroid/view/View;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    const-string v1, "KEY_SKIP_BUTTON"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "KEY_AUTO_SHOW"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-super {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    return-void
.end method

.method public loadAd(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "KEY_SKIP_BUTTON"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "KEY_AUTO_SHOW"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p1, "KEY_TOKEN"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-super {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    return-void
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->loadAd(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public loadAndShow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->loadAndShow(Landroid/view/View;)V

    return-void
.end method

.method public loadAndShow(Landroid/view/View;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v1, "KEY_SKIP_BUTTON"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "KEY_AUTO_SHOW"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-super {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u65e0 adContainer \u4e0d\u652f\u6301\u81ea\u52a8\u5c55\u793a"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadAndShow(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v1, "KEY_TOKEN"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p2, "KEY_SKIP_BUTTON"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "KEY_AUTO_SHOW"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-super {p0, v0}, Lcom/meishu/sdk/core/loader/c;->loadAd(Ljava/util/Map;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u65e0 adContainer \u4e0d\u652f\u6301\u81ea\u52a8\u5c55\u793a"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadAndShow(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->loadAndShow(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

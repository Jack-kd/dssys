.class public Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;
.super Lcom/meishu/sdk/platform/BasePlatformLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/BasePlatformLoader<",
        "Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;",
        "Lcom/meishu/sdk/core/ad/splash/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OPPOSplashAdLoader"


# instance fields
.field private oppoSplashAdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;->oppoSplashAdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;->oppoSplashAdList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    check-cast v3, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;->destroy()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;->oppoSplashAdList:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public loadAd()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getReq()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLocalParams()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "KEY_SKIP_BUTTON"

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLocalParams()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "KEY_AUTO_SHOW"

    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    new-instance v1, Lcom/heytap/msp/mobad/api/params/SplashAdParams$Builder;

    .line 70
    .line 71
    invoke-direct {v1}, Lcom/heytap/msp/mobad/api/params/SplashAdParams$Builder;-><init>()V

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    instance-of v2, v0, Landroid/view/View;

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    check-cast v0, Landroid/view/View;

    .line 81
    .line 82
    const/4 v2, 0x4

    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 100
    .line 101
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 108
    .line 109
    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/heytap/msp/mobad/api/params/SplashAdParams$Builder;->setShowPreLoadPage(Z)Lcom/heytap/msp/mobad/api/params/SplashAdParams$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/splash/SplashAdLoader;->getFetchDelay()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    int-to-long v1, v1

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/heytap/msp/mobad/api/params/SplashAdParams$Builder;->setFetchTimeout(J)Lcom/heytap/msp/mobad/api/params/SplashAdParams$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/heytap/msp/mobad/api/params/SplashAdParams$Builder;->build()Lcom/heytap/msp/mobad/api/params/SplashAdParams;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v1, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;

    .line 139
    .line 140
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;-><init>(Lcom/meishu/sdk/core/loader/d;)V

    .line 141
    .line 142
    .line 143
    new-instance v2, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;

    .line 144
    .line 145
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;-><init>(Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v1}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->setOPPOSplashAd(Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;)V

    .line 149
    .line 150
    .line 151
    new-instance v3, Lcom/heytap/msp/mobad/api/ad/SplashAd;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Landroid/app/Activity;

    .line 158
    .line 159
    iget-object v5, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 160
    .line 161
    invoke-virtual {v5}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-direct {v3, v4, v5, v2, v0}, Lcom/heytap/msp/mobad/api/ad/SplashAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/heytap/msp/mobad/api/listener/ISplashAdListener;Lcom/heytap/msp/mobad/api/params/SplashAdParams;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v3}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAd;->setOPPOSplashAd(Lcom/heytap/msp/mobad/api/ad/SplashAd;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v3}, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader$MyISplashAdListener;->setSplashAd(Lcom/heytap/msp/mobad/api/ad/SplashAd;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/splash/OPPOSplashAdLoader;->oppoSplashAdList:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    return-void
.end method

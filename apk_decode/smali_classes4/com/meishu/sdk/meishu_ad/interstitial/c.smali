.class public Lcom/meishu/sdk/meishu_ad/interstitial/c;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/c;


# instance fields
.field public a:Lcom/meishu/sdk/platform/ms/interstitial/b;

.field public b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MS"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->d:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->b:Lcom/meishu/sdk/meishu_ad/interstitial/a;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "actType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NativeInterstitialAd"

    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setSdkAd(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    invoke-static {p2}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setAdWrapper(Lcom/meishu/sdk/platform/BasePlatformLoader;)V

    .line 5
    invoke-static {p0}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->setMsAd(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 6
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsVideoAutoPlay()Z

    move-result v0

    const-string v1, "isVideoAutoPlay"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/interstitial/InterstitialAdLoader;->getIsClickToClose()Z

    move-result v0

    const-string v1, "isClickToClose"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const-string v1, "act_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->d:I

    const-string v1, "layout_type"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->f:I

    const-string v1, "layout_width"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget p0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->e:I

    const-string v0, "layout_height"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/meishu/sdk/core/ad/AdSlot;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 18
    new-instance v1, Lcom/meishu/sdk/meishu_ad/interstitial/e;

    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/meishu_ad/interstitial/e;-><init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 19
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    return-void

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 21
    iput-wide v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->g:J

    .line 22
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    new-instance v1, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;

    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/meishu_ad/interstitial/c$a;-><init>(Lcom/meishu/sdk/meishu_ad/interstitial/c;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V

    :cond_1
    return-void
.end method

.method public b()Lcom/meishu/sdk/core/ad/AdType;
    .locals 1

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/meishu/sdk/meishu_ad/interstitial/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 6
    .line 7
    return-object v0
.end method

.method public d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c:Z

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 21
    .line 22
    check-cast v1, Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-wide v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->g:J

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "."

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-wide v4, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->h:J

    .line 63
    .line 64
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-wide v3, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->i:J

    .line 71
    .line 72
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/meishu/sdk/core/ad/a;->adView:Landroid/view/View;

    .line 84
    .line 85
    sget v3, Lcom/meishu/sdk/R$id;->ms_activity_sdk_interstitial_mediaContainer:I

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const/4 v3, 0x0

    .line 92
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;Landroid/view/View;Landroid/view/View;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_0
    if-eqz v1, :cond_2

    .line 101
    .line 102
    array-length v2, v1

    .line 103
    const/4 v3, 0x0

    .line 104
    :goto_1
    if-ge v3, v2, :cond_2

    .line 105
    .line 106
    aget-object v4, v1, v3

    .line 107
    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_1

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    and-int/lit8 v6, v5, 0x2

    .line 123
    .line 124
    const/4 v7, 0x2

    .line 125
    if-ne v6, v7, :cond_0

    .line 126
    .line 127
    add-int/lit8 v5, v5, -0x2

    .line 128
    .line 129
    or-int/2addr v5, v0

    .line 130
    :cond_0
    sget-object v6, Lcom/meishu/sdk/core/ad/AdType;->INTERSTITIAL:Lcom/meishu/sdk/core/ad/AdType;

    .line 131
    .line 132
    invoke-static {v4, v5, v6}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 137
    .line 138
    invoke-virtual {v5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-static {v5, v4}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getConCurrentListener()Lcom/meishu/sdk/core/loader/concurrent/f;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/concurrent/f;->onAdExposure()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :catch_1
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    .line 165
    .line 166
    :goto_2
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 177
    .line 178
    .line 179
    :cond_3
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/interstitial/c;->a:Lcom/meishu/sdk/platform/ms/interstitial/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v0, Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

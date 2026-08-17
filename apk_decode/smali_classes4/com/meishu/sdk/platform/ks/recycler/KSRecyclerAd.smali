.class public Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field private static final TAG:Ljava/lang/String; = "KSRecyclerAd"


# instance fields
.field private adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

.field private ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

.field private nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

.field private showed:Z

.field private videoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsNativeAd;Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;)V
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->showed:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/kwad/sdk/api/KsNativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->showed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->showed:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    move-object p3, v0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :catch_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-class v1, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 39
    .line 40
    invoke-static {p2, v0, v1}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v0, 0x1

    .line 45
    aget-object v0, p2, v0

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    aget-object p2, p2, v1

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    move-object v0, p2

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    const/4 v5, -0x1

    .line 73
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    new-instance v5, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-direct {v5, v6}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    new-instance v6, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 89
    .line 90
    invoke-direct {v6, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {v5, p2}, Landroid/view/View;->setId(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    move-object v0, v5

    .line 110
    :goto_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 111
    .line 112
    if-eqz p2, :cond_2

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    invoke-static {v0, p2, v2, v3}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 135
    .line 136
    .line 137
    :cond_2
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    if-eqz p2, :cond_4

    .line 140
    .line 141
    :try_start_2
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->getAdPatternType()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    const/4 v2, 0x2

    .line 146
    if-ne p2, v2, :cond_3

    .line 147
    .line 148
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 149
    .line 150
    new-instance v2, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;

    .line 151
    .line 152
    invoke-direct {v2, p0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$1;-><init>(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p2, v2}, Lcom/kwad/sdk/api/KsNativeAd;->setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 159
    .line 160
    new-instance v2, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 161
    .line 162
    invoke-direct {v2}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {p2, p1, v1}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoView(Landroid/content/Context;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->videoView:Landroid/view/View;

    .line 178
    .line 179
    if-eqz p1, :cond_3

    .line 180
    .line 181
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :catch_1
    move-exception p1

    .line 186
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 190
    .line 191
    new-instance p2, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;

    .line 192
    .line 193
    invoke-direct {p2, p0, p4}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;-><init>(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {p1, v0, p3, p2}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_4
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 14
    :try_start_0
    iget-object p3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    if-nez p3, :cond_0

    goto :goto_2

    .line 15
    :cond_0
    iput-object p5, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 16
    iget-object p3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->videoView:Landroid/view/View;

    if-eqz p3, :cond_5

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    iget-object p5, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    if-eqz p5, :cond_3

    .line 21
    invoke-virtual {p5}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object p4

    check-cast p4, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_2

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p5, -0x2

    if-eq p4, p5, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    move p4, p3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/high16 p4, 0x43480000    # 200.0f

    mul-float/2addr p3, p4

    float-to-int p4, p3

    goto :goto_1

    .line 24
    :cond_2
    iget-object p3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object p3

    check-cast p3, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p3}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 25
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->videoView:Landroid/view/View;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void

    .line 26
    :cond_4
    iget-object p3, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->videoView:Landroid/view/View;

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    return-void

    .line 27
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->nativeRecyclerAdMediaListener:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;

    .line 3
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->videoView:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    move v0, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/high16 v0, 0x43480000    # 200.0f

    mul-float/2addr p2, v0

    float-to-int v0, p2

    goto :goto_1

    .line 11
    :cond_2
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    move-result-object p2

    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->videoView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    return-void

    .line 13
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 5
    .line 6
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const/16 v0, 0xd

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    return v0

    .line 23
    :cond_2
    return v1
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getAppPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getPermissionInfoUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getAppPackageSize()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    const-wide/16 v3, 0x400

    .line 17
    .line 18
    div-long/2addr v1, v3

    .line 19
    mul-long/2addr v1, v3

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "Mb"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getCustomVideo()Lcom/meishu/sdk/platform/ms/recycler/MsCustomVideo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    new-array v0, v0, [Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v1, v2, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 50
    .line 51
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/kwad/sdk/api/KsImage;

    .line 60
    .line 61
    invoke-interface {v2}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    aput-object v2, v0, v1

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-object v0

    .line 71
    :cond_2
    :goto_1
    new-array v0, v1, [Ljava/lang/String;

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    const/4 v0, 0x0

    .line 75
    return-object v0
.end method

.method public getInteractionType()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public getMediaView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatFormEcpm()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "KS"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppPrivacyUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public getVideoCover()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->ksNativeAd:Lcom/kwad/sdk/api/KsNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public isNativeExpress()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const v2, 0x30d40

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->adWrapper:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x2

    .line 33
    if-ne v2, v0, :cond_0

    .line 34
    .line 35
    return v3

    .line 36
    :cond_0
    return v1

    .line 37
    :cond_1
    const v2, 0x186a0

    .line 38
    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    return v3

    .line 43
    :cond_2
    return v1
.end method

.method public mute()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public resumeVideo()V
    .locals 0

    return-void
.end method

.method public setDownloadStatusListener(Lcom/meishu/sdk/core/ad/recycler/DownloadStatusListener;)V
    .locals 0

    return-void
.end method

.method public setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    return-void
.end method

.method public startVideo()V
    .locals 0

    return-void
.end method

.method public stopVideo()V
    .locals 0

    return-void
.end method

.method public unmute()V
    .locals 0

    return-void
.end method

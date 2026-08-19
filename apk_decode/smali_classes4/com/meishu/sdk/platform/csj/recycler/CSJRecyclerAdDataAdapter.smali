.class public Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adListener:Lcom/meishu/sdk/core/ad/recycler/a;

.field private adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

.field private volatile hasExposed:Z

.field private ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CSJRecyclerAdDataAdapter"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;->getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 19
    .line 20
    return-void
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
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getEventUrl()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/meishu/sdk/core/utils/p1;->b([Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-class v0, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 33
    .line 34
    invoke-static {p2, p1, v0}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x1

    .line 39
    aget-object v0, p1, p2

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    aget-object v0, p1, v0

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    const/4 v4, -0x1

    .line 67
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-direct {v4, v5}, Lcom/meishu/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    new-instance v5, Lcom/meishu/sdk/core/view/TouchPositionListener;

    .line 83
    .line 84
    invoke-direct {v5, p0}, Lcom/meishu/sdk/core/view/TouchPositionListener;-><init>(Lcom/meishu/sdk/core/ad/IAd;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Lcom/meishu/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcom/meishu/sdk/core/view/TouchPositionListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/meishu/sdk/core/MSAdConfig;->showFeedAdLogo()Z

    .line 105
    .line 106
    .line 107
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    :try_start_1
    new-instance v3, Landroid/widget/ImageView;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 135
    .line 136
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .line 138
    const/high16 v5, 0x41600000    # 14.0f

    .line 139
    .line 140
    mul-float/2addr p2, v5

    .line 141
    const/high16 v5, 0x3f000000    # 0.5f

    .line 142
    .line 143
    add-float/2addr p2, v5

    .line 144
    float-to-int p2, p2

    .line 145
    const/4 v5, -0x2

    .line 146
    invoke-direct {v0, v5, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    .line 148
    .line 149
    const/16 p2, 0x55

    .line 150
    .line 151
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 152
    .line 153
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 154
    .line 155
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catchall_1
    move-exception p2

    .line 167
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 171
    .line 172
    if-eqz p2, :cond_3

    .line 173
    .line 174
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    check-cast p2, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 191
    .line 192
    .line 193
    move-result-wide v5

    .line 194
    invoke-static {v4, p2, v5, v6}, Lcom/meishu/sdk/core/utils/p1;->a(Landroid/view/ViewGroup;Ljava/lang/String;J)V

    .line 195
    .line 196
    .line 197
    :cond_3
    invoke-virtual {p1, v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    move-object v0, v4

    .line 201
    :cond_4
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 210
    .line 211
    if-eqz p2, :cond_5

    .line 212
    .line 213
    new-instance v1, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;

    .line 214
    .line 215
    iget-object v2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 216
    .line 217
    invoke-direct {v1, p0, p4, v2}, Lcom/meishu/sdk/platform/csj/recycler/CSJAdInteractionListenerAdapter;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {p2, v0, p1, p3, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    .line 226
    .line 227
    :cond_5
    :goto_4
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;IILcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    .line 10
    :try_start_0
    iget-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p3, :cond_2

    .line 11
    new-instance p4, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter$2;

    invoke-direct {p4, p0, p5}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter$2;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 12
    iget-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance p4, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;

    invoke-direct {p4, p5}, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    iget-object p3, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 15
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    instance-of p4, p4, Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    .line 16
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 18
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    .line 19
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter$1;-><init>(Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance v1, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;

    invoke-direct {v1, p2}, Lcom/meishu/sdk/platform/csj/recycler/CSJVideoAdListenerImpl;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 5
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    .line 9
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdListener()Lcom/meishu/sdk/core/ad/recycler/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPatternType()I
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/16 v2, 0xf

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v1, v2, :cond_3

    .line 15
    .line 16
    if-eq v1, v3, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    if-eq v1, v2, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v0, 0xd

    .line 29
    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    const/16 v0, 0xb

    .line 32
    .line 33
    return v0

    .line 34
    :cond_3
    return v3

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_4
    :goto_0
    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdWrapper()Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getFunctionDescUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

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

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getVideoDuration()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    double-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string v0, ""

    .line 19
    .line 20
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    new-array v0, v2, [Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 34
    .line 35
    add-int/lit8 v4, v2, 0x1

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    move v2, v4

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    return-object v0

    .line 48
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public getInteractionType()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 3
    .line 4
    if-eqz v1, :cond_2

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :cond_1
    return v0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "CSJ"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->ttFeedAd:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

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

    const/4 v0, 0x0

    return v0
.end method

.method public isHasExposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->hasExposed:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNativeExpress()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const v2, 0x30d40

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->adWrapper:Lcom/meishu/sdk/platform/csj/recycler/CSJTTAdNativeWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getDrawing()I

    .line 29
    .line 30
    .line 31
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v2, 0x2

    .line 33
    if-ne v2, v1, :cond_0

    .line 34
    .line 35
    return v3

    .line 36
    :cond_0
    return v0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const v2, 0x186a0

    .line 40
    .line 41
    .line 42
    if-ne v1, v2, :cond_2

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    return v0

    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_3
    return v0
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

.method public setHasExposed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/csj/recycler/CSJRecyclerAdDataAdapter;->hasExposed:Z

    .line 2
    .line 3
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

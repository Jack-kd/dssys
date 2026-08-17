.class public Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "FunlinkATSelfRenderAd"


# instance fields
.field private a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

.field private b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

.field private c:Landroid/view/View;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->d:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->c()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->c:Landroid/view/View;

    if-eq p1, v0, :cond_2

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_1
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getDescription()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getCallToAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getVideoUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getImageUrlList()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getImageUrlList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getImageUrlList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_2
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getMainImageUrl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogo()Landroid/graphics/Bitmap;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdLogoUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    .line 115
    .line 116
    .line 117
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    :try_start_1
    new-instance v2, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;

    .line 121
    .line 122
    invoke-direct {v2, v1}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getPublisher()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppVersion()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    .line 155
    invoke-virtual {v2}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppPackageName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_6

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catchall_1
    move-exception v1

    .line 167
    goto :goto_2

    .line 168
    :cond_5
    :goto_1
    invoke-virtual {p0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/anythink/network/funlink/FunlinkATAdAppInfo;->getAppVersion()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    :cond_6
    :goto_3
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdType()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    const/4 v2, 0x3

    .line 186
    if-ne v1, v2, :cond_7

    .line 187
    .line 188
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getVideoUrl()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "1"

    .line 196
    .line 197
    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    const-string v0, "2"

    .line 201
    .line 202
    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    :goto_5
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd$a;-><init>(Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 15
    .line 16
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->c:Landroid/view/View;

    .line 19
    .line 20
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->c:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->c:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->c:Landroid/view/View;

    .line 36
    .line 37
    return-object p1
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->d:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 15
    .line 16
    return-object v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_1
    :try_start_0
    move-object v0, p1

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->getCustomAdContainer()Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 47
    .line 48
    invoke-interface {v2, v3, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->b:Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/app/Activity;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setActivity(Landroid/app/Activity;)V

    .line 72
    .line 73
    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    new-array p1, v1, [Landroid/view/View;

    .line 89
    .line 90
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, [Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    filled-new-array {p1}, [Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCtaView()Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCtaView()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    filled-new-array {p1}, [Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setCtaView([Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getMainImageView()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getMainImageView()Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    filled-new-array {p1}, [Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setImageView([Landroid/view/View;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCloseView()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCloseView()Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setCloseView(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_5
    filled-new-array {p1}, [Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;->a:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 165
    .line 166
    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_3
    return-void
.end method

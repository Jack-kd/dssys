.class public Lcom/anythink/network/meishu/MsATFeedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

.field d:J

.field e:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/meishu/MsATFeedAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->d:J

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->b:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/anythink/network/meishu/MsATFeedAd;->b()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATFeedAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

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
    invoke-direct {p0, v0}, Lcom/anythink/network/meishu/MsATFeedAd;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private b()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getIconUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getFromLogo()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x2

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v0, v3, :cond_0

    .line 38
    .line 39
    move v0, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v0, v2

    .line 52
    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 56
    .line 57
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ne v0, v1, :cond_2

    .line 67
    .line 68
    const-string v0, "1"

    .line 69
    .line 70
    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_2
    if-eq v0, v3, :cond_3

    .line 77
    .line 78
    const/16 v1, 0xc

    .line 79
    .line 80
    if-eq v0, v1, :cond_3

    .line 81
    .line 82
    const/16 v1, 0xb

    .line 83
    .line 84
    if-eq v0, v1, :cond_3

    .line 85
    .line 86
    const/16 v1, 0xd

    .line 87
    .line 88
    if-ne v0, v1, :cond_6

    .line 89
    .line 90
    :cond_3
    const-string v0, "2"

    .line 91
    .line 92
    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 100
    .line 101
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getImgUrls()[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    array-length v4, v1

    .line 108
    if-lez v4, :cond_5

    .line 109
    .line 110
    :goto_1
    array-length v4, v1

    .line 111
    if-ge v2, v4, :cond_5

    .line 112
    .line 113
    aget-object v4, v1, v2

    .line 114
    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    if-nez v2, :cond_4

    .line 125
    .line 126
    invoke-virtual {p0, v4}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 136
    .line 137
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getActionText()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 145
    .line 146
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getDuration()J

    .line 147
    .line 148
    .line 149
    move-result-wide v0

    .line 150
    long-to-double v0, v0

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoDuration(D)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 155
    .line 156
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getVideoUrl()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 164
    .line 165
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getWidth()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoWidth(I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 173
    .line 174
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getHeight()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 182
    .line 183
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAppSize()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v0

    .line 191
    iput-wide v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->d:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    .line 193
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 194
    .line 195
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-ne v0, v3, :cond_7

    .line 200
    .line 201
    new-instance v0, Lcom/anythink/network/meishu/MsATDownloadAppInfo;

    .line 202
    .line 203
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 204
    .line 205
    invoke-direct {v0, v1}, Lcom/anythink/network/meishu/MsATDownloadAppInfo;-><init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    :cond_7
    :goto_4
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/anythink/network/meishu/MsATFeedAd;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->b:Landroid/content/Context;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->e:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/anythink/network/meishu/MsATFeedAd;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->e:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->e:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->e:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->b:Landroid/content/Context;

    .line 20
    .line 21
    check-cast p1, Landroid/view/ViewGroup;

    .line 22
    .line 23
    new-instance v2, Lcom/anythink/network/meishu/MsATFeedAd$a;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/anythink/network/meishu/MsATFeedAd$a;-><init>(Lcom/anythink/network/meishu/MsATFeedAd;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, p1, p2, v2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/anythink/network/meishu/MsATFeedAd;->a()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->e:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    new-instance p1, Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATFeedAd;->b:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->e:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATFeedAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 51
    .line 52
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATFeedAd;->e:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    new-instance v0, Lcom/anythink/network/meishu/MsATFeedAd$b;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/anythink/network/meishu/MsATFeedAd$b;-><init>(Lcom/anythink/network/meishu/MsATFeedAd;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, p2, v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->bindMediaView(Landroid/view/ViewGroup;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

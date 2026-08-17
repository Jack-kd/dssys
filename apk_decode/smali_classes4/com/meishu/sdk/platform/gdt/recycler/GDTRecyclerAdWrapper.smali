.class public Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;
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


# instance fields
.field private gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

.field private gdtNativeAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

.field private isPreRender:Z

.field private nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

.field private nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->isPreRender:Z

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->adLoader:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->isPreRender:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->isPreRender:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->loadListener:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->loadNativeExpressAD(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->loadNativeUnifiedAD(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private loadNativeExpressAD(I)V
    .locals 6

    .line 1
    :try_start_0
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
    div-float/2addr v1, v2

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 67
    .line 68
    :goto_0
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
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 110
    .line 111
    :cond_1
    new-instance v2, Lcom/qq/e/ads/nativ/ADSize;

    .line 112
    .line 113
    float-to-int v0, v1

    .line 114
    const/4 v1, -0x2

    .line 115
    invoke-direct {v2, v0, v1}, Lcom/qq/e/ads/nativ/ADSize;-><init>(II)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;-><init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    .line 138
    .line 139
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-class v3, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 155
    .line 156
    move-object v1, v0

    .line 157
    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 158
    .line 159
    move-object v3, v1

    .line 160
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v4, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    move-object v5, v3

    .line 171
    move-object v3, v4

    .line 172
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    .line 187
    .line 188
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 189
    .line 190
    if-nez v0, :cond_3

    .line 191
    .line 192
    new-instance v0, Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 205
    .line 206
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qq/e/ads/nativ/NativeExpressAD;-><init>(Landroid/content/Context;Lcom/qq/e/ads/nativ/ADSize;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeExpressAD$NativeExpressADListener;)V

    .line 207
    .line 208
    .line 209
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 210
    .line 211
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 212
    .line 213
    invoke-direct {p0, v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->setDownAPPConfirmPolicy(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 217
    .line 218
    invoke-direct {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getIsVideoAutoPlay()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Lcom/qq/e/ads/nativ/NativeExpressAD;->setVideoOption(Lcom/qq/e/ads/cfg/VideoOption;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 245
    .line 246
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeExpressAD;->loadAD(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    .line 252
    .line 253
    :goto_3
    return-void
.end method

.method private loadNativeUnifiedAD(I)V
    .locals 5

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;-><init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtNativeAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getS2sb()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-class v2, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;

    .line 38
    .line 39
    new-instance v1, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtNativeAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/serverbidding/S2sbResultBean;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 72
    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    new-instance v0, Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtNativeAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

    .line 92
    .line 93
    invoke-direct {v0, v1, v2, v3}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/nativ/NativeADUnifiedListener;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->setDownAPPConfirmPolicy(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedAD;->loadData(I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private setDownAPPConfirmPolicy(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "setDownAPPConfirmPolicy"

    .line 6
    .line 7
    const-class v2, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    .line 8
    .line 9
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    sget-object v1, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->NOConfirm:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    .line 29
    .line 30
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->Default:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    .line 41
    .line 42
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtNativeAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeExpressAD:Lcom/qq/e/ads/nativ/NativeExpressAD;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->nativeUnifiedAD:Lcom/qq/e/ads/nativ/NativeUnifiedAD;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    return-void

    .line 23
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public loadAd()V
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/utils/h0;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    sget-object v0, Lcom/meishu/sdk/core/utils/h0$b;->a:Lcom/meishu/sdk/core/utils/h0;

    .line 4
    .line 5
    new-instance v1, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper$1;-><init>(Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/h0;->a(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public sendGdtWinResult(ZI)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->isPreRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const-string v2, "2"

    .line 9
    .line 10
    const-string v3, "adnId"

    .line 11
    .line 12
    const-string v4, "lossReason"

    .line 13
    .line 14
    const-string v5, "winPrice"

    .line 15
    .line 16
    const-string v6, "highestLossPrice"

    .line 17
    .line 18
    const-string v7, "expectCostPrice"

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->getAdList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtExpressAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTExpressAdListenerAdapter;->getAdList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_3

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    check-cast v8, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    new-instance v9, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v8}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v10

    .line 69
    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    invoke-interface {v8, v9}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    invoke-interface {v8, v9}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtNativeAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->getAdList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    iget-object v1, p0, Lcom/meishu/sdk/platform/gdt/recycler/GDTRecyclerAdWrapper;->gdtNativeAdapter:Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/gdt/recycler/GDTNativeUnifiedAdListenerAdapter;->getAdList()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_3

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 139
    .line 140
    if-eqz p1, :cond_2

    .line 141
    .line 142
    new-instance v9, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-interface {v8}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    invoke-interface {v8}, Lcom/qq/e/comm/pi/LADI;->getECPM()I

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    iget-object v11, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 163
    .line 164
    invoke-virtual {v11}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getAt_rate()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    iget-object v12, p0, Lcom/meishu/sdk/platform/BasePlatformLoader;->sdkAdInfo:Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 169
    .line 170
    invoke-virtual {v12}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getPrice()I

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    invoke-static {v10, p2, v11, v12}, Lcom/meishu/sdk/core/utils/u0;->a(IIII)I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    invoke-virtual {v9, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    invoke-interface {v8, v9}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-interface {v8, v9}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_3
    return-void

    .line 212
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    return-void
.end method

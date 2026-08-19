.class public Lcom/meishu/sdk/platform/ms/banner/b;
.super Lcom/meishu/sdk/platform/ms/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/ms/g<",
        "Lcom/meishu/sdk/meishu_ad/banner/a;",
        "Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;",
        "Lcom/meishu/sdk/core/ad/banner/b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/banner/BannerAdLoader;Lcom/meishu/sdk/meishu_ad/banner/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/meishu/sdk/meishu_ad/v;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Lcom/meishu/sdk/meishu_ad/v;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/banner/b;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 11

    .line 1
    new-instance v0, Lcom/meishu/sdk/platform/ms/banner/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v1, Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/meishu/sdk/platform/ms/banner/c;-><init>(Lcom/meishu/sdk/meishu_ad/banner/a;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/meishu/sdk/core/ad/banner/b;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/meishu/sdk/platform/ms/banner/b;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 22
    .line 23
    move-object v5, v0

    .line 24
    check-cast v5, Lcom/meishu/sdk/meishu_ad/banner/a;

    .line 25
    .line 26
    new-instance v4, Lcom/meishu/sdk/platform/ms/banner/a;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 33
    .line 34
    invoke-direct {v4, p0, v0}, Lcom/meishu/sdk/platform/ms/banner/a;-><init>(Lcom/meishu/sdk/platform/ms/banner/b;Lcom/meishu/sdk/core/ad/banner/b;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, v3, Lcom/meishu/sdk/meishu_ad/v;->d:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v0, v3, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget v1, Lcom/meishu/sdk/R$layout;->ms_banner_ad_layout:I

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v6, v0

    .line 65
    check-cast v6, Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;

    .line 66
    .line 67
    invoke-virtual {v6, v4}, Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;->setAdListener(Lcom/meishu/sdk/meishu_ad/banner/b;)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Lcom/meishu/sdk/core/bquery/i;

    .line 71
    .line 72
    invoke-direct {v8, v6}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    sget v0, Lcom/meishu/sdk/R$id;->ms_banner_image:I

    .line 76
    .line 77
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v7, v0

    .line 82
    check-cast v7, Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 83
    .line 84
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "AdNative"

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    array-length v0, v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_0
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v2, 0x2

    .line 105
    if-eq v0, v2, :cond_3

    .line 106
    .line 107
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    const/4 v1, 0x0

    .line 116
    if-nez v0, :cond_1

    .line 117
    .line 118
    sget v0, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 119
    .line 120
    invoke-virtual {v8, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 125
    .line 126
    const/16 v2, 0x8

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_2

    .line 141
    .line 142
    sget v0, Lcom/meishu/sdk/R$id;->ms_img_meishu_ad_tag:I

    .line 143
    .line 144
    invoke-virtual {v8, v0}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 149
    .line 150
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;

    .line 155
    .line 156
    .line 157
    :cond_2
    :goto_1
    new-instance v0, Lcom/meishu/sdk/core/view/DownloadView;

    .line 158
    .line 159
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/DownloadView;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v6, v5}, Lcom/meishu/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 166
    .line 167
    .line 168
    move-result-wide v9

    .line 169
    iput-wide v9, v3, Lcom/meishu/sdk/meishu_ad/v;->n:J

    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    aget-object v0, v0, v1

    .line 176
    .line 177
    new-instance v2, Lcom/meishu/sdk/meishu_ad/a;

    .line 178
    .line 179
    invoke-direct/range {v2 .. v8}, Lcom/meishu/sdk/meishu_ad/a;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/banner/b;Lcom/meishu/sdk/meishu_ad/banner/a;Lcom/meishu/sdk/meishu_ad/banner/MeishuBannerRootView;Lcom/meishu/sdk/core/view/gif/GifImageView;Lcom/meishu/sdk/core/bquery/i;)V

    .line 180
    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    invoke-static {v0, v2, v1}, Lcom/meishu/sdk/core/cache/a;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/y;Z)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_3
    const-string v0, "unsupported type: "

    .line 188
    .line 189
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->UNSUPPORTED_TYPE:Ljava/lang/Integer;

    .line 208
    .line 209
    const-string v1, "unsupported type"

    .line 210
    .line 211
    invoke-virtual {v3, v4, v1, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_4
    :goto_2
    const-string v0, "empty srcUrls"

    .line 216
    .line 217
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->EMPTY_SRC_URL:Ljava/lang/Integer;

    .line 221
    .line 222
    invoke-virtual {v3, v4, v0, v1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    .line 224
    .line 225
    :goto_3
    return-void
.end method

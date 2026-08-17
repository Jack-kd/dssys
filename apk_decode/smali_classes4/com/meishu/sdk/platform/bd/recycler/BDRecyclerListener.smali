.class public Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BDRecyclerListener"


# instance fields
.field private bdRecyclerAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

.field private bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

.field private count:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/recycler/a;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;)Lcom/meishu/sdk/core/ad/recycler/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;)Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;)V
    .locals 3

    .line 5
    :try_start_0
    const-string v0, "BDRecyclerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeFail: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 6
    const-string p1, "exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 2

    .line 1
    :try_start_0
    const-string p3, "BDRecyclerListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNativeFail: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    const-string p1, "exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->list:Ljava/util/List;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;->getAdPatternType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const v1, 0x30d40

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

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
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    :cond_0
    move v2, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 41
    .line 42
    const-string v0, "\u4fe1\u606f\u6d41\u6a21\u5f0f\u4e0d\u652f\u6301"

    .line 43
    .line 44
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_3
    const v1, 0x186a0

    .line 63
    .line 64
    .line 65
    if-ne v0, v1, :cond_0

    .line 66
    .line 67
    :goto_0
    const-string v0, "TimeFirstStrategy"

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v4, "onNativeLoad: isPreRender="

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    if-eqz p1, :cond_9

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_9

    .line 98
    .line 99
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/baidu/mobads/sdk/api/NativeResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    :try_start_1
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getStyleType()I

    .line 151
    .line 152
    .line 153
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    :try_start_3
    new-instance v2, Lcom/baidu/mobads/sdk/api/FeedNativeView;

    .line 157
    .line 158
    iget-object v3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-direct {v2, v3}, Lcom/baidu/mobads/sdk/api/FeedNativeView;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-eqz v3, :cond_5

    .line 176
    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Landroid/view/ViewGroup;

    .line 182
    .line 183
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catchall_1
    move-exception v1

    .line 188
    goto :goto_4

    .line 189
    :cond_5
    :goto_3
    move-object v3, v1

    .line 190
    check-cast v3, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;

    .line 191
    .line 192
    new-instance v4, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;

    .line 193
    .line 194
    invoke-direct {v4, p0, v2}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener$1;-><init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;Lcom/baidu/mobads/sdk/api/FeedNativeView;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v4}, Lcom/baidu/mobads/sdk/api/XAdNativeResponse;->setAdDislikeListener(Lcom/baidu/mobads/sdk/api/NativeResponse$AdDislikeListener;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v3}, Lcom/baidu/mobads/sdk/api/FeedNativeView;->setAdData(Lcom/baidu/mobads/sdk/api/XAdNativeResponse;)V

    .line 201
    .line 202
    .line 203
    new-instance v3, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 204
    .line 205
    iget-object v4, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 206
    .line 207
    invoke-direct {v3, v1, v2, v4}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;-><init>(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/baidu/mobads/sdk/api/FeedNativeView;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V

    .line 208
    .line 209
    .line 210
    iput-object v3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerAd:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 211
    .line 212
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-lez p1, :cond_9

    .line 225
    .line 226
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 227
    .line 228
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 232
    .line 233
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_7
    if-eqz p1, :cond_9

    .line 238
    .line 239
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_9

    .line 244
    .line 245
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 246
    .line 247
    if-eqz v0, :cond_9

    .line 248
    .line 249
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lcom/baidu/mobads/sdk/api/NativeResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    .line 255
    :try_start_5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :catch_1
    move-exception v0

    .line 270
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    .line 272
    .line 273
    :goto_5
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .line 277
    .line 278
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-ge v3, v1, :cond_8

    .line 283
    .line 284
    new-instance v1, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 285
    .line 286
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 291
    .line 292
    iget-object v4, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 293
    .line 294
    const/4 v5, 0x0

    .line 295
    invoke-direct {v1, v2, v5, v4}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;-><init>(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/baidu/mobads/sdk/api/FeedNativeView;Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :catch_2
    move-exception p1

    .line 305
    goto :goto_7

    .line 306
    :cond_8
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 307
    .line 308
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 312
    .line 313
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 314
    .line 315
    .line 316
    goto :goto_9

    .line 317
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 321
    .line 322
    const-string v0, "load error"

    .line 323
    .line 324
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    .line 325
    .line 326
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-direct {p1, v0, v1}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    .line 334
    .line 335
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 336
    .line 337
    .line 338
    goto :goto_9

    .line 339
    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :cond_9
    :goto_9
    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 3

    .line 5
    :try_start_0
    const-string v0, "BDRecyclerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeFail: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 6
    const-string p1, "exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 2

    .line 1
    :try_start_0
    const-string p3, "BDRecyclerListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNativeFail: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", msg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    const-string p1, "exception"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->bdRecyclerLoader:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerLoader;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerListener;->meishuAdListener:Lcom/meishu/sdk/core/ad/recycler/a;

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 0

    return-void
.end method

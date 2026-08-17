.class Lcom/anythink/network/baidu/BaiduATAdapter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/baidu/BaiduATAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Lcom/anythink/network/baidu/BaiduATAdapter;

.field private final d:Lcom/anythink/core/api/ATBiddingListener;

.field private final e:Lcom/anythink/core/api/ATCustomLoadListener;

.field f:I

.field g:I

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/anythink/network/baidu/BaiduATAdapter;Lcom/anythink/core/api/ATBiddingListener;Lcom/anythink/core/api/ATCustomLoadListener;IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/anythink/network/baidu/BaiduATAdapter;",
            "Lcom/anythink/core/api/ATBiddingListener;",
            "Lcom/anythink/core/api/ATCustomLoadListener;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->c:Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->d:Lcom/anythink/core/api/ATBiddingListener;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->e:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 13
    .line 14
    iput p6, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->f:I

    .line 15
    .line 16
    iput p7, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->g:I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->h:Ljava/util/Map;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATBiddingListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->d:Lcom/anythink/core/api/ATBiddingListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/BaiduATAdapter$c;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->e:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->c:Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 26
    .line 27
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/ExpressResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b:Z

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object v3, p1

    .line 23
    check-cast v3, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 24
    .line 25
    new-instance p1, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 26
    .line 27
    invoke-direct {p1, v3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-interface {v3}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getECPMLevel()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 35
    .line 36
    .line 37
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    const-wide/16 v1, 0x0

    .line 40
    .line 41
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v4, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 61
    .line 62
    invoke-static {v1, v2, v0, p1, v4}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {v3}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getPECPM()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/anythink/core/api/ATBiddingResult;->setExtra(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->a:Landroid/content/Context;

    .line 76
    .line 77
    iget v4, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->f:I

    .line 78
    .line 79
    iget v5, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->g:I

    .line 80
    .line 81
    iget-boolean v6, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b:Z

    .line 82
    .line 83
    iget-object v7, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->h:Ljava/util/Map;

    .line 84
    .line 85
    invoke-direct/range {v1 .. v7}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/ExpressResponse;IIZLjava/util/Map;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;

    .line 89
    .line 90
    invoke-direct {v0, p0, p1}, Lcom/anythink/network/baidu/BaiduATAdapter$c$a;-><init>(Lcom/anythink/network/baidu/BaiduATAdapter$c;Lcom/anythink/core/api/ATBiddingResult;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->setRenderCallback(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->startRender()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->d:Lcom/anythink/core/api/ATBiddingListener;

    .line 100
    .line 101
    instance-of v2, v0, Lcom/anythink/core/api/ATBiddingListenerExt;

    .line 102
    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    check-cast v0, Lcom/anythink/core/api/ATBiddingListenerExt;

    .line 106
    .line 107
    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListenerExt;->onC2SBiddingResultWithData(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 137
    .line 138
    .line 139
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-ge v2, v4, :cond_2

    .line 144
    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    move-object v7, v4

    .line 150
    check-cast v7, Lcom/baidu/mobads/sdk/api/ExpressResponse;

    .line 151
    .line 152
    new-instance v5, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;

    .line 153
    .line 154
    iget-object v6, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->a:Landroid/content/Context;

    .line 155
    .line 156
    iget v8, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->f:I

    .line 157
    .line 158
    iget v9, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->g:I

    .line 159
    .line 160
    iget-boolean v10, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->b:Z

    .line 161
    .line 162
    iget-object v11, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->h:Ljava/util/Map;

    .line 163
    .line 164
    invoke-direct/range {v5 .. v11}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/ExpressResponse;IIZLjava/util/Map;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v4, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;

    .line 171
    .line 172
    invoke-direct {v4, p0, v0, v3}, Lcom/anythink/network/baidu/BaiduATAdapter$c$b;-><init>(Lcom/anythink/network/baidu/BaiduATAdapter$c;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5, v4}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->setRenderCallback(Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd$RenderCallback;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/anythink/network/baidu/BaiduATNativeExpressFeedAd;->startRender()V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 189
    .line 190
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->e:Lcom/anythink/core/api/ATCustomLoadListener;

    .line 191
    .line 192
    instance-of v2, v0, Lcom/anythink/core/api/ATCustomLoadListenerExt;

    .line 193
    .line 194
    if-eqz v2, :cond_3

    .line 195
    .line 196
    check-cast v0, Lcom/anythink/core/api/ATCustomLoadListenerExt;

    .line 197
    .line 198
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, [Lcom/anythink/core/api/BaseAd;

    .line 203
    .line 204
    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCustomLoadListenerExt;->onAdDataLoadedWithAds([Lcom/anythink/core/api/BaseAd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :catchall_1
    move-exception v0

    .line 209
    move-object p1, v0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    const-string v1, "onNativeLoad failed: "

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v0, "anythink_BaiduATAdapter"

    .line 232
    .line 233
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    :cond_3
    :goto_2
    return-void

    .line 237
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->c:Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 238
    .line 239
    const-string v1, "Baidu ad return empty."

    .line 240
    .line 241
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/ExpressResponse;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/anythink/network/baidu/BaiduATBiddingNotice;

    .line 2
    .line 3
    invoke-direct {v0, p3}, Lcom/anythink/network/baidu/BaiduATBiddingNotice;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/anythink/network/baidu/BaiduATAdapter$c;->c:Lcom/anythink/network/baidu/BaiduATAdapter;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v1, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 26
    .line 27
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    .line 28
    .line 29
    .line 30
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

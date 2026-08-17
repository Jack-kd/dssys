.class Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATNativeAdapter;->startLoad(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isUnified:Z


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATNativeAdapter;ZLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$isUnified:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdFailed(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "onAdFailed errorCode\uff1a"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$isUnified:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 23
    .line 24
    new-instance v3, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 29
    .line 30
    invoke-static {v5}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-direct {v3, v4, v5, p1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$702(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v3, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 47
    .line 48
    invoke-static {v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$700(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-array v2, v2, [Lcom/anythink/core/api/BaseAd;

    .line 53
    .line 54
    aput-object v3, v2, v1

    .line 55
    .line 56
    invoke-interface {v0, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 61
    .line 62
    new-instance v3, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 67
    .line 68
    invoke-static {v5}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-direct {v3, v4, v5, p1}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1002(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeExpressAd;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1100(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v3, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 85
    .line 86
    invoke-static {v3}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    new-array v2, v2, [Lcom/anythink/core/api/BaseAd;

    .line 91
    .line 92
    aput-object v3, v2, v1

    .line 93
    .line 94
    invoke-interface {v0, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 98
    .line 99
    iget-object v1, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/octopus/ad/NativeAd;->getPrice()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    int-to-double v0, v0

    .line 114
    iget-object v2, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 115
    .line 116
    invoke-static {v2}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    int-to-double v2, v2

    .line 121
    cmpg-double v2, v0, v2

    .line 122
    .line 123
    if-gez v2, :cond_2

    .line 124
    .line 125
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)I

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 138
    .line 139
    const-string v0, "floor price"

    .line 140
    .line 141
    invoke-static {v0}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1200(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    const-string v1, "1002"

    .line 162
    .line 163
    const-string v2, "CSJ"

    .line 164
    .line 165
    invoke-virtual {p1, v0, v1, v2}, Lcom/octopus/ad/NativeAd;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_2
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 170
    .line 171
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    new-instance v4, Lcom/octopus/ad/topon/OctopusBiddingNotice;

    .line 180
    .line 181
    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 182
    .line 183
    invoke-static {v5}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-direct {v4, v5}, Lcom/octopus/ad/topon/OctopusBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    .line 188
    .line 189
    .line 190
    iget-boolean v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$isUnified:Z

    .line 191
    .line 192
    if-eqz v5, :cond_3

    .line 193
    .line 194
    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 195
    .line 196
    new-instance v6, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    .line 197
    .line 198
    iget-object v7, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    .line 199
    .line 200
    iget-object v8, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 201
    .line 202
    invoke-static {v8}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-direct {v6, v7, v8, p1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v5, v6}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$702(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 213
    .line 214
    iget-object p1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 215
    .line 216
    invoke-static {v0, v1, v3, v4, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 221
    .line 222
    invoke-static {v1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$700(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_3
    iget-object v5, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 231
    .line 232
    new-instance v6, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 233
    .line 234
    iget-object v7, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->val$context:Landroid/content/Context;

    .line 235
    .line 236
    iget-object v8, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 237
    .line 238
    invoke-static {v8}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/NativeAd;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-direct {v6, v7, v8, p1}, Lcom/octopus/ad/topon/OctopusATNativeExpressAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v5, v6}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1002(Lcom/octopus/ad/topon/OctopusATNativeAdapter;Lcom/octopus/ad/topon/OctopusATNativeExpressAd;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 249
    .line 250
    iget-object p1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 251
    .line 252
    invoke-static {v0, v1, v3, v4, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATNativeAdapter;

    .line 257
    .line 258
    invoke-static {v1}, Lcom/octopus/ad/topon/OctopusATNativeAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATNativeAdapter;)Lcom/octopus/ad/topon/OctopusATNativeExpressAd;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-interface {p1, v0, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 263
    .line 264
    .line 265
    :cond_4
    return-void
.end method

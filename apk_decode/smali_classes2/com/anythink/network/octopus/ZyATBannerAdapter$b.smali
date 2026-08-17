.class Lcom/anythink/network/octopus/ZyATBannerAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/network/octopus/ZyATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATBannerAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdFailed(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "i:"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/anythink/network/octopus/ZyATBannerAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    iget v1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->a:I

    .line 28
    .line 29
    invoke-interface {p1, v1}, Lcom/octopus/ad/NativeAdResponse;->setAdWidth(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/anythink/network/octopus/ZyATBannerAdapter;Lcom/octopus/ad/NativeAdResponse;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/octopus/ad/NativeAdResponse;->getNativeView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v1, p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/anythink/network/octopus/ZyATBannerAdapter;Landroid/view/View;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->b(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 55
    .line 56
    iget-boolean v1, p1, Lcom/anythink/network/octopus/ZyATBannerAdapter;->b:Z

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object p1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/octopus/ad/BannerAd;->getPrice()I

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/octopus/ad/BannerAd;->getPrice()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-gtz p1, :cond_0

    .line 84
    .line 85
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "error price: "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBidResult(Lcom/anythink/core/api/ATBiddingResult;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_0
    new-instance v1, Lcom/anythink/network/octopus/ZyATBiddingNotice;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 117
    .line 118
    invoke-static {v2}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->a(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-direct {v1, v2}, Lcom/anythink/network/octopus/ZyATBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 126
    .line 127
    iget-object v2, v2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 128
    .line 129
    int-to-double v3, p1

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v5

    .line 139
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 150
    .line 151
    invoke-static {v3, v4, p1, v1, v0}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-interface {v2, p1, v0}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->c(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_2

    .line 165
    .line 166
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 167
    .line 168
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATBannerAdapter;->d(Lcom/anythink/network/octopus/ZyATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const/4 v0, 0x0

    .line 173
    new-array v0, v0, [Lcom/anythink/core/api/BaseAd;

    .line 174
    .line 175
    invoke-interface {p1, v0}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 176
    .line 177
    .line 178
    :cond_2
    return-void

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 180
    .line 181
    const-string v1, "mBannerView is null"

    .line 182
    .line 183
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_4
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATBannerAdapter$b;->b:Lcom/anythink/network/octopus/ZyATBannerAdapter;

    .line 188
    .line 189
    const-string v1, "mBannerAd is null"

    .line 190
    .line 191
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

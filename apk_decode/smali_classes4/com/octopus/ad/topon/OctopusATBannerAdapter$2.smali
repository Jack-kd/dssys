.class Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATBannerAdapter;->startLoadBanner(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->val$context:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$400(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$500(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

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
    const-string v3, "onAdFailedToLoad errorCode\uff1a"

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
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$600(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$700(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Lcom/anythink/core/api/BaseAd;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/octopus/ad/BannerAd;->getPrice()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-double v0, v0

    .line 41
    iget-object v2, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-double v2, v2

    .line 48
    cmpg-double v2, v0, v2

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-gez v2, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)I

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 66
    .line 67
    const-string v0, "floor price"

    .line 68
    .line 69
    invoke-static {v0}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p1, v0, v3}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$900(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const-string v1, "1002"

    .line 89
    .line 90
    const-string v2, "CSJ"

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1, v2}, Lcom/octopus/ad/BannerAd;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    sget-object v2, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    .line 97
    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-instance v5, Lcom/octopus/ad/topon/OctopusBiddingNotice;

    .line 107
    .line 108
    iget-object v6, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 109
    .line 110
    invoke-static {v6}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-direct {v5, v6}, Lcom/octopus/ad/topon/OctopusBiddingNotice;-><init>(Lcom/octopus/ad/IBidding;)V

    .line 115
    .line 116
    .line 117
    iget-object v6, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 118
    .line 119
    iget-object v6, v6, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 120
    .line 121
    invoke-static {v0, v1, v4, v5, v2}, Lcom/anythink/core/api/ATBiddingResult;->success(DLjava/lang/String;Lcom/anythink/core/api/ATBiddingNotice;Lcom/anythink/core/api/ATAdConst$CURRENCY;)Lcom/anythink/core/api/ATBiddingResult;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v6, v0, v3}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$800(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/octopus/ad/BannerAd;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/octopus/ad/BannerAd;->isValid()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->val$context:Landroid/content/Context;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdResponse;->setAdWidth(I)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$2;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->showBannerAd(Lcom/octopus/ad/NativeAdResponse;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    return-void
.end method

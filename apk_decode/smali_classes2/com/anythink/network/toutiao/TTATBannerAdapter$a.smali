.class Lcom/anythink/network/toutiao/TTATBannerAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onNativeExpressAdLoad(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 22
    .line 23
    iget v0, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:I

    .line 24
    .line 25
    if-lez v0, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 32
    .line 33
    iget v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->h:I

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setSlideIntervalTime(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setSlideIntervalTime(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->b(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 62
    .line 63
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, p1, v3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->w(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 108
    .line 109
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 113
    .line 114
    iget-object p1, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 115
    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 123
    .line 124
    iget-boolean v3, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Z

    .line 125
    .line 126
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->y(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 143
    .line 144
    iget-object v7, p1, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 145
    .line 146
    new-array v8, v1, [Lcom/anythink/core/api/BaseAd;

    .line 147
    .line 148
    invoke-virtual/range {v2 .. v8}, Lcom/anythink/network/toutiao/TTATInitManager;->notifyAdDataLoad(ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/TTClientBidding;Lcom/anythink/core/api/ATCustomLoadListener;Lcom/anythink/core/api/ATBiddingListener;[Lcom/anythink/core/api/BaseAd;)V

    .line 149
    .line 150
    .line 151
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 152
    .line 153
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$a;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 162
    .line 163
    const-string v0, ""

    .line 164
    .line 165
    const-string v1, "Return Ad list is empty."

    .line 166
    .line 167
    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

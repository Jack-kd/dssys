.class Lcom/anythink/network/toutiao/TTATBannerAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


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
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    check-cast p2, Landroid/view/ViewGroup;

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    instance-of p2, p1, Landroid/app/Activity;

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 57
    .line 58
    check-cast p1, Landroid/app/Activity;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {p2, p1, v1, v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    instance-of p2, p2, Landroid/app/Activity;

    .line 81
    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/app/Activity;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {p2, p1, v1, v0}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :goto_1
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 109
    .line 110
    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v1, "bindDislike fail:"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    :goto_2
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 139
    .line 140
    iget-object p2, p1, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 141
    .line 142
    if-eqz p2, :cond_4

    .line 143
    .line 144
    iget-boolean p1, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->k:Z

    .line 145
    .line 146
    if-nez p1, :cond_4

    .line 147
    .line 148
    invoke-interface {p2}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 152
    .line 153
    const/4 p2, 0x1

    .line 154
    iput-boolean p2, p1, Lcom/anythink/network/toutiao/TTATBannerAdapter;->k:Z

    .line 155
    .line 156
    :cond_4
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p3, ""

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p1, p3, p2}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->x(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 10
    .line 11
    iput-object p1, p2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->e:Landroid/view/View;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->k:Z

    .line 15
    .line 16
    iget-boolean p3, p2, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l:Z

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 25
    .line 26
    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->m(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p3, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 31
    .line 32
    invoke-static {p3}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->a(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 39
    .line 40
    invoke-virtual {p1, p2, p3, v0}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/TTClientBidding;Lcom/anythink/core/api/ATBiddingListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->z(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$b;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    .line 51
    .line 52
    invoke-static {p2}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->A(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    new-array p1, p1, [Lcom/anythink/core/api/BaseAd;

    .line 57
    .line 58
    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 59
    .line 60
    .line 61
    :catchall_0
    :cond_1
    return-void
.end method

.class Lcom/anythink/network/sigmob/SigmobATAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/natives/WindNativeUnifiedAd$WindNativeAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/sigmob/SigmobATAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/sigmob/SigmobATAdapter;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Lcom/anythink/network/sigmob/SigmobATAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2, v0, p1}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Lcom/anythink/network/sigmob/SigmobATAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onAdLoad(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/windad/natives/WindNativeAdData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Lcom/anythink/network/sigmob/SigmobATAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/sigmob/windad/natives/WindNativeAdData;

    .line 41
    .line 42
    new-instance v1, Lcom/anythink/network/sigmob/SigmobATNativeAd;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->a:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 47
    .line 48
    invoke-static {v3}, Lcom/anythink/network/sigmob/SigmobATAdapter;->b(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {v1, v2, v0, v3}, Lcom/anythink/network/sigmob/SigmobATNativeAd;-><init>(Landroid/content/Context;Lcom/sigmob/windad/natives/WindNativeAdData;Lcom/sigmob/windad/natives/WindNativeUnifiedAd;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    new-array p1, p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 64
    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, [Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 72
    .line 73
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->c(Lcom/anythink/network/sigmob/SigmobATAdapter;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 80
    .line 81
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->b(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_1

    .line 86
    .line 87
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 88
    .line 89
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->b(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->getEcpm()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 98
    .line 99
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->b(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Lcom/sigmob/windad/natives/WindNativeUnifiedAd;->getCurrency()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 108
    .line 109
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Lcom/anythink/network/sigmob/SigmobATAdapter;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 114
    .line 115
    iget-object v3, p2, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 116
    .line 117
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->b(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/sigmob/windad/natives/WindNativeUnifiedAd;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const/4 p2, 0x0

    .line 122
    aget-object v5, p1, p2

    .line 123
    .line 124
    invoke-static/range {v0 .. v5}, Lcom/anythink/network/sigmob/SigmobATInitManager;->onC2SBiddingResultWithCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/api/ATBiddingListener;Ljava/lang/Object;Lcom/anythink/core/api/BaseAd;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_1
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 129
    .line 130
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->d(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    if-eqz p2, :cond_3

    .line 135
    .line 136
    iget-object p2, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 137
    .line 138
    invoke-static {p2}, Lcom/anythink/network/sigmob/SigmobATAdapter;->e(Lcom/anythink/network/sigmob/SigmobATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p2, p1}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/sigmob/SigmobATAdapter$a;->b:Lcom/anythink/network/sigmob/SigmobATAdapter;

    .line 147
    .line 148
    const-string p2, ""

    .line 149
    .line 150
    const-string v0, "no ad return"

    .line 151
    .line 152
    invoke-static {p1, p2, v0}, Lcom/anythink/network/sigmob/SigmobATAdapter;->a(Lcom/anythink/network/sigmob/SigmobATAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_3
    return-void
.end method

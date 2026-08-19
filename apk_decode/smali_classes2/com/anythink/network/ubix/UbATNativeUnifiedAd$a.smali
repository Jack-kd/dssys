.class Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    :goto_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ubix/ssp/open/AdError;->getErrorMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const-string p1, "unknown"

    .line 17
    .line 18
    :goto_1
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->b(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v1, v0, p1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public onAdLoadSucceed(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v2, 0x0

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 39
    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v6, Lcom/anythink/network/ubix/UbATFeedAd;

    .line 44
    .line 45
    invoke-direct {v6, v5}, Lcom/anythink/network/ubix/UbATFeedAd;-><init>(Lcom/ubix/ssp/open/nativee/NativeAd;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    invoke-interface {v5}, Lcom/ubix/ssp/open/nativee/NativeAd;->getPrice()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    move-object v2, v5

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v1, "native list contains only null items"

    .line 80
    .line 81
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->b(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    long-to-double v3, v3

    .line 108
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;D)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;->a:Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v1, "native list is null"

    .line 127
    .line 128
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    return-void
.end method

.class Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/octopus/ZyATNativeFeedAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATNativeFeedAd;ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 2
    .line 3
    iput p2, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->b:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->a(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->c(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->c(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

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
    const-string v3, "i:"

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
    move-result-object p1

    .line 41
    invoke-interface {v0, v1, p1}, Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/octopus/ad/NativeAdResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->a(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/octopus/ad/NativeAd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget v0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->a:I

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdResponse;->setAdWidth(I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/octopus/ad/NativeAd;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/octopus/ad/NativeAd;->getPrice()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->a(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->d(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    new-instance v2, Lcom/anythink/network/octopus/ZyATExpressAd;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 56
    .line 57
    invoke-static {v3}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/octopus/ad/NativeAd;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-direct {v2, v3, p1}, Lcom/anythink/network/octopus/ZyATExpressAd;-><init>(Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v2, Lcom/anythink/network/octopus/ZyATFeedAd;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->b:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v4, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 70
    .line 71
    invoke-static {v4}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/octopus/ad/NativeAd;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v2, v3, v4, p1}, Lcom/anythink/network/octopus/ZyATFeedAd;-><init>(Landroid/content/Context;Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->c(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->c(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 96
    .line 97
    invoke-static {v2}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/octopus/ad/NativeAd;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    int-to-double v3, v1

    .line 102
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;->onNativeAdLoadSuccess(Ljava/util/List;Lcom/octopus/ad/IBidding;D)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->c(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;->c:Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->c(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v0, ""

    .line 121
    .line 122
    const-string v1, "onAdLoaded nativeAdResponse is null"

    .line 123
    .line 124
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void
.end method

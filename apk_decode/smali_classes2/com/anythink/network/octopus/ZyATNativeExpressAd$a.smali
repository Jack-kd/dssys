.class Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/DrawAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/octopus/ZyATNativeExpressAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/octopus/ZyATNativeExpressAd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 2
    .line 3
    iput p2, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->a:I

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->a(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->c(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->c(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->a(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->b(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/octopus/ad/DrawAd;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->a:I

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdResponse;->setAdWidth(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->b(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/octopus/ad/DrawAd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/octopus/ad/DrawAd;->getPrice()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->a(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/anythink/network/octopus/ZyATDrawExpressAd;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 48
    .line 49
    invoke-static {v3}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->b(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/octopus/ad/DrawAd;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v2, v3, p1}, Lcom/anythink/network/octopus/ZyATDrawExpressAd;-><init>(Lcom/octopus/ad/DrawAd;Lcom/octopus/ad/NativeAdResponse;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->c(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->c(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v2, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 74
    .line 75
    invoke-static {v2}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->b(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/octopus/ad/DrawAd;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    int-to-double v3, v0

    .line 80
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;->onNativeAdLoadSuccess(Ljava/util/List;Lcom/octopus/ad/IBidding;D)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->c(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeExpressAd$a;->b:Lcom/anythink/network/octopus/ZyATNativeExpressAd;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/anythink/network/octopus/ZyATNativeExpressAd;->c(Lcom/anythink/network/octopus/ZyATNativeExpressAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, ""

    .line 99
    .line 100
    const-string v1, "onAdLoaded nativeAdResponse is null"

    .line 101
    .line 102
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    return-void
.end method

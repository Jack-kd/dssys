.class Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string p1, "unknown error"

    .line 30
    .line 31
    :goto_1
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, v0, p1}, Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, ""

    .line 18
    .line 19
    const-string v1, "nativeAd is null"

    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->b(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "1"

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Lcom/anythink/network/funlink/FunlinkATExpressAd;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-direct {v1, v2, p1}, Lcom/anythink/network/funlink/FunlinkATExpressAd;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v1, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->a:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {v1, v2, p1}, Lcom/anythink/network/funlink/FunlinkATSelfRenderAd;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-interface {p1}, Lcom/fl/saas/adx/api/MediaExtraInfo;->getECPM()I

    .line 68
    .line 69
    .line 70
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    int-to-long v1, v1

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    invoke-static {}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    const-wide/16 v1, 0x0

    .line 81
    .line 82
    :goto_1
    iget-object v3, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    iget-object v3, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;->b:Lcom/anythink/network/funlink/FunlinkATMixNativeAd;

    .line 91
    .line 92
    invoke-static {v3}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v3, v0, p1, v1, v2}, Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;J)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

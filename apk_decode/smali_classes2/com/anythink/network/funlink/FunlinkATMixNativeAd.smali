.class public Lcom/anythink/network/funlink/FunlinkATMixNativeAd;
.super Lcom/anythink/network/funlink/FunlinkATFeedAd;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "FunlinkATMixNativeAd"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

.field private c:Lcom/fl/saas/adx/api/mixNative/NativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/funlink/FunlinkATFeedAd;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->b:Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->b:Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    return-object p1
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->c:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p3, "key_height"

    .line 2
    .line 3
    const-string v0, "key_width"

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Lcom/fl/saas/adx/api/AdParams$Builder;

    .line 6
    .line 7
    invoke-direct {v1, p2}, Lcom/fl/saas/adx/api/AdParams$Builder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p2, "1"

    .line 11
    .line 12
    iget-object v2, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    if-eqz p2, :cond_3

    .line 19
    .line 20
    const/4 p2, -0x1

    .line 21
    if-eqz p4, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move v0, p2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v0, p2

    .line 45
    :goto_0
    if-eqz p4, :cond_1

    .line 46
    .line 47
    :try_start_2
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :catchall_1
    :cond_1
    :goto_1
    if-lez p2, :cond_2

    .line 66
    .line 67
    int-to-float p2, p2

    .line 68
    :try_start_3
    invoke-static {p1, p2}, Lcom/anythink/core/api/ATSDKUtils;->px2dip(Landroid/content/Context;F)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    int-to-float p2, p2

    .line 73
    invoke-virtual {v1, p2}, Lcom/fl/saas/adx/api/AdParams$Builder;->setExpressHeight(F)Lcom/fl/saas/adx/api/AdParams$Builder;

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_2
    move-exception p1

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    :goto_2
    if-lez v0, :cond_3

    .line 80
    .line 81
    int-to-float p2, v0

    .line 82
    invoke-static {p1, p2}, Lcom/anythink/core/api/ATSDKUtils;->px2dip(Landroid/content/Context;F)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    int-to-float p2, p2

    .line 87
    invoke-virtual {v1, p2}, Lcom/fl/saas/adx/api/AdParams$Builder;->setExpressWidth(F)Lcom/fl/saas/adx/api/AdParams$Builder;

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {v1}, Lcom/fl/saas/adx/api/AdParams$Builder;->build()Lcom/fl/saas/adx/api/AdParams;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance p3, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;

    .line 95
    .line 96
    invoke-direct {p3, p0, p1}, Lcom/anythink/network/funlink/FunlinkATMixNativeAd$a;-><init>(Lcom/anythink/network/funlink/FunlinkATMixNativeAd;Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p1, p2, p3}, Lcom/fl/saas/adx/api/FLSDK;->loadMixNative(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :goto_3
    iget-object p2, p0, Lcom/anythink/network/funlink/FunlinkATMixNativeAd;->b:Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;

    .line 104
    .line 105
    if-eqz p2, :cond_4

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string p4, "funlink loadAd exception: "

    .line 113
    .line 114
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const-string p3, ""

    .line 129
    .line 130
    invoke-interface {p2, p3, p1}, Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_4
    return-void
.end method

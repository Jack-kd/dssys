.class public Lcom/anythink/network/ubix/UbATNativeExpressAd;
.super Lcom/anythink/network/ubix/UbATNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/anythink/network/ubix/UbATNativeAd$AdListener;


# direct methods
.method public constructor <init>(Lcom/anythink/network/ubix/UbATNativeAd$AdListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/ubix/UbATNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/ubix/UbATNativeExpressAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b:Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 13
    .line 14
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b:Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/network/ubix/UbATNativeExpressAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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
    if-eqz p4, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    invoke-static {p1, v0}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    :cond_0
    const/4 v0, -0x1

    .line 32
    :goto_0
    if-eqz p4, :cond_1

    .line 33
    .line 34
    :try_start_1
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    int-to-float p3, p3

    .line 53
    invoke-static {p1, p3}, Lcom/anythink/network/ubix/UbATNativeExpressAd;->a(Landroid/content/Context;F)I

    .line 54
    .line 55
    .line 56
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    :cond_1
    const/4 p3, 0x0

    .line 59
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lcom/ubix/ssp/open/AdSize;

    .line 67
    .line 68
    if-gtz p3, :cond_2

    .line 69
    .line 70
    const/4 p3, -0x2

    .line 71
    :cond_2
    invoke-direct {v1, v0, p3}, Lcom/ubix/ssp/open/AdSize;-><init>(II)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createNativeExpressAd()Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-static {p4}, Lcom/anythink/network/ubix/UbATConst;->toExtraMap(Ljava/util/Map;)Ljava/util/HashMap;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    invoke-interface {p3, p4}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;->setExtraInfo(Ljava/util/HashMap;)V

    .line 83
    .line 84
    .line 85
    new-instance p4, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;

    .line 86
    .line 87
    invoke-direct {p4, p0}, Lcom/anythink/network/ubix/UbATNativeExpressAd$a;-><init>(Lcom/anythink/network/ubix/UbATNativeExpressAd;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p3, p1, p2, v1, p4}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;->loadNativeExpressAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/AdSize;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressAdListener;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p3}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressManager;->loadAd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_2
    move-exception p1

    .line 98
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATNativeExpressAd;->b:Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string p4, "loadAd exception:"

    .line 108
    .line 109
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string p3, ""

    .line 124
    .line 125
    invoke-interface {p2, p3, p1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    :goto_2
    return-void
.end method

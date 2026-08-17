.class public Lcom/anythink/network/ubix/UbATNativeUnifiedAd;
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
    const-class v0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->b:Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Lcom/anythink/network/ubix/UbATNativeAd$AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->b:Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->a:Ljava/lang/String;

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
    .locals 0
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
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/ubix/ssp/open/manager/UBiXAdManager;->createNativeAd()Lcom/ubix/ssp/open/nativee/UBiXNativeManager;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {p4}, Lcom/anythink/network/ubix/UbATConst;->toExtraMap(Ljava/util/Map;)Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-interface {p3, p4}, Lcom/ubix/ssp/open/nativee/UBiXNativeManager;->setExtraInfo(Ljava/util/HashMap;)V

    .line 17
    .line 18
    .line 19
    new-instance p4, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;

    .line 20
    .line 21
    invoke-direct {p4, p0}, Lcom/anythink/network/ubix/UbATNativeUnifiedAd$a;-><init>(Lcom/anythink/network/ubix/UbATNativeUnifiedAd;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p1, p2, p4}, Lcom/ubix/ssp/open/nativee/UBiXNativeManager;->loadNativeAd(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/open/nativee/UBiXNativeAdListener;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p3}, Lcom/ubix/ssp/open/nativee/UBiXNativeManager;->loadAd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    iget-object p2, p0, Lcom/anythink/network/ubix/UbATNativeUnifiedAd;->b:Lcom/anythink/network/ubix/UbATNativeAd$AdListener;

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p4, "loadAd exception:"

    .line 42
    .line 43
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p3, ""

    .line 58
    .line 59
    invoke-interface {p2, p3, p1}, Lcom/anythink/network/ubix/UbATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

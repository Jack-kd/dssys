.class public Lcom/anythink/network/octopus/ZyATNativeFeedAd;
.super Lcom/anythink/network/octopus/ZyATNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

.field c:Z

.field private final d:Z

.field private e:Lcom/octopus/ad/NativeAd;


# direct methods
.method public constructor <init>(ZZLcom/anythink/network/octopus/ZyATNativeAd$AdListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/network/octopus/ZyATNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b:Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->c:Z

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->d:Z

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/octopus/ad/NativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->e:Lcom/octopus/ad/NativeAd;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b:Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/octopus/ZyATNativeFeedAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->d:Z

    .line 2
    .line 3
    return p0
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
    const-string p3, "key_width"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    :try_start_1
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :catchall_0
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    new-instance p3, Lcom/octopus/ad/NativeAd;

    .line 39
    .line 40
    new-instance p4, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;

    .line 41
    .line 42
    invoke-direct {p4, p0, v0, p1}, Lcom/anythink/network/octopus/ZyATNativeFeedAd$a;-><init>(Lcom/anythink/network/octopus/ZyATNativeFeedAd;ILandroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p3, p1, p2, p4}, Lcom/octopus/ad/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/NativeAdListener;)V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->e:Lcom/octopus/ad/NativeAd;

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p3, p1}, Lcom/octopus/ad/NativeAd;->openAdInNativeBrowser(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->e:Lcom/octopus/ad/NativeAd;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/octopus/ad/NativeAd;->loadAd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    iget-object p2, p0, Lcom/anythink/network/octopus/ZyATNativeFeedAd;->b:Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;

    .line 62
    .line 63
    if-eqz p2, :cond_1

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string p4, "loadAd with exception:"

    .line 71
    .line 72
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p3, ""

    .line 87
    .line 88
    invoke-interface {p2, p3, p1}, Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;->onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    :goto_0
    return-void
.end method

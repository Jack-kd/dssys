.class public Lcom/anythink/network/baidu/BaiduATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "BaiduATNativeAd"


# instance fields
.field protected a:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field protected b:Landroid/content/Context;

.field c:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

.field d:Z

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/baidu/mobads/sdk/api/XNativeView;

.field h:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;ZZLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->e:Z

    .line 5
    invoke-virtual {p0, p1, p2, p5}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;Ljava/util/Map;)V

    .line 6
    iput-boolean p3, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->d:Z

    if-eqz p4, :cond_1

    .line 7
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->f:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->f:Ljava/util/Map;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->f:Ljava/util/Map;

    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPECPM()Ljava/lang/String;

    move-result-object p2

    const-string p3, "en_p"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->f:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/baidu/BaiduATNativeAd;->i:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/View;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eq p1, v1, :cond_1

    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 20
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 9
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eq p1, v0, :cond_1

    .line 10
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 13
    invoke-direct {p0, v1, p2}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 14
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/baidu/BaiduATNativeAd;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->e:Z

    return p1
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eq p1, v0, :cond_2

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/anythink/network/baidu/BaiduATNativeAd;->b(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/baidu/BaiduATNativeAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->e:Z

    return p0
.end method

.method public static synthetic c(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/baidu/BaiduATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->b:Landroid/content/Context;

    .line 5
    new-instance v0, Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    const/16 v1, 0x32

    invoke-direct {v0, p1, v1}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->c:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 6
    iput-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 7
    invoke-static {}, Lcom/anythink/network/baidu/BaiduATInitManager;->getInstance()Lcom/anythink/network/baidu/BaiduATInitManager;

    move-result-object p1

    const-string v0, "request_id"

    invoke-interface {p2, v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lcom/anythink/network/baidu/BaiduATInitManager;->a(Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->f:Ljava/util/Map;

    .line 8
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-virtual {p0, p1}, Lcom/anythink/network/baidu/BaiduATNativeAd;->setData(Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/anythink/network/baidu/BaiduATNativeAd;->b(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeItem(Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeViewClickListener(Lcom/baidu/mobads/sdk/api/XNativeView$INativeViewClickListener;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 17
    .line 18
    :cond_0
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->b:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->c:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->clear()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->c:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 10
    .line 11
    if-ne p1, v0, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    new-instance p1, Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeItem(Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->h:Ljava/lang/Boolean;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    sget-object p1, Lcom/anythink/core/api/ATSDKGlobalSetting;->isGlobalMute:Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->d:Z

    .line 59
    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 63
    .line 64
    new-instance v0, Lcom/anythink/network/baidu/BaiduATNativeAd$c;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATNativeAd$c;-><init>(Lcom/anythink/network/baidu/BaiduATNativeAd;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeViewClickListener(Lcom/baidu/mobads/sdk/api/XNativeView$INativeViewClickListener;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    const/4 p1, 0x0

    .line 76
    return-object p1
.end method

.method public getDownloadProgress()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public getDownloadStatus()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    if-ltz v0, :cond_1

    .line 15
    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    if-gt v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    return v0

    .line 22
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    const/4 v0, 0x6

    .line 27
    return v0

    .line 28
    :pswitch_1
    const/4 v0, 0x2

    .line 29
    return v0

    .line 30
    :pswitch_2
    const/4 v0, 0x7

    .line 31
    return v0

    .line 32
    :pswitch_3
    const/4 v0, 0x5

    .line 33
    return v0

    .line 34
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 35
    return v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMainImageHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getMainImageWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getNativeAdInteractionType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_2

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    return v2

    .line 21
    :cond_2
    return v1

    .line 22
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/anythink/network/baidu/BaiduATNativeAd$d;

    .line 6
    .line 7
    invoke-direct {v1, p0, p3}, Lcom/anythink/network/baidu/BaiduATNativeAd$d;-><init>(Lcom/anythink/network/baidu/BaiduATNativeAd;Lcom/anythink/core/api/ATShakeViewListener;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->renderShakeView(IILcom/baidu/mobads/sdk/api/NativeResponse$AdShakeViewListener;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/anythink/network/baidu/BaiduATNativeAd$e;

    .line 6
    .line 7
    invoke-direct {v1, p0, p4}, Lcom/anythink/network/baidu/BaiduATNativeAd$e;-><init>(Lcom/anythink/network/baidu/BaiduATNativeAd;Lcom/anythink/core/api/ATShakeViewListener;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->renderSlideView(IIILcom/baidu/mobads/sdk/api/NativeResponse$AdShakeViewListener;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public impressionTrack(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->recordImpression(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdImpression()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    instance-of v1, p2, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move-object v1, p2

    .line 15
    check-cast v1, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->getCreativeClickViewList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    move-object v0, v1

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    :cond_1
    invoke-direct {p0, p1}, Lcom/anythink/network/baidu/BaiduATNativeAd;->a(Landroid/view/View;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 41
    .line 42
    new-instance v2, Lcom/anythink/network/baidu/BaiduATNativeAd$a;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/anythink/network/baidu/BaiduATNativeAd$a;-><init>(Lcom/anythink/network/baidu/BaiduATNativeAd;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, p1, p2, v0, v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/baidu/mobads/sdk/api/XNativeView;->render()V

    .line 55
    .line 56
    .line 57
    :cond_4
    :try_start_0
    iget-object p2, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->c:Lcom/anythink/network/baidu/impression/BDImpressionTracker;

    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    new-instance v0, Lcom/anythink/network/baidu/BaiduATNativeAd$b;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/anythink/network/baidu/BaiduATNativeAd$b;-><init>(Lcom/anythink/network/baidu/BaiduATNativeAd;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v0}, Lcom/anythink/network/baidu/impression/BDImpressionTracker;->addView(Landroid/view/View;Lcom/anythink/network/baidu/impression/BDImpressionInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :catchall_0
    :cond_5
    return-void
.end method

.method public setData(Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicWidth()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageHeight(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicWidth()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageWidth(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicHeight()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageHeight(I)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicWidth()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageWidth(I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicHeight()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageHeight(I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getVideoUrl()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDuration()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    int-to-double v2, v0

    .line 109
    invoke-virtual {p0, v2, v3}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoDuration(D)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdChoiceIconUrl(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getActButtonString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBrandName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdvertiserName(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    const/4 v2, 0x1

    .line 152
    const/4 v3, 0x2

    .line 153
    if-ne v0, v2, :cond_2

    .line 154
    .line 155
    move v1, v3

    .line 156
    :cond_2
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-ne v0, v3, :cond_3

    .line 161
    .line 162
    move v1, v2

    .line 163
    :cond_3
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const/4 v4, 0x3

    .line 168
    if-ne v0, v4, :cond_4

    .line 169
    .line 170
    move v1, v4

    .line 171
    :cond_4
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-ne v0, v3, :cond_5

    .line 179
    .line 180
    new-instance v0, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;

    .line 181
    .line 182
    invoke-direct {v0, p1}, Lcom/anythink/network/baidu/BaiduATDownloadAppInfo;-><init>(Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdMaterialType()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    sget-object v0, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->getValue()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_6

    .line 203
    .line 204
    const-string p1, "1"

    .line 205
    .line 206
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_6
    const-string p1, "2"

    .line 210
    .line 211
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 212
    .line 213
    :goto_1
    iget-object p1, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 214
    .line 215
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eq p1, v2, :cond_9

    .line 220
    .line 221
    if-eq p1, v3, :cond_8

    .line 222
    .line 223
    if-eq p1, v4, :cond_7

    .line 224
    .line 225
    return-void

    .line 226
    :cond_7
    invoke-virtual {p0, v4}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_8
    invoke-virtual {p0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 231
    .line 232
    .line 233
    return-void

    .line 234
    :cond_9
    invoke-virtual {p0, v3}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->h:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/anythink/network/baidu/BaiduATNativeAd;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

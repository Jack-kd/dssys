.class public Lcom/anythink/network/toutiao/TTATNativeAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/network/toutiao/TTATNativeAd$d;
    }
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Z

.field e:Lcom/anythink/network/toutiao/TTATCustomVideo;

.field f:Z

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field h:D

.field i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeAd;ZLandroid/graphics/Bitmap;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->d:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->b:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->c:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 16
    .line 17
    iput-boolean p7, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->f:Z

    .line 18
    .line 19
    new-instance p1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->g:Ljava/util/Map;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 27
    .line 28
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 35
    .line 36
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string p3, "gm_policy"

    .line 41
    .line 42
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const/4 p3, 0x0

    .line 53
    invoke-virtual {p2, p1, p3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p4, p5, p6}, Lcom/anythink/network/toutiao/TTATNativeAd;->setAdData(ZLandroid/graphics/Bitmap;I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/anythink/network/toutiao/TTATNativeAd$c;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/toutiao/TTATNativeAd$c;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->bindDislikeListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 3
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/toutiao/TTATNativeAd;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lcom/anythink/network/toutiao/TTATNativeAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->destroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->destroy()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->b:Landroid/content/Context;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->i:Landroid/view/View;

    .line 22
    .line 23
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->i:Landroid/view/View;

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->i:Landroid/view/View;

    .line 12
    .line 13
    return-object p1
.end method

.method public getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->e:Lcom/anythink/network/toutiao/TTATCustomVideo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoProgress()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->h:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 8

    .line 1
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v5, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    instance-of v0, p2, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    move-object v0, p2

    .line 16
    check-cast v0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->getCreativeClickViewList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p1, v0

    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_0
    :goto_0
    move-object v0, p2

    .line 33
    check-cast v0, Lcom/anythink/nativead/api/ATNativePrepareExInfo;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNativePrepareExInfo;->getDirectDownloadViewList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    move-object v2, p2

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p2, p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_3
    new-instance v7, Lcom/anythink/network/toutiao/TTATNativeAd$d;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-direct {v7, p0, p2}, Lcom/anythink/network/toutiao/TTATNativeAd$d;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;Lcom/anythink/network/toutiao/TTATNativeAd$a;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-nez p2, :cond_7

    .line 79
    .line 80
    iget-boolean p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->f:Z

    .line 81
    .line 82
    if-nez p2, :cond_4

    .line 83
    .line 84
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->i:Landroid/view/View;

    .line 85
    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-nez p2, :cond_5

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 105
    .line 106
    move-object v0, p1

    .line 107
    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    .line 109
    invoke-interface {p2, v0, v2, v2, v7}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 114
    .line 115
    move-object v1, p1

    .line 116
    check-cast v1, Landroid/view/ViewGroup;

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    move-object v3, v2

    .line 120
    invoke-interface/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 121
    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_7
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 125
    .line 126
    move-object v0, p1

    .line 127
    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .line 129
    invoke-interface {p2, v0, p1, v7}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 130
    .line 131
    .line 132
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    instance-of p2, p2, Landroid/app/Activity;

    .line 137
    .line 138
    if-eqz p2, :cond_8

    .line 139
    .line 140
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroid/app/Activity;

    .line 147
    .line 148
    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Landroid/app/Activity;

    .line 156
    .line 157
    invoke-direct {p0, p1}, Lcom/anythink/network/toutiao/TTATNativeAd;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    :cond_8
    return-void

    .line 161
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v0, "prepare() >>> failed: "

    .line 167
    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string p2, "TTATNativeAd"

    .line 183
    .line 184
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method public setAdData(ZLandroid/graphics/Bitmap;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getSource()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdFrom(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAppScore()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-double v0, v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setStarRating(Ljava/lang/Double;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAppCommentNum()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAppCommentNum(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lez v3, :cond_2

    .line 85
    .line 86
    move v3, v2

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-ge v3, v4, :cond_2

    .line 92
    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 98
    .line 99
    if-eqz v4, :cond_1

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    if-nez v3, :cond_1

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {p0, v5}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TTImage;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {p0, v5}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageWidth(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/TTImage;->getHeight()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-virtual {p0, v4}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageHeight(I)V

    .line 129
    .line 130
    .line 131
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 138
    .line 139
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getButtonText()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 147
    .line 148
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 149
    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 153
    .line 154
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    .line 160
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcom/anythink/network/toutiao/TTATCustomVideo;

    .line 168
    .line 169
    invoke-direct {v1, v0}, Lcom/anythink/network/toutiao/TTATCustomVideo;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;)V

    .line 170
    .line 171
    .line 172
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->e:Lcom/anythink/network/toutiao/TTATCustomVideo;

    .line 173
    .line 174
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 175
    .line 176
    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 177
    .line 178
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setCanInterruptVideoPlay(Z)V

    .line 179
    .line 180
    .line 181
    if-eqz p2, :cond_4

    .line 182
    .line 183
    if-lez p3, :cond_4

    .line 184
    .line 185
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 186
    .line 187
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    .line 188
    .line 189
    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setPauseIcon(Landroid/graphics/Bitmap;I)V

    .line 190
    .line 191
    .line 192
    :cond_4
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 193
    .line 194
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-eqz p1, :cond_6

    .line 199
    .line 200
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    if-eqz p2, :cond_5

    .line 209
    .line 210
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_5

    .line 219
    .line 220
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_5

    .line 229
    .line 230
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_5

    .line 239
    .line 240
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionUrl()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_5

    .line 249
    .line 250
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getFunctionDescUrl()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-nez p2, :cond_6

    .line 259
    .line 260
    :cond_5
    new-instance p2, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;

    .line 261
    .line 262
    iget-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 263
    .line 264
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAppSize()I

    .line 265
    .line 266
    .line 267
    move-result p3

    .line 268
    int-to-long v0, p3

    .line 269
    invoke-direct {p2, p1, v0, v1}, Lcom/anythink/network/toutiao/TTATDownloadAppInfo;-><init>(Lcom/bytedance/sdk/openadsdk/ComplianceInfo;J)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0, p2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V

    .line 273
    .line 274
    .line 275
    :cond_6
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 276
    .line 277
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    const/4 p2, 0x4

    .line 282
    if-ne p1, p2, :cond_7

    .line 283
    .line 284
    const/4 v2, 0x1

    .line 285
    :cond_7
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 286
    .line 287
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    const/4 p3, 0x3

    .line 292
    if-ne p1, p3, :cond_8

    .line 293
    .line 294
    move v2, p3

    .line 295
    :cond_8
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 296
    .line 297
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    const/4 v0, 0x2

    .line 302
    if-ne p1, v0, :cond_9

    .line 303
    .line 304
    move v2, v0

    .line 305
    :cond_9
    invoke-virtual {p0, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 306
    .line 307
    .line 308
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 309
    .line 310
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 311
    .line 312
    if-eqz v1, :cond_b

    .line 313
    .line 314
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 315
    .line 316
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    if-eqz p1, :cond_a

    .line 321
    .line 322
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;->getVideoUrl()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoUrl(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance v1, Lcom/anythink/network/toutiao/TTATCustomVideo;

    .line 330
    .line 331
    invoke-direct {v1, p1}, Lcom/anythink/network/toutiao/TTATCustomVideo;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;)V

    .line 332
    .line 333
    .line 334
    iput-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->e:Lcom/anythink/network/toutiao/TTATCustomVideo;

    .line 335
    .line 336
    :cond_a
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 337
    .line 338
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 339
    .line 340
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getVideoDuration()D

    .line 341
    .line 342
    .line 343
    move-result-wide v1

    .line 344
    invoke-virtual {p0, v1, v2}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoDuration(D)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 348
    .line 349
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 350
    .line 351
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeAd$a;

    .line 352
    .line 353
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$a;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    .line 354
    .line 355
    .line 356
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    .line 357
    .line 358
    .line 359
    :cond_b
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 360
    .line 361
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeAd$b;

    .line 362
    .line 363
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeAd$b;-><init>(Lcom/anythink/network/toutiao/TTATNativeAd;)V

    .line 364
    .line 365
    .line 366
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 370
    .line 371
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    const/16 v1, 0xf

    .line 376
    .line 377
    const-string v2, "1"

    .line 378
    .line 379
    const-string v3, "3"

    .line 380
    .line 381
    if-eq p1, v1, :cond_e

    .line 382
    .line 383
    const/16 v1, 0x10

    .line 384
    .line 385
    if-eq p1, v1, :cond_d

    .line 386
    .line 387
    const/16 v1, 0xa6

    .line 388
    .line 389
    if-eq p1, v1, :cond_c

    .line 390
    .line 391
    if-eq p1, v0, :cond_d

    .line 392
    .line 393
    if-eq p1, p3, :cond_d

    .line 394
    .line 395
    if-eq p1, p2, :cond_d

    .line 396
    .line 397
    const/4 p2, 0x5

    .line 398
    if-eq p1, p2, :cond_e

    .line 399
    .line 400
    goto :goto_1

    .line 401
    :cond_c
    iput-object v3, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 402
    .line 403
    goto :goto_1

    .line 404
    :cond_d
    const-string p1, "2"

    .line 405
    .line 406
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 407
    .line 408
    goto :goto_1

    .line 409
    :cond_e
    iput-object v2, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 410
    .line 411
    :goto_1
    iget-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 412
    .line 413
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-nez p1, :cond_f

    .line 418
    .line 419
    iget-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 420
    .line 421
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    if-eqz p1, :cond_10

    .line 426
    .line 427
    :cond_f
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 428
    .line 429
    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 430
    .line 431
    if-eqz p2, :cond_10

    .line 432
    .line 433
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 434
    .line 435
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewWidth()I

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoWidth(I)V

    .line 440
    .line 441
    .line 442
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 443
    .line 444
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    .line 445
    .line 446
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewHeight()I

    .line 447
    .line 448
    .line 449
    move-result p1

    .line 450
    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setVideoHeight(I)V

    .line 451
    .line 452
    .line 453
    :cond_10
    return-void
.end method

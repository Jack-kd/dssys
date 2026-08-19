.class public Lcom/anythink/network/toutiao/TTATNativeExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String; = "TTATNativeExpressAd"


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:D

.field e:D

.field f:Z

.field g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZ)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;ZZFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    const/4 p5, 0x0

    .line 3
    iput-boolean p5, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->f:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->c:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->h:Ljava/util/Map;

    const/4 p2, 0x0

    cmpl-float p3, p6, p2

    if-lez p3, :cond_0

    .line 8
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string p5, "express_width"

    invoke-interface {p1, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    cmpl-float p2, p7, p2

    if-lez p2, :cond_1

    .line 9
    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "express_height"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object p2

    .line 12
    const-string p3, "gm_policy"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getDislikeInfo()Lcom/bytedance/sdk/openadsdk/DislikeInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 15
    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/DislikeInfo;->getFilterWords()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    const-string p3, "tt_custom_dislike_info"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_3
    invoke-static {}, Lcom/anythink/network/toutiao/TTATInitManager;->getInstance()Lcom/anythink/network/toutiao/TTATInitManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/anythink/network/toutiao/TTATInitManager;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    .line 20
    invoke-virtual {p0, p4}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->setAdData(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v1, :cond_1

    .line 5
    sget-object p1, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindDislike: setDislikeDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    return-void

    .line 7
    :cond_1
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$c;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$c;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;

    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$d;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic s(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)Lcom/anythink/core/api/ATEventInterface;
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

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->i:Landroid/view/View;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 17
    .line 18
    :cond_0
    iput-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b:Landroid/content/Context;

    .line 19
    .line 20
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->i:Landroid/view/View;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->i:Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->i:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :catch_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public getVideoProgress()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->d:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    instance-of p2, p2, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/Activity;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setAdData(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setCanInterruptVideoPlay(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x4

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x3

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    move p1, v2

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getInteractionType()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    move p1, v3

    .line 38
    :cond_2
    invoke-virtual {p0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 42
    .line 43
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$a;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$a;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 52
    .line 53
    new-instance v1, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/anythink/network/toutiao/TTATNativeExpressAd$b;-><init>(Lcom/anythink/network/toutiao/TTATNativeExpressAd;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->a:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getImageMode()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/16 v1, 0xf

    .line 68
    .line 69
    if-eq p1, v1, :cond_4

    .line 70
    .line 71
    const/16 v1, 0x10

    .line 72
    .line 73
    if-eq p1, v1, :cond_3

    .line 74
    .line 75
    if-eq p1, v3, :cond_3

    .line 76
    .line 77
    if-eq p1, v2, :cond_3

    .line 78
    .line 79
    if-eq p1, v0, :cond_3

    .line 80
    .line 81
    const/4 v0, 0x5

    .line 82
    if-eq p1, v0, :cond_4

    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    const-string p1, "2"

    .line 86
    .line 87
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    const-string p1, "1"

    .line 91
    .line 92
    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 93
    .line 94
    return-void
.end method

.method public setDevParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "custom_dislike_dialog"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATNativeExpressAd;->g:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

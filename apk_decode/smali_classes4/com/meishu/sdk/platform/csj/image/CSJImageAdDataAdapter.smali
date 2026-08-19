.class public Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adListener:Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;

.field private ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->adListener:Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/image/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/meishu/sdk/core/ad/image/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    new-instance v0, Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;

    .line 4
    .line 5
    invoke-direct {v0, p0, p4}, Lcom/meishu/sdk/platform/csj/image/CSJAdInteractionListener;-><init>(Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;Lcom/meishu/sdk/core/ad/image/a;)V

    .line 6
    .line 7
    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-interface {p1, p2, p3, p4, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdListener()Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->adListener:Lcom/meishu/sdk/platform/csj/image/CSJNativeAdListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getImgList()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTImage;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, [Ljava/lang/String;

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public getInteractionType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/image/CSJImageAdDataAdapter;->ttNativeAd:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

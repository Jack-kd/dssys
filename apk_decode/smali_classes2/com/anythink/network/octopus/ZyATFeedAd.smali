.class public Lcom/anythink/network/octopus/ZyATFeedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/octopus/ad/NativeAd;

.field private c:Lcom/octopus/ad/NativeAdResponse;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/octopus/ad/NativeAd;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/octopus/ZyATFeedAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->d:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->b:Lcom/octopus/ad/NativeAd;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/anythink/network/octopus/ZyATFeedAd;->a()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATFeedAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getMaterialType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 4
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    if-ne v0, v1, :cond_1

    .line 5
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getInteractionType()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 7
    :goto_1
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 8
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrls()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    .line 14
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 22
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lcom/anythink/network/octopus/ZyATFeedAd;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
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

    .line 15
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 16
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 19
    invoke-direct {p0, p1, v1}, Lcom/anythink/network/octopus/ZyATFeedAd;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/anythink/network/octopus/ZyATFeedAd;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->b:Lcom/octopus/ad/NativeAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/NativeAd;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->b:Lcom/octopus/ad/NativeAd;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 19
    .line 20
    :cond_1
    iput-object v1, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->d:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->d:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdResponse;->getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->d:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/octopus/ad/NativeAdResponse;->getVideoView(Landroid/content/Context;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    move-object v0, p1

    .line 5
    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    new-instance p2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p2, p1}, Lcom/anythink/network/octopus/ZyATFeedAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATFeedAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 25
    .line 26
    new-instance v1, Lcom/anythink/network/octopus/ZyATFeedAd$a;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/anythink/network/octopus/ZyATFeedAd$a;-><init>(Lcom/anythink/network/octopus/ZyATFeedAd;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0, p2, v1}, Lcom/octopus/ad/NativeAdResponse;->bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

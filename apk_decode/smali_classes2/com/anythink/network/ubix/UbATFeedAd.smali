.class public Lcom/anythink/network/ubix/UbATFeedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/ubix/ssp/open/nativee/NativeAd;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/nativee/NativeAd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/ubix/UbATFeedAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/anythink/network/ubix/UbATFeedAd;->a()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/ubix/UbATFeedAd;)Lcom/ubix/ssp/open/nativee/NativeAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getActionButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getAppIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/open/nativee/UBiXImage;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/ubix/ssp/open/nativee/UBiXImage;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-virtual {v2}, Lcom/ubix/ssp/open/nativee/UBiXImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->isDownloadAd()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    .line 16
    :goto_1
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 17
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    return-void

    .line 19
    :cond_5
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 20
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 29
    check-cast p1, Landroid/view/ViewGroup;

    .line 30
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
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

    .line 21
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getMediaView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 22
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 24
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 25
    invoke-direct {p0, p1, v1}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->getMediaView()Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/ubix/UbATFeedAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->isDownloadAd()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/anythink/network/ubix/UbATFeedAd$a;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/anythink/network/ubix/UbATFeedAd$a;-><init>(Lcom/anythink/network/ubix/UbATFeedAd;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->isVideoAd()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/NativeAd;->getMediaView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ubix/ssp/open/nativee/NativeAd;->isValid()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/anythink/core/api/BaseAd;->isValid()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v0, p1}, Lcom/anythink/network/ubix/UbATFeedAd;->a(Ljava/util/List;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCloseView()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object v1, p0, Lcom/anythink/network/ubix/UbATFeedAd;->b:Lcom/ubix/ssp/open/nativee/NativeAd;

    .line 42
    .line 43
    new-instance v2, Lcom/anythink/network/ubix/UbATFeedAd$b;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/anythink/network/ubix/UbATFeedAd$b;-><init>(Lcom/anythink/network/ubix/UbATFeedAd;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, p1, v0, p2, v2}, Lcom/ubix/ssp/open/nativee/NativeAd;->registerViews(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    return-void

    .line 52
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

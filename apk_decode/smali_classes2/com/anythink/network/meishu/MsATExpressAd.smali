.class public Lcom/anythink/network/meishu/MsATExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

.field private final d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/meishu/MsATExpressAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->b:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 19
    .line 20
    new-instance p2, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/anythink/network/meishu/MsATExpressAd;->d:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/anythink/network/meishu/MsATExpressAd;->a()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATExpressAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getInteractionType()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 5
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->getAdPatternType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 6
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    if-eq v0, v2, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 7
    :cond_3
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 8
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    new-instance v1, Lcom/anythink/network/meishu/MsATExpressAd$a;

    invoke-direct {v1, p0}, Lcom/anythink/network/meishu/MsATExpressAd$a;-><init>(Lcom/anythink/network/meishu/MsATExpressAd;)V

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->setExpressMediaListener(Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATExpressAd;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATExpressAd;->d:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATExpressAd;->d:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/anythink/network/meishu/MsATExpressAd;->c:Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATExpressAd;->b:Landroid/content/Context;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/anythink/network/meishu/MsATExpressAd;->d:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    new-instance v2, Lcom/anythink/network/meishu/MsATExpressAd$b;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/anythink/network/meishu/MsATExpressAd$b;-><init>(Lcom/anythink/network/meishu/MsATExpressAd;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, v0, v1, p1, v2}, Lcom/meishu/sdk/core/ad/recycler/RecyclerAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

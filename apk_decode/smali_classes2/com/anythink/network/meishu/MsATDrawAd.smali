.class public Lcom/anythink/network/meishu/MsATDrawAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

.field d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meishu/sdk/core/ad/draw/IDrawAd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/meishu/MsATDrawAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATDrawAd;->b:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/anythink/network/meishu/MsATDrawAd;->a()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/meishu/MsATDrawAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/IDrawAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/IDrawAd;->getInteractionType()I

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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/IDrawAd;->getImageMode()I

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
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    new-instance v1, Lcom/anythink/network/meishu/MsATDrawAd$a;

    invoke-direct {v1, p0}, Lcom/anythink/network/meishu/MsATDrawAd$a;-><init>(Lcom/anythink/network/meishu/MsATDrawAd;)V

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/IAd;->setInteractionListener(Lcom/meishu/sdk/core/loader/InteractionListener;)V

    .line 9
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    new-instance v1, Lcom/anythink/network/meishu/MsATDrawAd$b;

    invoke-direct {v1, p0}, Lcom/anythink/network/meishu/MsATDrawAd$b;-><init>(Lcom/anythink/network/meishu/MsATDrawAd;)V

    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/draw/IDrawAd;->setOnDrawVideoListener(Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 10
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/IDrawAd;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/anythink/network/meishu/MsATDrawAd;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATDrawAd;->d:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/anythink/network/meishu/MsATDrawAd;->d:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/anythink/network/meishu/MsATDrawAd;->c:Lcom/meishu/sdk/core/ad/draw/IDrawAd;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/meishu/sdk/core/ad/draw/IDrawAd;->showAd(Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/anythink/network/meishu/MsATDrawAd;->d:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 0

    return-void
.end method

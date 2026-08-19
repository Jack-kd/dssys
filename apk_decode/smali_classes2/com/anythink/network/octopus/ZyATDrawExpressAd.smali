.class public Lcom/anythink/network/octopus/ZyATDrawExpressAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/octopus/ad/DrawAd;

.field private c:Lcom/octopus/ad/NativeAdResponse;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/DrawAd;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->d:Landroid/view/View;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->b:Lcom/octopus/ad/DrawAd;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/octopus/ZyATDrawExpressAd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->a:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getMaterialType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3
    const-string v0, "1"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    if-ne v0, v1, :cond_1

    .line 4
    const-string v0, "2"

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getInteractionType()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNativeInteractionType(I)V

    .line 7
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->c:Lcom/octopus/ad/NativeAdResponse;

    new-instance v1, Lcom/anythink/network/octopus/ZyATDrawExpressAd$a;

    invoke-direct {v1, p0}, Lcom/anythink/network/octopus/ZyATDrawExpressAd$a;-><init>(Lcom/anythink/network/octopus/ZyATDrawExpressAd;)V

    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdResponse;->setNativeAdEventListener(Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    .line 8
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->c:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getNativeView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->d:Landroid/view/View;
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
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->b:Lcom/octopus/ad/DrawAd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/DrawAd;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->b:Lcom/octopus/ad/DrawAd;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->c:Lcom/octopus/ad/NativeAdResponse;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/octopus/ZyATDrawExpressAd;->b:Lcom/octopus/ad/DrawAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/DrawAd;->isValid()Z

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
    .locals 0

    return-void
.end method

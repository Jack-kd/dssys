.class public Lcom/fl/saas/f;
.super Lcom/fl/saas/n;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;
.implements Lcom/fl/saas/adx/base/bidding/BiddingResult;
.implements Lcom/fl/saas/adx/base/interfaces/AdValid;
.implements Lcom/fl/saas/adx/base/interfaces/AdMaterial;
.implements Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;
.implements Lcom/fl/saas/adx/base/interfaces/AdGetWinInfo;
.implements Lcom/fl/saas/adx/base/interfaces/MixNativeCycleDataListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/fl/saas/j0;

.field private c:Lcom/fl/saas/B;

.field private d:Lcom/fl/saas/B;

.field private e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

.field private f:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;


# direct methods
.method public constructor <init>(Lcom/fl/saas/j0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/n;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/fl/saas/adx/util/CommConstant;->getObjTag(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/fl/saas/f;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 11
    .line 12
    invoke-interface {p1, p0}, Lcom/fl/saas/j0;->a(Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)Lcom/fl/saas/j0;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic a(Lcom/fl/saas/adx/api/mixNative/NativeAd;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/base/bidding/C2SBiddingECPM;->getC2SBiddingECPM([Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic a(Lcom/fl/saas/adx/api/mixNative/NativeAd;Lcom/fl/saas/B;)V
    .locals 0

    .line 2
    invoke-interface {p1, p0}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/fl/saas/f;->c:Lcom/fl/saas/B;

    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/l2;

    invoke-direct {v1, p1}, Lcom/fl/saas/l2;-><init>(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    return-void
.end method

.method private synthetic c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/n;->canUseEcpm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/fl/saas/j;->g()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private synthetic d()V
    .locals 2

    .line 1
    const/16 v0, 0x4fb7

    .line 2
    .line 3
    const-string v1, "showAd but mNativeAd is null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/fl/saas/f;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/f;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/f;->c()I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/fl/saas/f;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/f;->a(Lcom/fl/saas/adx/api/mixNative/NativeAd;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/fl/saas/f;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/f;->b(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    return-void
.end method

.method public static synthetic h(Lcom/fl/saas/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/f;->d()V

    return-void
.end method

.method public static synthetic i(Lcom/fl/saas/adx/api/mixNative/NativeAd;Lcom/fl/saas/B;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/fl/saas/f;->a(Lcom/fl/saas/adx/api/mixNative/NativeAd;Lcom/fl/saas/B;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fl/saas/B;)Lcom/fl/saas/f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/fl/saas/f;->d:Lcom/fl/saas/B;

    return-object p0
.end method

.method public a(Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/fl/saas/f;->f:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    return-void
.end method

.method public b(Lcom/fl/saas/B;)Lcom/fl/saas/f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/fl/saas/f;->c:Lcom/fl/saas/B;

    return-object p0
.end method

.method public b()Lcom/fl/saas/j0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    return-object v0
.end method

.method public biddingResult(ZIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :goto_0
    check-cast v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    instance-of v1, v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fl/saas/adx/base/bidding/BiddingResult;->biddingResult(ZIII)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->destroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fl/saas/n;->isCache()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->release()V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/fl/saas/f;->c:Lcom/fl/saas/B;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/fl/saas/j0;->destroy()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public getAdMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/fl/saas/adx/base/interfaces/AdMaterial;->getAdMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public getCycleNativeAd()Lcom/fl/saas/adx/api/mixNative/NativeAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWinAdInfo()Lcom/fl/saas/adx/base/widget/WinAdInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/fl/saas/adx/base/widget/WinAdInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/fl/saas/adx/base/widget/WinAdInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdAppInfo()Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeAdAppInfo;->getAppName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/WinAdInfo;->setAdUserName(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v1, v1, Lcom/fl/saas/j;->f:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/WinAdInfo;->setPosId(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getTitle()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/widget/WinAdInfo;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    return-object v0
.end method

.method public handle(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/fl/saas/j0;->setContext(Landroid/content/Context;)Lcom/fl/saas/j0;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/fl/saas/j0;->a(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdValid;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdValid;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/fl/saas/adx/base/interfaces/AdValid;->isValid()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onAdFailed: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/fl/saas/f;->d:Lcom/fl/saas/B;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/fl/saas/j0;->getAdSource()Lcom/fl/saas/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/fl/saas/n;->setAdSource(Lcom/fl/saas/j;)Lcom/fl/saas/n;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/fl/saas/j2;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/j2;-><init>(Lcom/fl/saas/f;Lcom/fl/saas/adx/api/mixNative/NativeAd;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/fl/saas/n;->bindC2SBidECPM(Lcom/fl/saas/b1;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 19
    .line 20
    instance-of v0, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/fl/saas/f;->f:Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setOnNativeReleaseListener(Lcom/fl/saas/adx/base/manager/MixNativeManager$OnNativeReleaseListener;)V

    .line 27
    .line 28
    .line 29
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 31
    .line 32
    new-instance v1, Lcom/fl/saas/f$a;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/fl/saas/f$a;-><init>(Lcom/fl/saas/f;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setReportEventListener(Lcom/fl/saas/D0;)V

    .line 38
    .line 39
    .line 40
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 42
    .line 43
    new-instance v1, Lcom/fl/saas/k2;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/fl/saas/k2;-><init>(Lcom/fl/saas/f;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setEcpmMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$EcpmMapper;)V

    .line 49
    .line 50
    .line 51
    check-cast p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    .line 52
    .line 53
    new-instance v0, Lcom/fl/saas/f$b;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/fl/saas/f$b;-><init>(Lcom/fl/saas/f;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->setAdInfoMapper(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$AdInfoMapper;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->onLoadedEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public setCache()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->setCache()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/fl/saas/j0;->setCache()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/AdChangeCacheData;->setCacheData(Ljava/lang/String;Lcom/fl/saas/j;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setCycleNativeAd(Ljava/util/List;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/fl/saas/adx/base/interfaces/MixNativeCycleDataListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/MixNativeCycleDataListener;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/fl/saas/adx/base/interfaces/MixNativeCycleDataListener;->setCycleNativeAd(Ljava/util/List;I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public showAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->showAd()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fl/saas/f;->b:Lcom/fl/saas/j0;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/fl/saas/j0;->clearCache()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->isNativeExpress()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    const/16 v0, 0x4fb7

    .line 40
    .line 41
    const-string v1, "\u8054\u76df\u8fd4\u56de\u4e86\u6a21\u7248\u5e7f\u544a\uff0c\u4f46\u662f\u5e7f\u544aview\u4e3anull"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/fl/saas/f;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/f;->e:Lcom/fl/saas/adx/api/mixNative/NativeAd;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/fl/saas/m2;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/fl/saas/m2;-><init>(Lcom/fl/saas/f;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/fl/saas/n2;

    .line 63
    .line 64
    invoke-direct {v2, p0}, Lcom/fl/saas/n2;-><init>(Lcom/fl/saas/f;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

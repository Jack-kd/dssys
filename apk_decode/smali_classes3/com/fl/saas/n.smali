.class public abstract Lcom/fl/saas/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/base/AdapterAPI;
.implements Lcom/fl/saas/D0;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private isCache:Z

.field private isFailedCallBack:Z

.field private isHot:Z

.field private isReportExposure:Z

.field private mAdMaterialData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

.field protected mAdxInfo:Lcom/fl/saas/j;

.field private mContext:Landroid/content/Context;

.field protected mLinkId:Ljava/lang/String;

.field protected mPlaceId:Ljava/lang/String;

.field private reqTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/fl/saas/adx/util/CommConstant;->getObjTag(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/fl/saas/n;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/fl/saas/n;->isCache:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/fl/saas/n;->isFailedCallBack:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/fl/saas/n;->isHot:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/fl/saas/n;->isReportExposure:Z

    .line 18
    .line 19
    return-void
.end method

.method private a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/fl/saas/n;->TAG:Ljava/lang/String;

    const-string v1, "onLoadedEvent"

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/fl/saas/n;->reqTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/fl/saas/j;->o:J

    :cond_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->showAd()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic d(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/n;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bindC2SBidECPM(Lcom/fl/saas/b1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/b1;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v0, v0, Lcom/fl/saas/j;->s:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/fl/saas/b1;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->setECPM(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void

    .line 34
    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/fl/saas/n;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "bindC2SBidECPM is exception, "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public canUseEcpm()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, v0, Lcom/fl/saas/j;->r0:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_1
    return v1
.end method

.method public changeReRequestCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearCache()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/n;->isCache:Z

    .line 3
    .line 4
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/fl/saas/n;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    return-void
.end method

.method public disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/fl/saas/adx/base/widget/ErrorInfo;

    invoke-direct {v0}, Lcom/fl/saas/adx/base/widget/ErrorInfo;-><init>()V

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    move-result v1

    iput v1, v0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->code:I

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getErrorType()I

    move-result v1

    iput v1, v0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->errorType:I

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/fl/saas/adx/base/widget/ErrorInfo;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/widget/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public disposeError(Lcom/fl/saas/adx/base/widget/ErrorInfo;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fl/saas/n;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disposeError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/fl/saas/n;->isFailedCallBack:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/n;->isFailedCallBack:Z

    iget v0, p1, Lcom/fl/saas/adx/base/widget/ErrorInfo;->code:I

    iget v1, p1, Lcom/fl/saas/adx/base/widget/ErrorInfo;->errorType:I

    iget-object p1, p1, Lcom/fl/saas/adx/base/widget/ErrorInfo;->msg:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(IILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getActivityOrNull()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->activityRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getActivityValid()Lcom/fl/saas/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->activityRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ln0/a;

    .line 8
    .line 9
    invoke-direct {v1}, Ln0/a;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/fl/saas/x2;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/fl/saas/x2;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/x0;)Lcom/fl/saas/p0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getAdSource()Lcom/fl/saas/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/fl/saas/adx/util/DeviceUtil;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mLinkId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mAdMaterialData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/fl/saas/adx/base/interfaces/AdMaterial;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdMaterial;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/fl/saas/adx/base/interfaces/AdMaterial;->getAdMaterialData()Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/fl/saas/n;->mAdMaterialData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/fl/saas/n;->mAdMaterialData:Lcom/fl/saas/adx/base/interfaces/AdMaterial$AdMaterialData;

    .line 20
    .line 21
    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mPlaceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mPlaceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract handle(Landroid/content/Context;)V
.end method

.method public isCache()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/n;->isCache:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFullScreenInterstitial()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/fl/saas/j;->o()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public isHot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/n;->isHot:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 4

    .line 1
    const-string v0, "adapter is not ready, context exception"

    .line 2
    .line 3
    const/16 v1, 0x4fb4

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    iput-wide v2, p0, Lcom/fl/saas/n;->reqTime:J

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fl/saas/n;->getActivityOrNull()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getTopActivity()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    iget-object v3, p0, Lcom/fl/saas/n;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v1, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v2}, Lcom/fl/saas/n;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move-object v2, v3

    .line 40
    :goto_1
    invoke-virtual {p0, v2}, Lcom/fl/saas/n;->handle(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    invoke-static {v1, v0}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/fl/saas/n;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public abstract onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
.end method

.method public onClickedEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onClickedEvent"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->getInstance()Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/base/activity/h5/QuickAppHelper;->setAdSource(Lcom/fl/saas/j;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLoadedEvent()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/fl/saas/adx/base/exception/FLError;

    .line 6
    .line 7
    const-string v1, "\u6ca1\u6709\u586b\u5145"

    .line 8
    .line 9
    const/16 v2, 0x4fb1

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/fl/saas/n;->disposeError(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/fl/saas/n;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onShowEvent()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/n;->isReportExposure:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/fl/saas/n;->isReportExposure:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/fl/saas/n;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "onShowEvent"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public reportRequestShow()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setAdSource(Lcom/fl/saas/j;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 0
    .param p1    # Lcom/fl/saas/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->setAdSource(Lcom/fl/saas/j;)Lcom/fl/saas/n;

    move-result-object p1

    return-object p1
.end method

.method public setAdSource(Lcom/fl/saas/j;)Lcom/fl/saas/n;
    .locals 4
    .param p1    # Lcom/fl/saas/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/j;",
            ")",
            "Lcom/fl/saas/n;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/n;->isCache:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/fl/saas/n;->reqTime:J

    iput-wide v0, p1, Lcom/fl/saas/j;->l:J

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getBootTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    iget-wide v2, v2, Lcom/fl/saas/j;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/fl/saas/j;->A:J

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setCache()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/n;->isCache:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fl/saas/n;->activityRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    return-void
.end method

.method public bridge synthetic setContext(Landroid/content/Context;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1}, Lcom/fl/saas/n;->setContext(Landroid/content/Context;)Lcom/fl/saas/n;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Landroid/content/Context;)Lcom/fl/saas/n;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/fl/saas/n;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fl/saas/n;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/n;->mContext:Landroid/content/Context;

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/fl/saas/n;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setECPM(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, v0, Lcom/fl/saas/j;->d:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setHot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/fl/saas/n;->isHot:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLinkId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/n;->mLinkId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaterial(Lcom/fl/saas/adx/base/bean/MaterialBean;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/fl/saas/j;->x2:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/fl/saas/j;->z:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setId(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/fl/saas/j;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setPlaceId(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/fl/saas/j;->o0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setTitle(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/fl/saas/j;->s1:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setDes(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/fl/saas/j;->p1:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setImgUrl(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/fl/saas/j;->y0:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setLandPageUrl(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/fl/saas/n;->mAdxInfo:Lcom/fl/saas/j;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;->setDownloadUrl(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/n;->mPlaceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public showAd()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/n;->isCache:Z

    .line 3
    .line 4
    return-void
.end method

.class public abstract Lcom/fl/saas/adx/base/manager/loader/BaseLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;
.implements Lcom/fl/saas/adx/base/manager/api/FailedLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fl/saas/adx/base/base/AdapterAPI;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;",
        "Lcom/fl/saas/adx/base/manager/api/FailedLoader;"
    }
.end annotation


# instance fields
.field private isHot:Z

.field private key:Ljava/lang/String;

.field private mAdType:I

.field private mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

.field protected mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/adx/base/manager/api/ManagerLoader<",
            "TT;>;"
        }
    .end annotation
.end field

.field private trafficStartTime:J


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/manager/api/ManagerLoader;I)V
    .locals 1
    .param p1    # Lcom/fl/saas/adx/base/manager/api/ManagerLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/manager/api/ManagerLoader<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->isHot:Z

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    iput p2, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdType:I

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/j;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/j;)Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fl/saas/j;->p:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fl/saas/j;->q:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fl/saas/j;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/fl/saas/j;->k:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p0}, Lcom/fl/saas/adx/base/bean/AdInfo;->create(ILjava/lang/String;Ljava/lang/String;I)Lcom/fl/saas/adx/base/bean/AdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/manager/loader/BaseLoader;Lcom/fl/saas/adx/base/base/AdapterAPI;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    return-object p0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method private getValidAdSource()Lcom/fl/saas/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getValidAdapter()Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/fl/saas/adx/base/manager/loader/e;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/loader/e;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method


# virtual methods
.method public biddingResultUpload(ZII)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    instance-of v1, v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fl/saas/adx/base/bidding/BiddingResult;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/fl/saas/adx/base/bidding/BiddingResult;->biddingResult(ZIII)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->destroy()V

    :cond_0
    return-void
.end method

.method public getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 2

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getValidAdSource()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/loader/a;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/loader/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/loader/b;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/loader/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->b(Lcom/fl/saas/b1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/bean/AdInfo;

    return-object v0
.end method

.method public getEcpm()I
    .locals 2

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getValidAdSource()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/loader/c;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/loader/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaterial()Lcom/fl/saas/adx/base/bean/MaterialBean;
    .locals 2

    new-instance v0, Lcom/fl/saas/adx/base/bean/MaterialBean;

    invoke-direct {v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;-><init>()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->setMaterial(Lcom/fl/saas/adx/base/bean/MaterialBean;)V

    :cond_0
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getValidAdSource()Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/manager/loader/d;

    invoke-direct {v1}, Lcom/fl/saas/adx/base/manager/loader/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    return-object v0
.end method

.method public getValidAdapter()Lcom/fl/saas/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/fl/saas/adx/base/manager/loader/f;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/manager/loader/f;-><init>(Lcom/fl/saas/adx/base/manager/loader/BaseLoader;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public isFailedCallBack()Z
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/manager/api/FailedLoader;->isFailedCallBack()Z

    move-result v0

    return v0
.end method

.method public loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V
    .locals 2

    const-string v0, "loadAdapter"

    const-string v1, "FLSDK-API"

    invoke-static {v1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/manager/api/ManagerLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->isHot:Z

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->setHot(Z)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->key:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->setPlaceId(Ljava/lang/String;)Lcom/fl/saas/adx/base/base/AdapterAPI;

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/manager/api/ManagerLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->setContext(Landroid/content/Context;)Lcom/fl/saas/adx/base/base/AdapterAPI;

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v0}, Lcom/fl/saas/adx/base/manager/api/ManagerLoader;->getLinkId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/base/base/AdapterAPI;->setLinkId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/manager/api/ManagerLoader;->bindAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-interface {p1}, Lcom/fl/saas/adx/base/base/AdapterAPI;->load()V

    const-string p1, "load"

    invoke-static {v1, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public loadConfig()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->trafficStartTime:J

    iget v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/fl/saas/P0;

    invoke-direct {v0}, Lcom/fl/saas/P0;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/fl/saas/H0;

    invoke-direct {v0}, Lcom/fl/saas/H0;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/fl/saas/I0;

    invoke-direct {v0}, Lcom/fl/saas/I0;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V

    return-void

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/fl/saas/O0;

    invoke-direct {v0}, Lcom/fl/saas/O0;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-virtual {p0, v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V

    return-void

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/fl/saas/J0;

    invoke-direct {v0}, Lcom/fl/saas/J0;-><init>()V

    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/k0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fl/saas/j0;

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v1}, Lcom/fl/saas/adx/base/manager/api/ManagerLoader;->getLinkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->setLinkId(Ljava/lang/String;)Lcom/fl/saas/j0;

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->isHot:Z

    invoke-virtual {v0, v1}, Lcom/fl/saas/k0;->a(Z)V

    new-instance v1, Lcom/fl/saas/f;

    invoke-direct {v1, v0}, Lcom/fl/saas/f;-><init>(Lcom/fl/saas/j0;)V

    iput-object v1, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mAdapter:Lcom/fl/saas/adx/base/base/AdapterAPI;

    invoke-virtual {p0, v1}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->loadAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)V

    :cond_4
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/manager/api/FailedLoader;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->mLoader:Lcom/fl/saas/adx/base/manager/api/ManagerLoader;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;->onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public request(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->key:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u7684: appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fl/saas/adx/util/DeviceUtil;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   posId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FLSDK-API"

    invoke-static {v0, p1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->loadConfig()V

    return-void
.end method

.method public setHot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->isHot:Z

    return-void
.end method

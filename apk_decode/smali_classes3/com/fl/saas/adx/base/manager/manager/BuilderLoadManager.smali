.class public abstract Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/manager/api/ManagerLoader;
.implements Lcom/fl/saas/adx/base/manager/api/ManagerAPI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fl/saas/adx/base/base/BaseBuilder<",
        "*>;S::",
        "Lcom/fl/saas/adx/base/base/AdapterAPI;",
        "U::",
        "Lcom/fl/saas/adx/base/interfaces/AdViewListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/base/manager/api/ManagerLoader<",
        "TS;>;",
        "Lcom/fl/saas/adx/base/manager/api/ManagerAPI<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private adReRequestListener:Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;

.field private isDestroy:Z

.field private isFailedCallBack:Z

.field private mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/bean/AdType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isFailedCallBack:Z

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isDestroy:Z

    new-instance v0, Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-direct {v0, p1, p0}, Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;-><init>(Lcom/fl/saas/adx/base/bean/AdType;Lcom/fl/saas/adx/base/manager/api/ManagerLoader;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/exception/FLError;Lcom/fl/saas/adx/base/interfaces/AdViewListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/base/BaseBuilder;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getContextRef()Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public biddingResultUpload(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->biddingResultUpload(ZII)V

    :cond_0
    return-void
.end method

.method public bindAdapter(Lcom/fl/saas/adx/base/base/AdapterAPI;)Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    check-cast p1, Lcom/fl/saas/o;

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {p1, v0}, Lcom/fl/saas/o;->setBuilder(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/o;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    invoke-virtual {p1, v0}, Lcom/fl/saas/o;->setEventListener(Lcom/fl/saas/adx/base/interfaces/AdViewListener;)Lcom/fl/saas/o;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->adReRequestListener:Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;

    invoke-virtual {p1, v0}, Lcom/fl/saas/o;->setAdReRequestListener(Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;)Lcom/fl/saas/o;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isDestroy:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    return-void
.end method

.method public getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBuilder()Lcom/fl/saas/adx/base/base/BaseBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getContextRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getContextRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextOpt()Lcom/fl/saas/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lo0/b;

    .line 8
    .line 9
    invoke-direct {v1}, Lo0/b;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lo0/c;

    .line 17
    .line 18
    invoke-direct {v1}, Lo0/c;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public getEcpm()I
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getEcpm()I

    move-result v0

    return v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getLinkId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getMaterial()Lcom/fl/saas/adx/base/bean/MaterialBean;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getMaterial()Lcom/fl/saas/adx/base/bean/MaterialBean;

    move-result-object v0

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getReqId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getShowAdapter()Lcom/fl/saas/adx/base/base/AdapterAPI;

    move-result-object v0

    return-object v0
.end method

.method public getValidAdapter()Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->getValidAdapter()Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract initProxyEventListener(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation
.end method

.method public isDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isDestroy:Z

    return v0
.end method

.method public isFailedCallBack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isFailedCallBack:Z

    return v0
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isFailedCallBack:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isFailedCallBack:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Lo0/a;

    invoke-direct {v1, p1}, Lo0/a;-><init>(Lcom/fl/saas/adx/base/exception/FLError;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    return-void
.end method

.method public onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getBuilder()Lcom/fl/saas/adx/base/base/BaseBuilder;

    move-result-object v0

    instance-of v0, v0, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isFailedCallBack:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isFailedCallBack:Z

    invoke-virtual {p0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getBuilder()Lcom/fl/saas/adx/base/base/BaseBuilder;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;

    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;->onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public request(Lcom/fl/saas/adx/base/base/BaseBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request, isDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->isDestroy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLSDK"

    invoke-static {v1, v0}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    move-result-object p1

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->isHot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->setHot(Z)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->request(Ljava/lang/String;)V

    return-void
.end method

.method public restManagerLoad(Lcom/fl/saas/adx/base/bean/AdType;)V
    .locals 1

    new-instance v0, Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    invoke-direct {v0, p1, p0}, Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;-><init>(Lcom/fl/saas/adx/base/bean/AdType;Lcom/fl/saas/adx/base/manager/api/ManagerLoader;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mLoader:Lcom/fl/saas/adx/base/manager/loader/BuilderAdLoader;

    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->mBuilder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fl/saas/adx/base/manager/loader/BaseLoader;->request(Ljava/lang/String;)V

    return-void
.end method

.method public setAdReRequestListener(Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->adReRequestListener:Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;

    return-void
.end method

.class public abstract Lcom/fl/saas/adx/base/base/BaseAPI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/MediaExtraInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fl/saas/adx/base/base/BaseBuilder<",
        "*>;S:",
        "Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager<",
        "TT;**>;>",
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/api/MediaExtraInfo;"
    }
.end annotation


# instance fields
.field protected final builder:Lcom/fl/saas/adx/base/base/BaseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/base/BaseBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/base/BaseAPI;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->requestAd(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/base/BaseAPI;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/fl/saas/adx/base/base/BaseAPI;->requestAd(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/base/BaseAPI;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    .line 2
    .line 3
    instance-of v0, p0, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/fl/saas/adx/base/interfaces/AdLoadEvent;->onLoadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private createManager()Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fl/saas/adx/base/annotation/API;

    invoke-static {v1, v0}, Lcom/fl/saas/C0;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/annotation/API;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/annotation/API;->value()Lcom/fl/saas/adx/base/bean/AdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/bean/AdType;->createManager()Lcom/fl/saas/adx/base/manager/api/ManagerInfoAPI;

    move-result-object v0

    check-cast v0, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    return-object v0
.end method

.method private loadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    new-instance v0, Lcom/fl/saas/adx/base/base/a;

    invoke-direct {v0, p0, p1}, Lcom/fl/saas/adx/base/base/a;-><init>(Lcom/fl/saas/adx/base/base/BaseAPI;Lcom/fl/saas/adx/base/exception/FLError;)V

    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestAd(Z)V
    .locals 3

    const/16 v0, 0x4fba

    :try_start_0
    invoke-static {}, Lcom/fl/saas/adx/api/FLConfig;->isInit()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Please initialize the SDK first"

    const/16 v1, 0x4fb2

    invoke-static {v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseAPI;->loadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fl/saas/A;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Request too frequently,Please check if the advertising space has frequency control set up."

    const/16 v1, 0x4fb6

    invoke-static {v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v1, "0"

    invoke-static {}, Lcom/fl/saas/adx/util/DeviceUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "\u65e0\u7f51\u7edc\u8fde\u63a5"

    const/16 v1, 0x4fb3

    invoke-static {v1, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fl/saas/E0;->e()V

    invoke-direct {p0}, Lcom/fl/saas/adx/base/base/BaseAPI;->createManager()Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    move-result-object v1

    iput-object v1, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    new-instance p1, Lcom/fl/saas/adx/base/base/b;

    invoke-direct {p1, p0}, Lcom/fl/saas/adx/base/base/b;-><init>(Lcom/fl/saas/adx/base/base/BaseAPI;)V

    invoke-virtual {v1, p1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->setAdReRequestListener(Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;)V

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    iget-object v1, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    invoke-virtual {p1, v1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->request(Lcom/fl/saas/adx/base/base/BaseBuilder;)V

    return-void

    :cond_4
    const-string p1, "builder is invalid"

    :goto_1
    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "manager create error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request has error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fl/saas/adx/base/base/BaseAPI;->loadFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method


# virtual methods
.method public biddingResultUpload(ZII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->biddingResultUpload(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getAdInfo()Lcom/fl/saas/adx/base/bean/AdInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getECPM()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getEcpm()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEcpm()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getEcpm()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaterial()Lcom/fl/saas/adx/base/bean/MaterialBean;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getMaterial()Lcom/fl/saas/adx/base/bean/MaterialBean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lcom/fl/saas/adx/base/bean/MaterialBean;

    invoke-direct {v0}, Lcom/fl/saas/adx/base/bean/MaterialBean;-><init>()V

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/base/BaseAPI;->manager:Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getReqId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public request()V
    .locals 2

    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/base/c;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/base/c;-><init>(Lcom/fl/saas/adx/base/base/BaseAPI;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    return-void
.end method

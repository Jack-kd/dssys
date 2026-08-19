.class public Lcom/kwad/sdk/KsAdSDKImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/core/IKsAdSDK;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
    value = Lcom/kwad/sdk/api/core/IKsAdSDK;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/KsAdSDKImpl$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kwad/sdk/KsAdSDKImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/sdk/KsAdSDKImpl;-><init>()V

    return-void
.end method

.method public static get()Lcom/kwad/sdk/KsAdSDKImpl;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkDynamicImpl;
        value = Lcom/kwad/sdk/api/core/IKsAdSDK;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl$a;->Fn()Lcom/kwad/sdk/KsAdSDKImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public addHp(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/kwad/sdk/o;->f(Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public varargs dM(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lcom/kwad/sdk/o;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public deleteCache()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->deleteCache()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getAdManager()Lcom/kwad/sdk/api/KsLoadManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->getAdManager()Lcom/kwad/sdk/api/KsLoadManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->getApiVersion()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getApiVersionCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->getApiVersionCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getAppId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getAppInfo()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getAppInfo()Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getAppName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getDeviceInfo()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getDeviceInfo()Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getDid()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getNetworkInfo()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getNetworkInfo()Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getRD(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/kwad/sdk/o;->cU(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getRM(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/kwad/sdk/o;->cT(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getSDKType()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    return v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getSDKVersion()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public getSDKVersionCode()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    const v0, 0x4ceb6a

    .line 5
    .line 6
    .line 7
    return v0
.end method

.method public getSdkConfig()Lcom/kwad/sdk/api/SdkConfig;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->getSdkConfig()Lcom/kwad/sdk/api/SdkConfig;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/o;->b(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->Gv()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->Gt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public isDebugLogEnable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->isDebugLogEnable()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public newComponentProxy(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kwad/sdk/api/proxy/IComponentProxy;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/o;->newComponentProxy(Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/kwad/sdk/o;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public pauseCurrentPlayer()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->pauseCurrentPlayer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public re(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Throwable;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/kwad/sdk/o;->r(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public reportBatchEvent(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public resumeCurrentPlayer()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/kwad/sdk/o;->resumeCurrentPlayer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public sR(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2, p3}, Lcom/kwad/sdk/o;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setAdxEnable(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/o;->setAdxEnable(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setApiVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/o;->setApiVersion(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setApiVersionCode(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/o;->setApiVersionCode(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setAppTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/o;->setAppTag(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setInitStartTime(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/o;->setInitStartTime(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setIsExternal(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/o;->setIsExternal(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLaunchTime(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/kwad/sdk/o;->setLaunchTime(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLoadingLottieAnimation(ZI)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lcom/kwad/sdk/o;->setLoadingLottieAnimation(ZI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setLoadingLottieAnimationColor(ZI)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lcom/kwad/sdk/o;->setLoadingLottieAnimationColor(ZI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setPersonalRecommend(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/o;->setPersonalRecommend(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setProgrammaticRecommend(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/o;->setProgrammaticRecommend(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setThemeMode(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/kwad/sdk/o;->setThemeMode(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public declared-synchronized start()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "jky"

    .line 3
    .line 4
    const-string v1, "KsAdSDKImpl start call 1"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "jky"

    .line 14
    .line 15
    const-string v2, "KsAdSDKImpl start call 2"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->Gv()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v1, "jky"

    .line 27
    .line 28
    const-string v2, "KsAdSDKImpl start call 3"

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->Gt()V

    .line 34
    .line 35
    .line 36
    const-string v0, "jky"

    .line 37
    .line 38
    const-string v1, "KsAdSDKImpl start call 4"

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0
.end method

.method public unInit()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/o;->Gs()Lcom/kwad/sdk/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/o;->unInit()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

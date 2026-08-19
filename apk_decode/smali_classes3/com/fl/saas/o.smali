.class public abstract Lcom/fl/saas/o;
.super Lcom/fl/saas/n;
.source "SourceFile"


# instance fields
.field private adReRequestListener:Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;

.field private builder:Lcom/fl/saas/adx/base/base/BaseBuilder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/adx/base/base/BaseBuilder<",
            "*>;"
        }
    .end annotation
.end field

.field private mAdEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fl/saas/adx/base/interfaces/AdViewListener;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/n;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic a(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/o;->mAdEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/fl/saas/o;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fl/saas/o;->a(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method


# virtual methods
.method public getBuilder()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/o;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBuilderFieldOptional(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/arch/core/util/Function<",
            "Lcom/fl/saas/adx/base/base/BaseBuilder<",
            "*>;+TU;>;)",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/o;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/fl/saas/p0;->a()Lcom/fl/saas/p0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public getEventListener()Lcom/fl/saas/adx/base/interfaces/AdViewListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/o;->mAdEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/n;->mPlaceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getListenerOptional()Lcom/fl/saas/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fl/saas/p0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fl/saas/o;->mAdEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public handleListenerEvent(Lcom/fl/saas/B;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/B;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/o;->getListenerOptional()Lcom/fl/saas/p0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/fl/saas/p0;->a(Lcom/fl/saas/B;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/y2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/fl/saas/y2;-><init>(Lcom/fl/saas/o;Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUI(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public reRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/o;->adReRequestListener:Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;->onReRequest()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdReRequestListener(Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;)Lcom/fl/saas/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;",
            ")",
            "Lcom/fl/saas/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/o;->adReRequestListener:Lcom/fl/saas/adx/base/interfaces/AdReRequestListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBuilder(Lcom/fl/saas/adx/base/base/BaseBuilder;)Lcom/fl/saas/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/base/BaseBuilder<",
            "*>;)",
            "Lcom/fl/saas/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/o;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/base/BaseBuilder;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/fl/saas/n;->mPlaceId:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public setCache()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/fl/saas/n;->setCache()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/fl/saas/o;->builder:Lcom/fl/saas/adx/base/base/BaseBuilder;

    .line 6
    .line 7
    return-void
.end method

.method public setEventListener(Lcom/fl/saas/adx/base/interfaces/AdViewListener;)Lcom/fl/saas/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fl/saas/adx/base/interfaces/AdViewListener;",
            ")",
            "Lcom/fl/saas/o;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fl/saas/o;->mAdEventListener:Lcom/fl/saas/adx/base/interfaces/AdViewListener;

    .line 2
    .line 3
    return-object p0
.end method

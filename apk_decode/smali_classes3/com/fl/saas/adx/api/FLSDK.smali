.class public Lcom/fl/saas/adx/api/FLSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/fl/saas/E0;->e()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/fl/saas/adx/base/manager/MixNativeManager;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p2}, Lcom/fl/saas/adx/base/manager/MixNativeManager;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/fl/saas/adx/base/manager/MixNativeManager;->load()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const/16 p0, 0x4fb1

    .line 24
    .line 25
    const-string p1, "ad request error"

    .line 26
    .line 27
    invoke-static {p0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p2, p0}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public static loadMixNative(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V
    .locals 2

    invoke-static {}, Lcom/fl/saas/adx/api/FLConfig;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    const/16 p0, 0x4fb2

    const-string p1, "Please initialize the SDK first"

    invoke-static {p0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/fl/saas/adx/api/AdParams;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/A;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const/16 p0, 0x4fb6

    const-string p1, "Request too frequently"

    invoke-static {p0, p1}, Lcom/fl/saas/adx/base/exception/FLError;->create(ILjava/lang/String;)Lcom/fl/saas/adx/base/exception/FLError;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/api/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/fl/saas/adx/api/a;-><init>(Landroid/content/Context;Lcom/fl/saas/adx/api/AdParams;Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;)V

    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    return-void
.end method

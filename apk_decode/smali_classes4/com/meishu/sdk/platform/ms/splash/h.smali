.class public Lcom/meishu/sdk/platform/ms/splash/h;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/h;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/h;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/ad/splash/d;->onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

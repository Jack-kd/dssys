.class public Lcom/meishu/sdk/platform/ms/splash/g$b;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/splash/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/g$b;->a:Lcom/meishu/sdk/platform/ms/splash/g;

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
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g$b;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->b:Lcom/meishu/sdk/core/ad/splash/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g$b;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/g$b;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void

    .line 37
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.class public Lcom/meishu/sdk/platform/ms/splash/i;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/splash/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/splash/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/splash/i;->a:Lcom/meishu/sdk/platform/ms/splash/g;

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
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/i;->a:Lcom/meishu/sdk/platform/ms/splash/g;

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
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/i;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/c;->getSplashFinishingTouchListener()Lcom/meishu/sdk/core/ad/splash/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/splash/i;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 26
    .line 27
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/splash/g;->h:Z

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/c;->getSplashFinishingTouchListener()Lcom/meishu/sdk/core/ad/splash/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0, v2}, Lcom/meishu/sdk/core/ad/splash/b;->a(Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/splash/g;->d:Lcom/meishu/sdk/platform/ms/splash/b;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/splash/c;->getSplashFinishingTouchListener()Lcom/meishu/sdk/core/ad/splash/b;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/splash/i;->a:Lcom/meishu/sdk/platform/ms/splash/g;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/splash/g;->c:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 57
    .line 58
    check-cast v1, Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 59
    .line 60
    iget v1, v1, Lcom/meishu/sdk/meishu_ad/splash/d;->H:I

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    if-ne v1, v3, :cond_2

    .line 64
    .line 65
    move v2, v3

    .line 66
    :cond_2
    invoke-interface {v0, v2}, Lcom/meishu/sdk/core/ad/splash/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_3
    return-void

    .line 70
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

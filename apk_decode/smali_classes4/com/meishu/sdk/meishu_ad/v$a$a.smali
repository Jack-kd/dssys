.class public Lcom/meishu/sdk/meishu_ad/v$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v$a;->safeRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/v$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSkip()V
    .locals 3

    .line 1
    const-string v0, "AdNative"

    .line 2
    .line 3
    const-string v1, "onSkip: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->setHasClickedSkip(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 44
    .line 45
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/h;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/meishu/sdk/platform/ms/splash/h;-><init>(Lcom/meishu/sdk/platform/ms/splash/g;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 60
    .line 61
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/g;->b()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 8
    .line 9
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/j;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1, p2}, Lcom/meishu/sdk/platform/ms/splash/j;-><init>(Lcom/meishu/sdk/platform/ms/splash/g;J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->getTotalTime()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-long v0, v0

    .line 30
    sub-long/2addr v0, p1

    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v$a;->a:Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;->getShowTime()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    int-to-long p1, p1

    .line 40
    cmp-long p1, v0, p1

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/v$a;->d:Landroid/view/View;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public onTimeOver()V
    .locals 3

    .line 1
    const-string v0, "AdNative"

    .line 2
    .line 3
    const-string v1, "onTimeOver: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->setHasTimeOver(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 44
    .line 45
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/meishu/sdk/platform/ms/splash/i;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/meishu/sdk/platform/ms/splash/i;-><init>(Lcom/meishu/sdk/platform/ms/splash/g;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$a$a;->a:Lcom/meishu/sdk/meishu_ad/v$a;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$a;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 60
    .line 61
    check-cast v0, Lcom/meishu/sdk/platform/ms/splash/g;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/g;->b()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

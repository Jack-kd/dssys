.class public Lcom/meishu/sdk/meishu_ad/reward/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/reward/i$c;
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public final b:Ljava/lang/Object;

.field public c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

.field public volatile d:Ljava/lang/Boolean;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lcom/meishu/sdk/core/webview/h;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/reward/i$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->a:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->b:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->d:Ljava/lang/Boolean;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

    .line 20
    .line 21
    new-instance p1, Lcom/meishu/sdk/core/webview/h;

    .line 22
    .line 23
    new-instance v0, LR0/a;

    .line 24
    .line 25
    invoke-direct {v0, p0}, LR0/a;-><init>(Lcom/meishu/sdk/meishu_ad/reward/i;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/meishu/sdk/core/webview/h;-><init>(Lcom/meishu/sdk/core/webview/h$a;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->f:Lcom/meishu/sdk/core/webview/h;

    .line 32
    .line 33
    :try_start_0
    new-instance p1, Ljava/util/Timer;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/meishu/sdk/meishu_ad/reward/i$a;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/meishu/sdk/meishu_ad/reward/i$a;-><init>(Lcom/meishu/sdk/meishu_ad/reward/i;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x1388

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static a(Lcom/meishu/sdk/meishu_ad/reward/i;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->f:Lcom/meishu/sdk/core/webview/h;

    .line 16
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/meishu/sdk/core/webview/h;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    .line 18
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/i;->a()V

    return-void

    .line 20
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meishu/sdk/meishu_ad/reward/i;->c(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/reward/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/i;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "RewardH5"

    if-eqz p1, :cond_1

    .line 5
    const-string p1, "onH5ReadyRes 2"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/i;->c(Z)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->d:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    .line 8
    const-string p1, "onH5ReadyRes 3"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    const-string p1, "onH5ReadyRes 4"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/i;->c(Z)V

    return-void

    .line 12
    :cond_2
    const-string p1, "onH5ReadyRes 5"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/i;->a()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

    if-eqz v1, :cond_1

    .line 23
    const-string v1, "RewardH5"

    const-string v2, "final reward notifyFail"

    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

    check-cast v1, Lcom/meishu/sdk/meishu_ad/v$c;

    .line 25
    iget v2, v1, Lcom/meishu/sdk/meishu_ad/v$c;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 26
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/v$c;->f:Lcom/meishu/sdk/meishu_ad/v;

    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/v$c;->c:Lcom/meishu/sdk/meishu_ad/nativ/a;

    const-string v3, "video load error"

    sget-object v4, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->AD_LOAD_ERROR:Ljava/lang/Integer;

    .line 27
    invoke-virtual {v2, v1, v3, v4}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

    .line 29
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 4

    .line 19
    :try_start_0
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->a:Z

    .line 21
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/meishu/sdk/meishu_ad/reward/i$b;

    invoke-direct {v1, p0}, Lcom/meishu/sdk/meishu_ad/reward/i$b;-><init>(Lcom/meishu/sdk/meishu_ad/reward/i;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->d:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeReadyRes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardH5"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    .line 6
    const-string p1, "nativeReadyRes2"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/i;->b()V

    return-void

    .line 8
    :cond_1
    const-string p1, "nativeReadyRes3"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/i;->c(Z)V

    return-void

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    if-nez p1, :cond_3

    .line 11
    const-string p1, "nativeReadyRes4"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/i;->b()V

    return-void

    .line 13
    :cond_3
    const-string p1, "nativeReadyRes5"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    const-string p1, "nativeReadyRes6"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/reward/i;->c(Z)V

    return-void

    .line 17
    :cond_4
    const-string p1, "nativeReadyRes7"

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/meishu/sdk/meishu_ad/reward/i;->a()V

    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v1, "RewardH5"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "final reward notifySuccess:"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

    .line 31
    .line 32
    check-cast v1, Lcom/meishu/sdk/meishu_ad/v$c;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p1, v1, Lcom/meishu/sdk/meishu_ad/v$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 40
    .line 41
    iget-boolean p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/d;->l:Z

    .line 42
    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    iget-object p1, v1, Lcom/meishu/sdk/meishu_ad/v$c;->b:[Lcom/meishu/sdk/core/webview/s;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    aget-object p1, p1, v2

    .line 49
    .line 50
    iget-object v2, v1, Lcom/meishu/sdk/meishu_ad/v$c;->a:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 51
    .line 52
    invoke-static {p1, v2}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->setRewardH5Data(Lcom/meishu/sdk/core/webview/s;Lcom/meishu/sdk/meishu_ad/nativ/d;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v2, Lcom/meishu/sdk/meishu_ad/f0;

    .line 63
    .line 64
    invoke-direct {v2, v1}, Lcom/meishu/sdk/meishu_ad/f0;-><init>(Lcom/meishu/sdk/meishu_ad/v$c;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->c:Lcom/meishu/sdk/meishu_ad/reward/i$c;

    .line 72
    .line 73
    :cond_1
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public d(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/reward/i;->f:Lcom/meishu/sdk/core/webview/h;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/core/webview/h;->c:Ljava/lang/Boolean;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/meishu/sdk/core/webview/h;->c:Ljava/lang/Boolean;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "h5LoadedRes:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "RewardH5"

    .line 32
    .line 33
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/meishu/sdk/core/webview/h;->c:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, v0, Lcom/meishu/sdk/core/webview/h;->a:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter p1

    .line 48
    :try_start_0
    iget-object v2, v0, Lcom/meishu/sdk/core/webview/h;->b:Lcom/meishu/sdk/core/webview/h$a;

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-interface {v2, v3}, Lcom/meishu/sdk/core/webview/h$a;->a(Z)V

    .line 54
    .line 55
    .line 56
    iput-object v1, v0, Lcom/meishu/sdk/core/webview/h;->b:Lcom/meishu/sdk/core/webview/h$a;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    monitor-exit p1

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw v0

    .line 65
    :cond_2
    iget-object p1, v0, Lcom/meishu/sdk/core/webview/h;->a:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter p1

    .line 68
    :try_start_1
    iget-object v2, v0, Lcom/meishu/sdk/core/webview/h;->b:Lcom/meishu/sdk/core/webview/h$a;

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-interface {v2, v3}, Lcom/meishu/sdk/core/webview/h$a;->a(Z)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Lcom/meishu/sdk/core/webview/h;->b:Lcom/meishu/sdk/core/webview/h$a;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    :goto_2
    monitor-exit p1

    .line 82
    return-void

    .line 83
    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    throw v0
.end method

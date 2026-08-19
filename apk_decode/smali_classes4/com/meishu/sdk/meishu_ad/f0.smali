.class public Lcom/meishu/sdk/meishu_ad/f0;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/v$c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/f0;->a:Lcom/meishu/sdk/meishu_ad/v$c;

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
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/f0;->a:Lcom/meishu/sdk/meishu_ad/v$c;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/v$c;->c:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget v2, v0, Lcom/meishu/sdk/meishu_ad/v$c;->d:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$c;->e:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lcom/meishu/sdk/meishu_ad/m0;->onADLoaded(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/f0;->a:Lcom/meishu/sdk/meishu_ad/v$c;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$c;->c:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 20
    .line 21
    instance-of v1, v0, Lcom/meishu/sdk/platform/ms/reward/a;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    check-cast v0, Lcom/meishu/sdk/platform/ms/reward/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/reward/a;->e:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/f0;->a:Lcom/meishu/sdk/meishu_ad/v$c;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$c;->c:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 51
    .line 52
    check-cast v0, Lcom/meishu/sdk/platform/ms/reward/a;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object v1, v0, Lcom/meishu/sdk/platform/ms/reward/a;->a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 58
    .line 59
    instance-of v2, v1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    check-cast v1, Lcom/meishu/sdk/core/ad/reward/a;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/reward/a;->f:Lcom/meishu/sdk/platform/ms/a;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Lcom/meishu/sdk/core/ad/reward/a;->onVideoCached(Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.class public abstract Lcom/meishu/sdk/platform/ms/reward/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/a;


# instance fields
.field public a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

.field public b:Lcom/meishu/sdk/platform/ms/g;

.field public c:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field public d:Z

.field public e:Ljava/lang/Boolean;

.field public f:Lcom/meishu/sdk/platform/ms/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/g;Lcom/meishu/sdk/core/loader/IAdLoadListener;Lcom/meishu/sdk/meishu_ad/nativ/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/reward/a;->a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/reward/a;->c:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onADExposure()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->c:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/a;->a(Lcom/meishu/sdk/core/ad/AdSlot;)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    const-string v1, "AdListenerAdapter"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    const-string v0, "has exp. return"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->d:Z

    .line 20
    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->d:Z

    .line 25
    .line 26
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/reward/a;->c:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setHasExposed(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const-string v2, "send onAdExposure"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    array-length v1, v0

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_0
    if-ge v2, v1, :cond_3

    .line 66
    .line 67
    aget-object v3, v0, v2

    .line 68
    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 76
    .line 77
    instance-of v4, v4, Lcom/meishu/sdk/platform/ms/reward/b;

    .line 78
    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    sget-object v4, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    sget-object v4, Lcom/meishu/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcom/meishu/sdk/core/ad/AdType;

    .line 85
    .line 86
    :goto_1
    iget-object v5, p0, Lcom/meishu/sdk/platform/ms/reward/a;->c:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-static {v3, v5, v4}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;ILcom/meishu/sdk/core/ad/AdType;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v3}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    new-instance v5, Lcom/meishu/sdk/core/utils/i;

    .line 107
    .line 108
    invoke-direct {v5}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v3, v5}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void

    .line 125
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onADLoaded(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/meishu/sdk/platform/ms/a;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/meishu/sdk/platform/ms/c;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/reward/a;->c:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1, v2, p0}, Lcom/meishu/sdk/platform/ms/a;-><init>(Lcom/meishu/sdk/platform/ms/g;Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/platform/ms/reward/a;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->f:Lcom/meishu/sdk/platform/ms/a;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/reward/a;->a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onAdRenderFail(Ljava/lang/String;I)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->e:Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->b:Lcom/meishu/sdk/platform/ms/g;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getErrorUrl()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1, p1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->f:Lcom/meishu/sdk/platform/ms/a;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardMediaView()V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-object v1, v0, Lcom/meishu/sdk/platform/ms/a;->a:Lcom/meishu/sdk/platform/ms/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->clearRewardMediaView()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    new-instance v1, Lcom/meishu/sdk/platform/ms/d;

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, p1, v2}, Lcom/meishu/sdk/platform/ms/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcom/meishu/sdk/core/loader/AdPlatformError;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/reward/a;->a:Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 71
    .line 72
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_3
    return-void
.end method

.class final Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/e/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl;->performConvert(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/components/core/e/d/d;Lcom/kwad/sdk/api/manager/RewardRetryTaskManager$RetryRewardConvertResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic BJ:Lcom/kwad/sdk/api/manager/RewardRetryTaskManager$RetryRewardConvertResultListener;

.field final synthetic BK:Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl;

.field final synthetic cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field final synthetic dK:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl;Lcom/kwad/sdk/core/response/model/AdTemplate;Landroid/content/Context;Lcom/kwad/sdk/api/manager/RewardRetryTaskManager$RetryRewardConvertResultListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->BK:Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->dK:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->BJ:Lcom/kwad/sdk/api/manager/RewardRetryTaskManager$RetryRewardConvertResultListener;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 8

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/adlog/c/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iput v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->aKI:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/kwad/sdk/core/adlog/c/a;->adTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 12
    .line 13
    new-instance v1, Lcom/kwad/sdk/utils/al$a;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/kwad/sdk/utils/al$a;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->dK:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/kwad/sdk/utils/n;->getScreenWidth(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->dK:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/kwad/sdk/utils/n;->getScreenHeight(Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/kwad/sdk/utils/al$a;->H(II)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 38
    .line 39
    mul-double/2addr v2, v4

    .line 40
    double-to-int v2, v2

    .line 41
    int-to-float v2, v2

    .line 42
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    mul-double/2addr v6, v4

    .line 47
    double-to-int v3, v6

    .line 48
    int-to-float v3, v3

    .line 49
    invoke-virtual {v1, v2, v3}, Lcom/kwad/sdk/utils/al$a;->j(FF)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->e(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/sdk/core/adlog/c/a;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->cn:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/kwad/components/ad/reward/retryReward/b;->ac(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;->BJ:Lcom/kwad/sdk/api/manager/RewardRetryTaskManager$RetryRewardConvertResultListener;

    .line 61
    .line 62
    invoke-interface {v1}, Lcom/kwad/sdk/api/manager/RewardRetryTaskManager$RetryRewardConvertResultListener;->onSuccess()V

    .line 63
    .line 64
    .line 65
    const-string v1, "RewardRetryTaskCacheManager"

    .line 66
    .line 67
    const-string v2, "\u5f00\u59cb\u4e0a\u62a5track"

    .line 68
    .line 69
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/kwad/sdk/core/threads/GlobalThreadPools;->Oi()Ljava/util/concurrent/ExecutorService;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1$1;

    .line 77
    .line 78
    invoke-direct {v2, p0, v0}, Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1$1;-><init>(Lcom/kwad/components/ad/reward/retryReward/RewardRetryTaskManagerImpl$1;Lcom/kwad/sdk/core/adlog/c/a;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

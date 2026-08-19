.class final Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;->sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "jky receive live broadcast:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "RewardVideo"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "REWARD_LIVE_ACTION_VERIFY"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;->sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;->access$600(Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;)Lcom/kwad/components/ad/reward/e/i;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;->sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;->access$600(Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;)Lcom/kwad/components/ad/reward/e/i;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/kwad/components/ad/reward/e/i;->onRewardVerify()V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;->sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;->access$700(Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;)Lcom/kwad/components/core/n/a;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    new-instance p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 58
    .line 59
    invoke-direct {p1}, Lcom/kwad/sdk/core/response/model/LiveDetailReward;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 p2, 0x1

    .line 63
    iput-boolean p2, p1, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->success:Z

    .line 64
    .line 65
    iget-object p2, p0, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;->sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;->access$800(Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;)Lcom/kwad/components/core/n/a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/kwad/components/ad/reward/g;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/sdk/core/response/model/LiveDetailReward;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    const-string v0, "REWARD_LIVE_ACTION_PROGRESS"

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    const-string p1, "countDownSecond"

    .line 86
    .line 87
    const-wide/16 v2, 0x0

    .line 88
    .line 89
    invoke-virtual {p2, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    const-string p1, "hasRewardTime"

    .line 94
    .line 95
    const-wide/16 v4, 0x0

    .line 96
    .line 97
    invoke-virtual {p2, p1, v4, v5}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 98
    .line 99
    .line 100
    move-result-wide p1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "jky receive live broadcast progress:"

    .line 104
    .line 105
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;->sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;->access$900(Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;)Lcom/kwad/components/core/n/a;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    new-instance v0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;

    .line 127
    .line 128
    invoke-direct {v0}, Lcom/kwad/sdk/core/response/model/LiveDetailReward;-><init>()V

    .line 129
    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->success:Z

    .line 133
    .line 134
    iput-wide v2, v0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->countDownSecond:J

    .line 135
    .line 136
    iput-wide p1, v0, Lcom/kwad/sdk/core/response/model/LiveDetailReward;->hasRewardTime:D

    .line 137
    .line 138
    iget-object p1, p0, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy$2;->sg:Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;->access$1000(Lcom/kwad/components/ad/reward/KSRewardVideoActivityProxy;)Lcom/kwad/components/core/n/a;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/kwad/components/ad/reward/g;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Lcom/kwad/components/ad/reward/g;->a(Lcom/kwad/sdk/core/response/model/LiveDetailReward;)V

    .line 147
    .line 148
    .line 149
    :cond_2
    return-void
.end method

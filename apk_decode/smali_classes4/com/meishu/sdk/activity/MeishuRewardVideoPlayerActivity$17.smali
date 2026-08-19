.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->loadRewardVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

.field public final synthetic val$keepTime:J


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->val$keepTime:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 0

    return-void
.end method

.method public onVideoError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onVideoLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6702(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 18
    .line 19
    sget-object v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->rewardMediaView:Lcom/meishu/sdk/meishu_ad/n0;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Lcom/meishu/sdk/meishu_ad/n0;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onVideoPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    const-string v1, "broadcast_on_video_pause"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onVideoResume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    const-string v1, "broadcast_on_video_resume"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onVideoStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 22
    .line 23
    iget-wide v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->val$keepTime:J

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sget-object v2, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v1, v2, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 53
    .line 54
    int-to-long v2, v0

    .line 55
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 59
    .line 60
    int-to-long v2, v0

    .line 61
    invoke-static {v1, v2, v3}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$6402(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;J)J

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->setmTotalTime(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$1;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;->setOnSkipListener(Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar$a;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$5200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$2;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17$2;-><init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 107
    .line 108
    const/16 v1, 0x10

    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v1, "onVideoStart,isWebStarted="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ",mediaView="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "MeishuRewardVideoPlayer"

    .line 151
    .line 152
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1700(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_3

    .line 170
    .line 171
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$17;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 174
    .line 175
    .line 176
    :cond_3
    :goto_0
    return-void
.end method

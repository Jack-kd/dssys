.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->resumeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public notifyRunnableCatch(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "MeishuRewardVideoPlayer"

    .line 43
    .line 44
    const-string v1, "isloadingRes. return"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sget-object v1, Lcom/meishu/sdk/core/ad/AdType;->REWARD:Lcom/meishu/sdk/core/ad/AdType;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/AdType;->value()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v2, 0x0

    .line 63
    if-ne v0, v1, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/reward/CircleProcessBar;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setRewardWeb(Z)V

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$10;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    return-void
.end method

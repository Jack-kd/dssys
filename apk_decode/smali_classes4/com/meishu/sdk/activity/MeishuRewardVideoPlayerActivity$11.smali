.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/platform/ms/splash/ShakeUtil$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->initShakeAndTurn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

.field public final synthetic val$shakeRootView:Landroid/widget/LinearLayout;

.field public final synthetic val$startShakeTime:J


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;JLandroid/widget/LinearLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->val$startShakeTime:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->val$shakeRootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onShake(IZILcom/meishu/sdk/platform/ms/splash/ShakeResult;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1102(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 7
    .line 8
    invoke-static {p1, p3}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1202(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;I)I

    .line 9
    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    iget-wide v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->val$startShakeTime:J

    .line 18
    .line 19
    sub-long/2addr p1, v0

    .line 20
    invoke-virtual {p4, p1, p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->setTotalTurnTime(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 27
    .line 28
    invoke-static {p1, p4}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3702(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/view/gif/GifImageView;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->val$shakeRootView:Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const/16 p2, 0x8

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 65
    .line 66
    invoke-static {p2}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$3900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->a(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$11;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$4000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

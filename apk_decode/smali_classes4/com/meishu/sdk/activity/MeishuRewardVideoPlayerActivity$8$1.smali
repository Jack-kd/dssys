.class Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->onWebReady(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

.field public final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->val$webView:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->val$webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2000(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2100(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2200(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2300(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2400(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Lcom/meishu/sdk/core/bquery/i;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget v1, Lcom/meishu/sdk/R$id;->ms_shake_root_view:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->b(I)Lcom/meishu/sdk/core/bquery/e;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/meishu/sdk/core/bquery/i;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/bquery/e;->d(I)Lcom/meishu/sdk/core/bquery/e;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->getInstance()Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/ms/splash/ShakeUtil;->e()V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1900(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 114
    .line 115
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1800(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)Landroid/widget/RelativeLayout;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->val$webView:Landroid/webkit/WebView;

    .line 127
    .line 128
    const/4 v2, -0x1

    .line 129
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$2600(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8$1;->this$1:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity$8;->this$0:Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;

    .line 142
    .line 143
    const/4 v1, 0x1

    .line 144
    invoke-static {v0, v1}, Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;->access$1500(Lcom/meishu/sdk/activity/MeishuRewardVideoPlayerActivity;Z)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

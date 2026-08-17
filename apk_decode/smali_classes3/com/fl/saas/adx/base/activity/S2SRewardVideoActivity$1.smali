.class Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->initVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$402(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1200(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    .line 30
    .line 31
    sget v1, Lcom/fl/saas/R$string;->fl_adx_continue_scrolling_to_get:I

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public onEndScroll()V
    .locals 3

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/fl/saas/adx/base/activity/m;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/activity/m;-><init>(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lcom/fl/saas/adx/util/DeviceUtil;->postUIDelayed(JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLoadFailed()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$002(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$100(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$300(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/j;

    move-result-object v2

    iget v2, v2, Lcom/fl/saas/j;->S:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v0, v2}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$202(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$402(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$500(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$600(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$700(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$800(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$900(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onLoadSuccess()V
    .locals 0

    return-void
.end method

.method public onStartScroll()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$1;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$402(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;Z)Z

    return-void
.end method

.method public onTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

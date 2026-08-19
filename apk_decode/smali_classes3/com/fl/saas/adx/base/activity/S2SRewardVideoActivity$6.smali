.class Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->finishDelayed()V
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

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$6;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1500()Lcom/fl/saas/N0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$1500()Lcom/fl/saas/N0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/N0;->f()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$6;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

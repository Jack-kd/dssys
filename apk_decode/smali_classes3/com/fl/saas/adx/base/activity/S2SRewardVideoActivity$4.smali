.class Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnImageLoadListener;


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

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$4;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$4;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity$4;->this$0:Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;->access$2000(Lcom/fl/saas/adx/base/activity/S2SRewardVideoActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

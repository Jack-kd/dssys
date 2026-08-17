.class Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView$WebViewStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$1;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndScroll()V
    .locals 0

    return-void
.end method

.method public onLoadFailed()V
    .locals 0

    return-void
.end method

.method public onLoadSuccess()V
    .locals 0

    return-void
.end method

.method public onStartScroll()V
    .locals 0

    return-void
.end method

.method public onTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$1;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$1;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->access$000(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

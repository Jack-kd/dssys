.class Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->operateClick()V
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

    iput-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->access$100(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->access$100(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-static {v0}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->access$200(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-static {p1}, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;->access$100(Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;)Lcom/fl/saas/adx/base/activity/h5/SignUrlWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/activity/h5/FLH5Activity$3;->this$0:Lcom/fl/saas/adx/base/activity/h5/FLH5Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

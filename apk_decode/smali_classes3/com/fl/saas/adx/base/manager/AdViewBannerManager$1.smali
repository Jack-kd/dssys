.class Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isLoaded:Z

.field private mParams:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

.field final synthetic val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

.field final synthetic val$builder:Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    iput-object p2, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;

    iput-object p3, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->isLoaded:Z

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getContextOpt()Lcom/fl/saas/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fl/saas/p0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p3}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$002(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {p3}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result p3

    invoke-virtual {p2}, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result p2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/base/listener/InnerBannerListener;->onAdClick(Ljava/lang/String;)V

    return-void
.end method

.method public onAdExposure()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerBannerListener;->onAdExposure()V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onClosed()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v0}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$300(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerBannerListener;->onClosed()V

    return-void
.end method

.method public onReceived(Landroid/view/View;)V
    .locals 4

    const-string v0, "BannerView\u52a0\u8f7d\u5931\u8d25"

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$100(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-virtual {v3}, Lcom/fl/saas/adx/base/manager/manager/BuilderLoadManager;->getContextOpt()Lcom/fl/saas/p0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fl/saas/p0;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$002(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;

    invoke-virtual {v1}, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$builder:Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;

    invoke-virtual {v2}, Lcom/fl/saas/adx/base/base/builder/InnerBannerBuilder;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/fl/saas/adx/util/DeviceUtil;->dip2px(F)I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->mParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->isLoaded:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->isLoaded:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {p1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/ViewHelper;->removeParent(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    iget-object v1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {v1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$000(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/fl/saas/adx/base/base/listener/InnerBannerListener;->onReceived(Landroid/view/View;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewBannerManager;

    invoke-static {p1}, Lcom/fl/saas/adx/base/manager/AdViewBannerManager;->access$200(Lcom/fl/saas/adx/base/manager/AdViewBannerManager;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/fl/saas/adx/base/exception/FLError;

    invoke-direct {v1, v0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewBannerManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewBannerListener;

    if-nez p1, :cond_6

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance v1, Lcom/fl/saas/adx/base/exception/FLError;

    invoke-direct {v1, v0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

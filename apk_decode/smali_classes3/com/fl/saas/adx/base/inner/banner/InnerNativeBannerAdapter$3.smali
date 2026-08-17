.class Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$1000(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$900(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V

    return-void
.end method

.method public onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;

    invoke-direct {v0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;-><init>()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$500(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setActivity(Landroid/app/Activity;)V

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getClicks()[Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setClickView([Landroid/view/View;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v1

    instance-of v1, v1, Lcom/fl/saas/adx/base/innterNative/ActionView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v1

    check-cast v1, Lcom/fl/saas/adx/base/innterNative/ActionView;

    sget-object v2, Lcom/fl/saas/adx/base/innterNative/ActionView$Type;->Banner:Lcom/fl/saas/adx/base/innterNative/ActionView$Type;

    invoke-interface {v1, v2}, Lcom/fl/saas/adx/base/innterNative/ActionView;->bindActionView(Lcom/fl/saas/adx/base/innterNative/ActionView$Type;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-virtual {v2}, Lcom/fl/saas/n;->getAdSource()Lcom/fl/saas/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fl/saas/j;->h()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v3}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$600(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)I

    move-result v3

    iget-object v4, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v4}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$700(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v1

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v2

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getSelfView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {v1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V

    :cond_2
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$3;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-interface {p1}, Lcom/fl/saas/adx/base/inner/InnerNativeView;->getNativeAdView()Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$800(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

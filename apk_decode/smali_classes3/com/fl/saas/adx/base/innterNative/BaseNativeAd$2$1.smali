.class Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    return-void
.end method

.method public onNativeAdLoaded(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v0, v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$700(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v0, v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$700(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->release()V

    :cond_0
    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v0, v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$702(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Lcom/fl/saas/adx/api/mixNative/NativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAd;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setCanRefresh(Z)V

    new-instance v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;

    invoke-direct {v0, p0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1$1;-><init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;)V

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->setNativeEventListener(Lcom/fl/saas/adx/api/mixNative/NativeEventListener;)V

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->getAdMaterial()Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getAdMediaView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v1, v1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v1, v1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v1, v1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v1

    invoke-static {}, Lcom/fl/saas/adx/util/ViewHelper;->getMatchParent()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v0, v0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$900(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Lcom/fl/saas/adx/api/mixNative/NativeAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->renderAdContainer(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Landroid/view/View;)V

    new-instance v0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;

    invoke-direct {v0}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;-><init>()V

    iget-object v1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object v1, v1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$500(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->setActivity(Landroid/app/Activity;)V

    invoke-interface {p1, v0}, Lcom/fl/saas/adx/api/mixNative/NativeAd;->prepare(Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2$1;->this$1:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;

    iget-object p1, p1, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$2;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$400(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    :cond_1
    return-void
.end method

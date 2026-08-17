.class Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isReportExposure:Z

.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->isReportExposure:Z

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/d;->onClickedEvent()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$1100(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$1100(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->onClicked()V

    :cond_0
    return-void
.end method

.method public onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;->access$1200(Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;)V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-virtual {p1, p2}, Lcom/fl/saas/o;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->isReportExposure:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->isReportExposure:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter$4;->this$0:Lcom/fl/saas/adx/base/inner/banner/InnerNativeBannerAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/d;->onShowEvent()V

    :cond_0
    return-void
.end method

.method public onAdVideoEnd(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    return-void
.end method

.method public onAdVideoProgress(Lcom/fl/saas/adx/api/mixNative/NativeAdView;J)V
    .locals 0

    return-void
.end method

.method public onAdVideoStart(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    return-void
.end method

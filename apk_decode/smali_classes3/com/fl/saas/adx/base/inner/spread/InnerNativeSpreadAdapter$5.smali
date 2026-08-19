.class Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/api/mixNative/NativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->render(Lcom/fl/saas/adx/api/mixNative/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isReportExposure:Z

.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

.field final synthetic val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->isReportExposure:Z

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/g;->onClickedEvent()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->onClicked()V

    return-void
.end method

.method public onAdClose(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;->access$1200(Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;)V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-virtual {p1, p2}, Lcom/fl/saas/g;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->cancelCountdown()V

    return-void
.end method

.method public onAdImpressed(Lcom/fl/saas/adx/api/mixNative/NativeAdView;)V
    .locals 0

    iget-boolean p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->isReportExposure:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->isReportExposure:Z

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->val$spreadView:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-virtual {p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->startCountdown()V

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter$5;->this$0:Lcom/fl/saas/adx/base/inner/spread/InnerNativeSpreadAdapter;

    invoke-virtual {p1}, Lcom/fl/saas/g;->onShowEvent()V

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

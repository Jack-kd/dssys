.class Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/widget/VisibilityLayout$OnViewWindowChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->checkDataUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$300(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$400(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    return-void
.end method

.method public onViewWindowVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {v0, p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$002(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;Z)Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$100(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd$1;->this$0:Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;

    invoke-static {p1}, Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;->access$200(Lcom/fl/saas/adx/base/innterNative/BaseNativeAd;)V

    return-void
.end method

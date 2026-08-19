.class Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    move-result-object p1

    new-instance p2, Lcom/fl/saas/adx/base/exception/FLError;

    const-string v0, "\u7d20\u6750\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {p2, v0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_0
    return-void
.end method

.method public onBitmapLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/fl/saas/a0;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$100(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$100(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$200(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/banner/BannerViewHelper;)Lcom/fl/saas/adx/base/inner/banner/BannerViewEvent;

    move-result-object p1

    new-instance p2, Lcom/fl/saas/adx/base/exception/FLError;

    const-string p3, "\u7d20\u6750\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {p2, p3}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_1
    return-void
.end method

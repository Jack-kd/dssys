.class Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/B;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p2}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget p1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$400(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    move-result-object p1

    new-instance p2, Lcom/fl/saas/adx/base/exception/FLError;

    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {p2, v0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_0
    return-void
.end method

.method public onBitmapLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/fl/saas/a0;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    sget p2, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    if-le p2, p3, :cond_0

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    new-instance p3, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadHorizontalView;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-static {p2, p3}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$102(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    new-instance p3, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/fl/saas/adx/base/inner/spread/coustomView/SpreadVerticalView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$100(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    invoke-interface {p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->loadIcon()Lcom/fl/saas/B;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p3}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$200(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p3

    invoke-interface {p3}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p3}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p3

    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$200(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/spread/i;

    invoke-direct {v1, p2}, Lcom/fl/saas/adx/base/inner/spread/i;-><init>(Lcom/fl/saas/B;)V

    invoke-virtual {p3, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    :cond_2
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$100(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$400(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    return-void

    :cond_3
    sget p1, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;->access$400(Lcom/fl/saas/adx/base/inner/spread/SpreadViewHelper;)Lcom/fl/saas/adx/base/inner/spread/SpreadViewEvent;

    move-result-object p1

    new-instance p2, Lcom/fl/saas/adx/base/exception/FLError;

    const-string p3, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {p2, p3}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    :cond_4
    return-void
.end method

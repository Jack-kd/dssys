.class Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->loadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

.field final synthetic val$selfRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->val$selfRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz p3, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, p3}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz p3, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, p3}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz p3, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1, p3}, Lcom/fl/saas/B;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->val$selfRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    sget p2, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    move-result-object p1

    new-instance p2, Lcom/fl/saas/adx/base/exception/FLError;

    const-string v0, "\u7d20\u6750\u52a0\u8f7d\u5931\u8d25"

    invoke-direct {p2, v0}, Lcom/fl/saas/adx/base/exception/FLError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    invoke-interface {p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->loadIcon()Lcom/fl/saas/B;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v1

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/adx/base/inner/interstitial/t;

    invoke-direct {v2, p1, p2}, Lcom/fl/saas/adx/base/inner/interstitial/t;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;)V

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    :cond_1
    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$600(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    sget p2, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    :cond_2
    return-void
.end method

.method public onBitmapLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 3

    iget-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->val$selfRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$000(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_2

    :cond_0
    sget p3, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$100(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;->onLoaded(Lcom/fl/saas/adx/base/inner/InnerNativeView;)V

    :cond_1
    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/fl/saas/a0;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_6

    sget p3, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le p3, v0, :cond_2

    sget-object p3, Lcom/fl/saas/q0;->c:Lcom/fl/saas/q0;

    :goto_0
    invoke-static {p1, p3}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$400(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/q0;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$302(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-static {p3}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p3

    if-nez p3, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-static {p3}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p3

    invoke-interface {p3}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->loadIcon()Lcom/fl/saas/B;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object v0

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v1

    invoke-interface {v1}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/adx/base/inner/interstitial/r;

    invoke-direct {v2, p1, p3}, Lcom/fl/saas/adx/base/inner/interstitial/r;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;)V

    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    :cond_5
    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$600(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_6
    sget p2, Lcom/fl/saas/adx/util/DeviceUtil;->filling_timing:I

    if-eqz p2, :cond_7

    sget-object p2, Lcom/fl/saas/q0;->b:Lcom/fl/saas/q0;

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$400(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/q0;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$302(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    :cond_7
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper$1;->this$0:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    invoke-static {p2}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    invoke-interface {p2}, Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;->loadIcon()Lcom/fl/saas/B;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object p3

    invoke-interface {p3}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$200(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Lcom/fl/saas/adx/util/FLImageLoader;->getInstance(Landroid/content/Context;)Lcom/fl/saas/adx/util/FLImageLoader;

    move-result-object p3

    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$500(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;

    move-result-object v0

    invoke-interface {v0}, Lcom/fl/saas/adx/api/mixNative/NativeMaterial;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fl/saas/adx/base/inner/interstitial/s;

    invoke-direct {v1, p1, p2}, Lcom/fl/saas/adx/base/inner/interstitial/s;-><init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;)V

    invoke-virtual {p3, v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->loadBitmap(Ljava/lang/String;Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;)V

    :cond_9
    invoke-static {p1}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$300(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;)Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->access$600(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/adx/base/inner/InnerNativeCustomView;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_a
    :goto_2
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    :goto_3
    return-void
.end method

.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/n;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/n;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1, p2, p3}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->i(Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

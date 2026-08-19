.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/util/FLImageLoader$OnBitmapLoadSuccessListener;


# instance fields
.field public final synthetic a:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

.field public final synthetic b:Lcom/fl/saas/B;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/o;->a:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/o;->b:Lcom/fl/saas/B;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/o;->a:Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/o;->b:Lcom/fl/saas/B;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;->g(Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewHelper;Lcom/fl/saas/B;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

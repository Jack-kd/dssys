.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/B;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/B;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/B;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/B;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;->b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMVView;Landroid/graphics/Bitmap;)V

    return-void
.end method

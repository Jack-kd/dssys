.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;

.field public final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/x;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/x;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/x;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/x;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;->d(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialVMHView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

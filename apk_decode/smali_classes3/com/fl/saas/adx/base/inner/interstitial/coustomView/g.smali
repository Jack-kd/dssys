.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;IILandroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    iput p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->c:I

    iput p3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->d:I

    iput-object p4, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->e:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p5, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    iget v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->c:I

    iget v2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->d:I

    iget-object v3, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->e:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/g;->f:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;IILandroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V

    return-void
.end method

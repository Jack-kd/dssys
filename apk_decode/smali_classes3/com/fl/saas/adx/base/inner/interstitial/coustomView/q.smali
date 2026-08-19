.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;

.field public final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/q;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/q;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/q;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/q;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->c(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

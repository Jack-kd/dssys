.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;

.field public final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/l;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/l;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/l;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/l;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;->e(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMHView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

.field public final synthetic c:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/h;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    iput-object p2, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/h;->c:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/h;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;

    iget-object v1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/h;->c:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;

    invoke-static {v0, v1, p1}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;->e(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialFullScreenView;Lcom/fl/saas/adx/base/inner/interstitial/coustomView/VideoSoundControlListener;Landroid/view/View;)V

    return-void
.end method

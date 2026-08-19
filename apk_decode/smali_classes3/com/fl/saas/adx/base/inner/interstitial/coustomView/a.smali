.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/a;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/a;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;

    invoke-static {v0, p1, p2}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;->b(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialEnvelopeView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/fl/saas/adx/base/inner/interstitial/coustomView/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/r;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/r;->b:Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;

    invoke-static {v0}, Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;->f(Lcom/fl/saas/adx/base/inner/interstitial/coustomView/InterstitialHMVView;)V

    return-void
.end method

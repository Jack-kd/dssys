.class Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;->initProxyEventListener(Lcom/fl/saas/adx/base/base/builder/InnerInterstitialBuilder;)Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;

.field final synthetic val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;->this$0:Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager;

    iput-object p2, p0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdClick(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdClosed()V

    return-void
.end method

.method public onAdDisplay()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdDisplay()V

    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/fl/saas/adx/base/interfaces/AdViewListener;->onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V

    return-void
.end method

.method public onAdReady()V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/base/manager/AdViewInterstitialManager$1;->val$adViewAdInterface:Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/fl/saas/adx/base/base/listener/InnerInterstitialListener;->onAdReady()V

    return-void
.end method

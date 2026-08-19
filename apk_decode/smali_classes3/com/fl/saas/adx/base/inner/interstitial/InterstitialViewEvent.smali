.class public interface abstract Lcom/fl/saas/adx/base/inner/interstitial/InterstitialViewEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fl/saas/adx/base/inner/InnerViewLoaderEvent<",
        "Lcom/fl/saas/adx/base/inner/interstitial/coustomView/NativeInterstitialView;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onActivityShow(Landroid/app/Activity;)V
.end method

.method public abstract onDismiss()V
.end method

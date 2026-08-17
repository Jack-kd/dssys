.class public interface abstract Lcom/anythink/network/octopus/ZyATInterstitial$AdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/octopus/ZyATInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdListener"
.end annotation


# virtual methods
.method public abstract onAdCacheLoaded(Z)V
.end method

.method public abstract onAdClicked()V
.end method

.method public abstract onAdClosed()V
.end method

.method public abstract onAdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAdFailedToPLay(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAdLoaded(Lcom/octopus/ad/IBidding;)V
.end method

.method public abstract onAdShown()V
.end method

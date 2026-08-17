.class public interface abstract Lcom/anythink/network/octopus/ZyATNativeAd$AdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/octopus/ZyATNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdListener"
.end annotation


# virtual methods
.method public abstract onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNativeAdLoadSuccess(Ljava/util/List;Lcom/octopus/ad/IBidding;D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ">;",
            "Lcom/octopus/ad/IBidding;",
            "D)V"
        }
    .end annotation
.end method

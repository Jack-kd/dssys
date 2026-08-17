.class public interface abstract Lcom/anythink/network/funlink/FunlinkATFeedAd$AdListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/funlink/FunlinkATFeedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdListener"
.end annotation


# virtual methods
.method public abstract onNativeAdFailToLoad(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;",
            ">;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

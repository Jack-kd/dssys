.class public interface abstract Lcom/meishu/sdk/core/ad/reward/RewardAdEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/IAdEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/ad/IAdEventListener<",
        "Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onReward(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoCached(Lcom/meishu/sdk/core/ad/reward/RewardVideoAd;)V
.end method

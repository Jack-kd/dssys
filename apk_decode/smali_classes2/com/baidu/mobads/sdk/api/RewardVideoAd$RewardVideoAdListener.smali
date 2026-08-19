.class public interface abstract Lcom/baidu/mobads/sdk/api/RewardVideoAd$RewardVideoAdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/ScreenVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/sdk/api/RewardVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RewardVideoAdListener"
.end annotation


# virtual methods
.method public abstract onAdClick()V
.end method

.method public abstract onAdClose(F)V
.end method

.method public abstract onAdFailed(Ljava/lang/String;)V
.end method

.method public abstract onAdLoaded()V
.end method

.method public abstract onAdShow()V
.end method

.method public abstract onAdSkip(F)V
.end method

.method public abstract onRewardVerify(ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoDownloadFailed()V
.end method

.method public abstract onVideoDownloadSuccess()V
.end method

.method public abstract playCompletion()V
.end method

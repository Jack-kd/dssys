.class Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/nativead/NativeAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATBannerAdapter;->showBannerAd(Lcom/octopus/ad/NativeAdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onADExposed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAdClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdRenderFailed(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$300(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$1000(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/octopus/ad/topon/OctopusATBannerAdapter;->access$1100(Lcom/octopus/ad/topon/OctopusATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "onAdFailedToLoad errorCode\uff1a"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v1, v2}, Lcom/anythink/core/api/ATCustomLoadListener;->onAdLoadError(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATBannerAdapter$3;->this$0:Lcom/octopus/ad/topon/OctopusATBannerAdapter;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/anythink/core/api/bridge/ATBaseAdInternalAdapter;->mBiddingListener:Lcom/anythink/core/api/ATBiddingListener;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/anythink/core/api/ATBiddingResult;->fail(Ljava/lang/String;)Lcom/anythink/core/api/ATBiddingResult;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-interface {v0, p1, v1}, Lcom/anythink/core/api/ATBiddingListener;->onC2SBiddingResultWithCache(Lcom/anythink/core/api/ATBiddingResult;Lcom/anythink/core/api/BaseAd;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

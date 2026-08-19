.class Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "SigmobCustomInterstitia"

    .line 2
    .line 3
    const-string v0, "onInterstitialAdClicked"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$500(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$600(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onInterstitialAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "onError, code: "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", msg: "

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "SigmobCustomInterstitia"

    .line 31
    .line 32
    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p2, v0, p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$700(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onInterstitialAdLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/sigmob/windad/newInterstitial/WindNewInterstitialAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/sigmob/sdk/c;->getEcpm()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$300(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onInterstitialAdPreLoadFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInterstitialAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInterstitialAdShow(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;->access$400(Lcom/meishu/sdk/platform/sigmob/custom/interstitial/SigmobCustomInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onInterstitialAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "onError, code: "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", msg: "

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "SigmobCustomInterstitia"

    .line 31
    .line 32
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

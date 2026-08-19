.class Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$400(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$500(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdShowed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2$1;->this$1:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter$2;->this$0:Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$200(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;)Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;->access$300(Lcom/meishu/sdk/platform/pangle/interstitial/PangleInterstitialAdapter;Lcom/meishu/sdk/platform/custom/interstitial/MsCustomInterstitialAd;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.class Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/lifecycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$100(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$200(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$100(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;)Lcom/miui/zeus/mimo/sdk/InterstitialAd;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/miui/zeus/mimo/sdk/InterstitialAd;->destroy()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd$3;->this$0:Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;->access$202(Lcom/meishu/sdk/platform/mimo/insterstitial/MimoInterstitialAd;Z)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.class Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/lifecycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

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
    .locals 2

    .line 1
    const-string v0, "GDTInterstitialAd"

    .line 2
    .line 3
    const-string v1, "onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    const-string v0, "GDTInterstitialAd"

    .line 2
    .line 3
    const-string v1, "onPause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->access$100(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;->access$000(Lcom/meishu/sdk/platform/gdt/interstitial/GDTInterstitialAd;)Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialAD;->close()V

    .line 31
    .line 32
    .line 33
    :cond_0
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
    .locals 2

    .line 1
    const-string v0, "GDTInterstitialAd"

    .line 2
    .line 3
    const-string v1, "onStop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

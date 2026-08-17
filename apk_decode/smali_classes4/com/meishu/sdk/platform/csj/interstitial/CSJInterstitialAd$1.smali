.class Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/lifecycle/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;

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
    const-string v0, "CSJInterstitialAd"

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
    .locals 5

    .line 1
    const-string v0, "onPause"

    .line 2
    .line 3
    const-string v1, "CSJInterstitialAd"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->access$000(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->access$100(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->access$000(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/view/ViewGroup;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v3, 0x2

    .line 71
    if-le v2, v3, :cond_0

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 78
    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "closeView="

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd$1;->this$0:Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;->access$102(Lcom/meishu/sdk/platform/csj/interstitial/CSJInterstitialAd;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
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
    const-string v0, "CSJInterstitialAd"

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

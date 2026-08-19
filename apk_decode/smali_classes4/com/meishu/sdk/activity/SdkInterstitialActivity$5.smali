.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/SdkInterstitialActivity;->handleMsAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

.field public final synthetic val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

.field public final synthetic val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/SdkInterstitialActivity;Lcom/meishu/sdk/meishu_ad/interstitial/b;Lcom/meishu/sdk/meishu_ad/interstitial/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$700(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1000(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$5;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void
.end method

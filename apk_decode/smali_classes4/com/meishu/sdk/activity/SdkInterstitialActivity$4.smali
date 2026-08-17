.class Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;
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
    iput-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

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
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

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
    goto :goto_1

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
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

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
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->val$adSlot:Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setClkActType(I)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1000(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/interstitial/c;->c()Lcom/meishu/sdk/meishu_ad/interstitial/b;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAdClosed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->val$sdkAd:Lcom/meishu/sdk/meishu_ad/interstitial/c;

    .line 74
    .line 75
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$1000(Lcom/meishu/sdk/activity/SdkInterstitialActivity;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/meishu/sdk/activity/SdkInterstitialActivity$4;->this$0:Lcom/meishu/sdk/activity/SdkInterstitialActivity;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-static {}, Lcom/meishu/sdk/activity/SdkInterstitialActivity;->access$000()Lcom/meishu/sdk/core/ad/IAd;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_1
    return-void
.end method

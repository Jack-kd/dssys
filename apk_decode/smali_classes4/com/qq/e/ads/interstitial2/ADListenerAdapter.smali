.class Lcom/qq/e/ads/interstitial2/ADListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# instance fields
.field private final a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

.field private b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

.field private c:Lcom/qq/e/comm/listeners/ADRewardListener;

.field private d:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_8

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_7

    const/16 v1, 0xca

    if-eq v0, v1, :cond_6

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xce

    if-eq v0, v1, :cond_4

    const/16 v1, 0xcf

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->d:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/comm/listeners/NegativeFeedbackListener;->onComplainSuccess()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onADLeftApplication()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoPageClose()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoPageOpen()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoLoading()V

    return-void

    :pswitch_5
    invoke-virtual {p1, v2}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoReady(J)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoInit()V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onADClosed()V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onADClicked()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->c:Lcom/qq/e/comm/listeners/ADRewardListener;

    if-eqz v0, :cond_a

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_1

    const-string v3, "transId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "devExt"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->c:Lcom/qq/e/comm/listeners/ADRewardListener;

    invoke-interface {p1, v2}, Lcom/qq/e/comm/listeners/ADRewardListener;->onReward(Ljava/util/Map;)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onADExposure()V

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onADOpened()V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->getAdError(Lcom/qq/e/comm/adevent/ADEvent;)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onADReceive()V

    return-void

    :cond_3
    invoke-virtual {p1, v2}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoError(Lcom/qq/e/comm/util/AdError;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoComplete()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoPause()V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;->onVideoStart()V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onVideoCached()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/qq/e/comm/util/a;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onRenderFail()V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/qq/e/comm/util/a;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->a:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;

    invoke-interface {p1}, Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;->onRenderSuccess()V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdRewardListener(Lcom/qq/e/comm/listeners/ADRewardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->c:Lcom/qq/e/comm/listeners/ADRewardListener;

    return-void
.end method

.method public setMediaListener(Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->b:Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;

    return-void
.end method

.method public setNegativeFeedbackListener(Lcom/qq/e/comm/listeners/NegativeFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/interstitial2/ADListenerAdapter;->d:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    return-void
.end method

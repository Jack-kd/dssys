.class public Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/sigmob/sdk/newInterstitial/e;

.field private c:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/newInterstitial/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b:Lcom/sigmob/sdk/newInterstitial/e;

    invoke-virtual {p0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.rewardedvideo.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.rewardedvideo.skip"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.rewardedvideo.playFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.rewardedvideo.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.rewardedvideo.Close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public b(Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b:Lcom/sigmob/sdk/newInterstitial/e;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b:Lcom/sigmob/sdk/newInterstitial/e;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "action.rewardedvideo.Close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "action.rewardedvideo.skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "action.rewardedvideo.play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "action.rewardedvideo.playFail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b:Lcom/sigmob/sdk/newInterstitial/e;

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p2, v0}, Lcom/sigmob/sdk/newInterstitial/e;->p(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b:Lcom/sigmob/sdk/newInterstitial/e;

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/newInterstitial/e;->q(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b:Lcom/sigmob/sdk/newInterstitial/e;

    iget-object p2, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/newInterstitial/e;->r(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :pswitch_3
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b:Lcom/sigmob/sdk/newInterstitial/e;

    iget-object v1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1, p2}, Lcom/sigmob/sdk/newInterstitial/e;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    iput-object p1, p0, Lcom/sigmob/sdk/newInterstitial/NewInterstitialAdBroadcastReceiver;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x418ba135 -> :sswitch_3
        0x1adce20d -> :sswitch_2
        0x1ade3c58 -> :sswitch_1
        0x3e45721f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String; = "EventForwardingBroadcastReceiver"

.field private static c:Landroid/content/IntentFilter;


# instance fields
.field public b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private d:Lcom/sigmob/sdk/base/common/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.vopen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->c:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public b(Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#onReceive: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requestId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "action.interstitial.show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string p1, "action.interstitial.fail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string p1, "action.interstitial.vopen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string p1, "action.interstitial.click"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string p1, "action.interstitial.dismiss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/p;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :pswitch_1
    const-string p1, "error"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p2, v0, p1}, Lcom/sigmob/sdk/base/common/p;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/p;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/p;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->d:Lcom/sigmob/sdk/base/common/p;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/p;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p0, p0}, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/EventForwardingBroadcastReceiver;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_8
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x16b20580 -> :sswitch_4
        0x60d92fe -> :sswitch_3
        0x71ac936 -> :sswitch_2
        0x297d82e8 -> :sswitch_1
        0x298386c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

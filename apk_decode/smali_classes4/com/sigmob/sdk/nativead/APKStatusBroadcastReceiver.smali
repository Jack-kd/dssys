.class public Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# instance fields
.field a:Lcom/sigmob/sdk/base/common/b;

.field b:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.download.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.download.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.download.end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.install.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b:Landroid/content/IntentFilter;

    const-string v1, "action.interstitial.install.end"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->b:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public b(Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "downloadId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v3, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "action.interstitial.install.start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string p2, "action.interstitial.install.end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string p2, "action.interstitial.download.start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string p2, "action.interstitial.download.pause"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string p2, "action.interstitial.download.end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/common/b;->a(Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    invoke-interface {p1, v0}, Lcom/sigmob/sdk/base/common/b;->b(Z)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    invoke-interface {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/b;->a(ZJ)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    invoke-interface {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/b;->c(ZJ)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/sigmob/sdk/nativead/APKStatusBroadcastReceiver;->a:Lcom/sigmob/sdk/base/common/b;

    invoke-interface {p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/b;->b(ZJ)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d8407c1 -> :sswitch_4
        -0x2c0bb3a6 -> :sswitch_3
        -0x2bd9153a -> :sswitch_2
        0x166baefe -> :sswitch_1
        0x2b03edc5 -> :sswitch_0
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

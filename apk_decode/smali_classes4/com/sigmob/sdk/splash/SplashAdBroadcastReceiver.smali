.class public Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;
.super Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;


# static fields
.field private static a:Landroid/content/IntentFilter;


# instance fields
.field private b:Lcom/sigmob/sdk/splash/e;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/splash/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.splash.stoptime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.splash.playFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.splash.skip"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.loadpage.show"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    const-string v1, "action.loadpage.dismiss"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public b(Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

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

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "action.loadpage.dismiss"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "action.splash.stoptime"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "action.loadpage.show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "action.splash.skip"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string p2, "action.splash.play"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "action.splash.playFail"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/x;->b()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/e;->a_()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/x;->a()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/e;->c_()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/e;->d_()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b:Lcom/sigmob/sdk/splash/e;

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/e;->b_()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e7f279f -> :sswitch_5
        -0x50de695d -> :sswitch_4
        -0x50dd0f12 -> :sswitch_3
        0x73fef31e -> :sswitch_2
        0x77d045be -> :sswitch_1
        0x7a329ac9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

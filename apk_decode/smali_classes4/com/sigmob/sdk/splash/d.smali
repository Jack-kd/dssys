.class Lcom/sigmob/sdk/splash/d;
.super Lcom/sigmob/sdk/base/common/y;


# instance fields
.field c:Lcom/sigmob/sdk/splash/a;

.field private d:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/y;-><init>(Lcom/sigmob/sdk/base/common/p;)V

    return-void
.end method

.method public static c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/common/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/y;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdConfig()Lcom/sigmob/sdk/base/common/i;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/splash/a;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/d;->c:Lcom/sigmob/sdk/splash/a;

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sigmob/sdk/base/common/y;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/y;->a:Lcom/sigmob/sdk/base/common/p;

    instance-of v0, p2, Lcom/sigmob/sdk/splash/e;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/sigmob/sdk/splash/e;

    new-instance v0, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;-><init>(Lcom/sigmob/sdk/splash/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/d;->d:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/sigmob/sdk/splash/d;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/y;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/d;->d:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p1}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->b(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/d;->d:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    return-void
.end method

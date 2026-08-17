.class Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->load(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

.field final synthetic b:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->b:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;->onClick()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;->onClose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdDisplay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;->onShow()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-string p1, "unknown error"

    .line 26
    .line 27
    :goto_1
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

    .line 28
    .line 29
    invoke-interface {v1, v0, p1}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public onAdReady()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->b:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a(Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->a:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->b:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a(Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/fl/saas/adx/base/base/BaseAPI;->getECPM()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader$a;->b:Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;->a(Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$InterstitialLoader;)Lcom/fl/saas/adx/api/FLInterstitial;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/anythink/network/funlink/FunlinkATInterstitialLoader$Listener;->onPrepared(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.class Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/adx/base/interfaces/AdViewSpreadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->h(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->i(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->f(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->g(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAdDisplay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->d(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->e(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/fl/saas/adx/base/exception/FLError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/funlink/FunlinkATSplashAdapter;->a(Lcom/anythink/network/funlink/FunlinkATSplashAdapter;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getCode()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, ""

    .line 23
    .line 24
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/fl/saas/adx/base/exception/FLError;->getMsg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-string p1, "unknown error"

    .line 32
    .line 33
    :goto_1
    iget-object v1, p0, Lcom/anythink/network/funlink/FunlinkATSplashAdapter$b;->a:Lcom/anythink/network/funlink/FunlinkATSplashAdapter;

    .line 34
    .line 35
    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/api/bridge/ATBaseAdAdapter;->notifyATLoadFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

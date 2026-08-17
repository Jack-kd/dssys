.class public LD0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anythink/splashad/api/ATSplashExListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD0/a;


# direct methods
.method public constructor <init>(LD0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, LD0/a$a;->a:LD0/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, LD0/a$a;->a:LD0/a;

    .line 2
    .line 3
    invoke-static {p1}, LD0/a;->a(LD0/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "onClick"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, LD0/a$a;->a:LD0/a;

    .line 2
    .line 3
    invoke-static {p1}, LD0/a;->a(LD0/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "onClose"

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, LD0/a$a;->a:LD0/a;

    .line 14
    .line 15
    invoke-static {p1}, LD0/a;->b(LD0/a;)Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAdLoadTimeout()V
    .locals 3

    .line 1
    const-string v0, "adDemo"

    .line 2
    .line 3
    const-string v1, "onAdLoadTimeout \u5f00\u5c4f\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6\u5931\u8d25"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LD0/a$a;->a:LD0/a;

    .line 9
    .line 10
    invoke-static {v0}, LD0/a;->a(LD0/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "onClose"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, LD0/a$a;->a:LD0/a;

    .line 21
    .line 22
    invoke-static {v0}, LD0/a;->b(LD0/a;)Landroid/widget/FrameLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAdLoaded(Z)V
    .locals 2

    .line 1
    sget-object p1, LD0/a;->f:Lcom/anythink/splashad/api/ATSplashAd;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/anythink/splashad/api/ATSplashAd;->isAdReady()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, LD0/a;->f:Lcom/anythink/splashad/api/ATSplashAd;

    .line 10
    .line 11
    iget-object v0, p0, LD0/a$a;->a:LD0/a;

    .line 12
    .line 13
    iget-object v1, v0, LD0/a;->d:Landroid/app/Activity;

    .line 14
    .line 15
    invoke-static {v0}, LD0/a;->b(LD0/a;)Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/anythink/splashad/api/ATSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, LD0/a$a;->a:LD0/a;

    .line 2
    .line 3
    invoke-static {p1}, LD0/a;->a(LD0/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "onShow"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNoAdError(Lcom/anythink/core/api/AdError;)V
    .locals 2

    .line 1
    iget-object p1, p0, LD0/a$a;->a:LD0/a;

    .line 2
    .line 3
    invoke-static {p1}, LD0/a;->a(LD0/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "onError"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, LD0/a$a;->a:LD0/a;

    .line 14
    .line 15
    invoke-static {p1}, LD0/a;->b(LD0/a;)Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onSplashAdReward(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    .line 1
    return-void
.end method

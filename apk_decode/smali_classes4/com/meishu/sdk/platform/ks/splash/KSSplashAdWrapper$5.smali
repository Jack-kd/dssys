.class Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

.field public final synthetic val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onSkip()V
    .locals 2

    .line 1
    const-string v0, "KSSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onSkip: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1600(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1700(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1800(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$2200(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$2300(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTick(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onTimeOver()V
    .locals 2

    .line 1
    const-string v0, "KSSplashAdWrapper"

    .line 2
    .line 3
    const-string v1, "onTimeOver: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$1900(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$2000(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->this$0:Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;->access$2100(Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/splash/KSSplashAdWrapper$5;->val$ksNativeSplashAd:Lcom/meishu/sdk/platform/ks/splash/KSNativeSplashAd;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

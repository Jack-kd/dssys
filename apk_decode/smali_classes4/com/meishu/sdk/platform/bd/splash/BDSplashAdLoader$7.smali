.class Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->showSkipView(Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

.field public final synthetic val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

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
    :try_start_0
    const-string v0, "BDSplashAdLoader"

    .line 2
    .line 3
    const-string v1, "onSkip: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$400(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$500(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdSkip(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$600(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

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
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$1000(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$1100(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTick(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onTimeOver()V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "BDSplashAdLoader"

    .line 2
    .line 3
    const-string v1, "onTimeOver: "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$700(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$800(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lcom/meishu/sdk/core/ad/splash/d;->onAdTimeOver(Lcom/meishu/sdk/core/ad/splash/ISplashAd;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->this$0:Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;->access$900(Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader;)Lcom/meishu/sdk/core/loader/IAdLoadListener;

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
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/splash/BDSplashAdLoader$7;->val$bdNativeSplashAd:Lcom/meishu/sdk/platform/bd/splash/BDNativeSplashAd;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

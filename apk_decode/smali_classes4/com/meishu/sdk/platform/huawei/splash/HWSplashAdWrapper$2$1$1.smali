.class Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->onAdClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;->this$2:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;->this$2:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;->this$2:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/meishu/sdk/core/ad/splash/d;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;->this$2:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;->this$2:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1$1;->this$2:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2$1;->this$1:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper$2;->this$0:Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;->access$000(Lcom/meishu/sdk/platform/huawei/splash/HWSplashAdWrapper;)Lcom/meishu/sdk/platform/huawei/splash/HWBiddingSplashAd;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

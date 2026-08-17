.class Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->loadAdWithCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSplashAdClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$700(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onSplashAdClose(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$800(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onSplashAdLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "onError, code: "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", msg: "

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "SigmobCustomSplashAdapt"

    .line 31
    .line 32
    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p2, v0, p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$500(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onSplashAdLoadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$300(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$300(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/sigmob/windad/Splash/WindSplashAD;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->getEcpm()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->setEcpm(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {p1, v1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$400(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;Landroid/view/View;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public onSplashAdShow(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "SigmobCustomSplashAdapt"

    .line 2
    .line 3
    const-string v0, "send onADExposure"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$200(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onSplashAdShowError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2, v0, p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$600(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onSplashAdSkip(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter$2;->this$0:Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$100(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;)Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;->access$900(Lcom/meishu/sdk/platform/sigmob/custom/splash/SigmobCustomSplashAdapter;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.class Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$PortraitVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "BDDrawAdWrapper"

    .line 18
    .line 19
    const-string v1, "send onAdClicked"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;->access$000(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;)Lcom/meishu/sdk/platform/bd/draw/BDDrawAd;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public onLpClosed()V
    .locals 0

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;)V
    .locals 1

    .line 3
    const-string p1, "BDDrawAdWrapper"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 1
    const-string p1, "BDDrawAdWrapper"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/baidu/mobads/sdk/api/NativeResponse;

    .line 15
    .line 16
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1$1;-><init>(Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 1

    .line 3
    const-string p1, "BDDrawAdWrapper"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 1
    const-string p1, "BDDrawAdWrapper"

    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    iget-object p3, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {p3}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/bd/draw/BDDrawAdWrapper;

    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 0

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 0

    return-void
.end method

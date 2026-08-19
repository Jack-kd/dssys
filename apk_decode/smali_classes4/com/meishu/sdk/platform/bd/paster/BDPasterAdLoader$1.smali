.class Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/PatchVideoNative$IPatchVideoNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

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
    .locals 0

    return-void
.end method

.method public onAdFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAdFailed: code="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", msg="

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "BDPasterAdLoader"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/meishu/sdk/platform/bd/BDPlatformError;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, p2, v0}, Lcom/meishu/sdk/platform/bd/BDPlatformError;-><init>(Ljava/lang/String;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onAdLoad(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public playCompletion()V
    .locals 0

    return-void
.end method

.method public playError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader$1;->this$0:Lcom/meishu/sdk/platform/bd/paster/BDPasterAdLoader;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

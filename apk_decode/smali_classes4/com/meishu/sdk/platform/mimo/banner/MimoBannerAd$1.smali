.class Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/BannerAd$BannerInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->showAd(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

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
    const-string v0, "MimoBannerAd"

    .line 2
    .line 3
    const-string v1, "send onAdClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public onAdDismiss()V
    .locals 2

    .line 1
    const-string v0, "MimoBannerAd"

    .line 2
    .line 3
    const-string v1, "send onAdClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClosed()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    const-string v0, "MimoBannerAd"

    .line 2
    .line 3
    const-string v1, "send onAdShow"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$100(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$102(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;Z)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public onRenderFail(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;->access$000(Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAd;)Lcom/meishu/sdk/platform/mimo/banner/MimoBannerAdWrapper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/meishu/sdk/core/ad/banner/b;

    .line 24
    .line 25
    invoke-interface {v0, p2, p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "onRenderFail, code: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ", msg: "

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "MimoBannerAd"

    .line 54
    .line 55
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onRenderSuccess()V
    .locals 2

    .line 1
    const-string v0, "MimoBannerAd"

    .line 2
    .line 3
    const-string v1, "onRenderSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

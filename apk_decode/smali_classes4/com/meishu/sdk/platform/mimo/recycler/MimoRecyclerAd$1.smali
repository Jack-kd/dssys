.class Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/zeus/mimo/sdk/TemplateAd$TemplateAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

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
    const-string v0, "MimoRecyclerAd"

    .line 2
    .line 3
    const-string v1, "TemplateAd.onAdClick"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

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
    iget-object v1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

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
    iget-object v2, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

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
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 1
    const-string v0, "MimoRecyclerAd"

    .line 2
    .line 3
    const-string v1, "TemplateAd.onAdDismissed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

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
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onAdRenderFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TemplateAd.onAdRenderFailed "

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
    const-string p1, ": "

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
    const-string p2, "MimoRecyclerAd"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdError()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$002(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;Z)Z

    .line 5
    .line 6
    .line 7
    const-string v0, "MimoRecyclerAd"

    .line 8
    .line 9
    const-string v1, "TemplateAd.onAdShow"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;->access$100(Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerAd;)Lcom/meishu/sdk/platform/mimo/recycler/MimoRecyclerLoader;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.class Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/heytap/msp/mobad/api/listener/INativeAdvanceInteractListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

.field public final synthetic val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    const-string v0, "OPPORecyclerAd"

    .line 2
    .line 3
    const-string v1, "send onADClicked"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onError: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p2, " "

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "OPPORecyclerAd"

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$100(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$000(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;)Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAdLoader;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd$1;->this$0:Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;->access$102(Lcom/meishu/sdk/platform/oppo/recycler/OPPORecyclerAd;Z)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.class Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

.field public final synthetic val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleDownloadDialog(Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAdClicked(Landroid/view/View;Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 1

    .line 1
    const-string p1, "KSRecyclerAd"

    .line 2
    .line 3
    const-string p2, "send onAdClicked"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 53
    .line 54
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getMsLoadedTime()J

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/RecyclerMixAdLoader;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getPosId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
.end method

.method public onAdShow(Lcom/kwad/sdk/api/KsNativeAd;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$300(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$200(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;)Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAdWrapper;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd$2;->this$0:Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;->access$302(Lcom/meishu/sdk/platform/ks/recycler/KSRecyclerAd;Z)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public onDownloadTipsDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onDownloadTipsDialogShow()V
    .locals 0

    return-void
.end method

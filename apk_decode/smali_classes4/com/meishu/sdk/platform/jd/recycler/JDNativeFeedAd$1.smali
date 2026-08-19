.class Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jd/ad/sdk/nativead/JADNativeInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

.field public final synthetic val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "JDNativeFeedAd"

    .line 2
    .line 3
    const-string v0, "send onADClicked"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->access$100(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;)Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->access$100(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;)Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/meishu/sdk/core/utils/i;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_1
    return-void
.end method

.method public onClose(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "JDNativeFeedAd"

    .line 2
    .line 3
    const-string v0, "send onAdClosed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->access$100(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;)Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onExposure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->access$000(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "JDNativeFeedAd"

    .line 11
    .line 12
    const-string v1, "send onAdExposure"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->access$100(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;)Lcom/meishu/sdk/platform/jd/recycler/JDFeedAdWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/core/ad/recycler/a;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/a;->onAdExposure()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->this$0:Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;->access$002(Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd;Z)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/platform/jd/recycler/JDNativeFeedAd$1;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.class Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->bindAdToView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

.field public final synthetic val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    return-void
.end method

.method public onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 1
    const-string p1, "CSJNativeDrawAd"

    .line 2
    .line 3
    :try_start_0
    const-string p2, "onAdCreativeClick"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)Lcom/meishu/sdk/core/loader/d;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 17
    .line 18
    invoke-static {p2}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)Lcom/meishu/sdk/core/loader/d;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    const-string p2, "send onAdClicked"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)Lcom/meishu/sdk/core/loader/d;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoader;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)Lcom/meishu/sdk/core/loader/d;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Lcom/meishu/sdk/core/loader/d;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Lcom/meishu/sdk/core/domain/SdkAdInfo;->getClk()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 66
    .line 67
    invoke-static {p2, v0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    new-instance v0, Lcom/meishu/sdk/core/utils/i;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2, v0}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->val$recylcerAdInteractionListener:Lcom/meishu/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void

    .line 90
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public onAdShow(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$100(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)Lcom/meishu/sdk/core/loader/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-static {p1, v0}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$102(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;Z)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;->access$000(Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;)Lcom/meishu/sdk/core/loader/d;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd$1;->this$0:Lcom/meishu/sdk/platform/csj/draw/CSJNativeDrawAd;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    return-void

    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

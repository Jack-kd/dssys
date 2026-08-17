.class Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$DrawAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

.field public final synthetic val$ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->val$ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDrawAdLoad(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsDrawAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/kwad/sdk/api/KsDrawAd;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;->access$002(Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;Lcom/kwad/sdk/api/KsDrawAd;)Lcom/kwad/sdk/api/KsDrawAd;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;->access$000(Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;)Lcom/kwad/sdk/api/KsDrawAd;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsDrawAd;->getDrawView(Landroid/content/Context;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->val$ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/a;->setAdView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;->access$000(Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;)Lcom/kwad/sdk/api/KsDrawAd;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->val$ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2}, Lcom/meishu/sdk/platform/ks/draw/KSDrawListenerImpl;-><init>(Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsDrawAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->val$ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 78
    .line 79
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdLoaded(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/meishu/sdk/core/ad/draw/a;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->val$ksDrawAd:Lcom/meishu/sdk/platform/ks/draw/KSDrawAd;

    .line 91
    .line 92
    invoke-interface {p1, v0}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdReady(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/platform/ks/KSPlatformError;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getSdkAdInfo()Lcom/meishu/sdk/core/domain/SdkAdInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, p2, p1, v1}, Lcom/meishu/sdk/platform/ks/KSPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/meishu/sdk/core/domain/SdkAdInfo;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper$1;->this$0:Lcom/meishu/sdk/platform/ks/draw/KSDrawAdWrapper;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/AdPlatformError;->post(Lcom/meishu/sdk/core/loader/IAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.class Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hms/ads/instreamad/InstreamMediaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->initAd(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMediaCompletion(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoComplete()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onMediaError(III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoError()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onMediaPause(I)V
    .locals 0

    return-void
.end method

.method public onMediaProgress(II)V
    .locals 0

    return-void
.end method

.method public onMediaStart(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdExposure()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper$3;->this$0:Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/huawei/paster/HWPasterAdWrapper;)Lcom/meishu/sdk/platform/huawei/paster/HWPasterAd;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/meishu/sdk/core/loader/InteractionListener;->onAdExposure()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onMediaStop(I)V
    .locals 0

    return-void
.end method

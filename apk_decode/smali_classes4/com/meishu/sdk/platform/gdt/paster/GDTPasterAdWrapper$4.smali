.class Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoClicked"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoCompleted: "

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 13
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoComplete()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "onVideoError: "

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoInit: "

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoLoaded(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "onVideoLoaded: "

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/meishu/sdk/core/ad/paster/b;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoLoaded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onVideoLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoLoading: "

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoPause: "

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoReady"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoResume: "

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoStart"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper$4;->this$0:Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;->access$200(Lcom/meishu/sdk/platform/gdt/paster/GDTPasterAdWrapper;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "onVideoStop"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

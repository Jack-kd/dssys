.class public Lcom/meishu/sdk/platform/ms/draw/g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/draw/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/draw/g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/draw/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/draw/g$f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 0

    return-void
.end method

.method public onVideoCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/draw/g;->e:Lcom/meishu/sdk/platform/ms/draw/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd;->getDrawVideoListener()Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/draw/DrawAd$IDrawVideoListener;->playCompletion()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/DrawAdLoader;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/meishu/sdk/core/ad/draw/a;

    .line 28
    .line 29
    const-string v1, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-interface {v0, v1, v2}, Lcom/meishu/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onVideoLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/draw/g$f;->a:Lcom/meishu/sdk/platform/ms/draw/g;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/draw/g;->d:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/draw/g;->b(Lcom/meishu/sdk/platform/ms/draw/g;Z)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoResume()V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method

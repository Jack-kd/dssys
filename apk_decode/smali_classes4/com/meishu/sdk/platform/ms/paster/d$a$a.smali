.class public Lcom/meishu/sdk/platform/ms/paster/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/platform/ms/paster/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/platform/ms/paster/d$a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/paster/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoComplete()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/loader/c;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 42
    .line 43
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoError()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public onVideoLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/meishu/sdk/platform/ms/paster/d;->e:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Lcom/meishu/sdk/platform/ms/paster/d;->a(Lcom/meishu/sdk/platform/ms/paster/d;Z)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d$a$a;->a:Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/paster/d$a;->b:Lcom/meishu/sdk/platform/ms/paster/d;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcom/meishu/sdk/core/loader/IAdLoadListener;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/meishu/sdk/core/ad/paster/b;

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/paster/b;->onVideoLoaded()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
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

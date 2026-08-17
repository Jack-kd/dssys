.class public Lcom/meishu/sdk/platform/ms/recycler/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/recycler/RecyclerAdMediaListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoCompleted()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 4
    .line 5
    const-string v1, "\u89c6\u9891\u52a0\u8f7d\u51fa\u9519"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoError(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoLoaded()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onVideoPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoPause()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onVideoResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoResume()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onVideoStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    new-instance v1, Lcom/meishu/sdk/platform/ms/recycler/h$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/meishu/sdk/platform/ms/recycler/h$a;-><init>(Lcom/meishu/sdk/platform/ms/recycler/h;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x7d0

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/recycler/h;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/meishu/sdk/platform/ms/recycler/i;->h:Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/recycler/ExpressMediaListener;->onVideoStart()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

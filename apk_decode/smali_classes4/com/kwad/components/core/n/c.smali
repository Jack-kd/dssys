.class public abstract Lcom/kwad/components/core/n/c;
.super Lcom/kwad/components/core/proxy/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kwad/sdk/mvp/a;",
        ">",
        "Lcom/kwad/components/core/proxy/h;"
    }
.end annotation


# instance fields
.field protected abm:Lcom/kwad/sdk/mvp/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mPresenter:Lcom/kwad/sdk/mvp/Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/proxy/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract an()Lcom/kwad/sdk/mvp/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/kwad/components/core/n/c;->an()Lcom/kwad/sdk/mvp/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/kwad/components/core/n/c;->abm:Lcom/kwad/sdk/mvp/a;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/kwad/components/core/n/c;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/kwad/components/core/n/c;->onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/kwad/components/core/n/c;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/core/proxy/h;->oC:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/mvp/Presenter;->N(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/kwad/components/core/n/c;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/kwad/components/core/n/c;->abm:Lcom/kwad/sdk/mvp/a;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/kwad/sdk/mvp/Presenter;->q(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/n/c;->mPresenter:Lcom/kwad/sdk/mvp/Presenter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/proxy/h;->oC:Landroid/view/ViewGroup;

    .line 10
    .line 11
    return-void
.end method

.method public abstract onCreatePresenter()Lcom/kwad/sdk/mvp/Presenter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/api/core/fragment/KsFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/n/c;->abm:Lcom/kwad/sdk/mvp/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/a;->release()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/kwad/components/core/n/c;->onActivityDestroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

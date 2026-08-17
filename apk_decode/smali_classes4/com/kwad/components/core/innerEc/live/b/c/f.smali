.class public final Lcom/kwad/components/core/innerEc/live/b/c/f;
.super Lcom/kwad/components/core/innerEc/live/b/a/a;
.source "SourceFile"


# instance fields
.field private Wf:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;

.field private final Wg:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/kwad/components/core/innerEc/live/b/c/f$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/kwad/components/core/innerEc/live/b/c/f$1;-><init>(Lcom/kwad/components/core/innerEc/live/b/c/f;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/f;->Wg:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/b/c/f;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/b/c/f;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/b/c/f;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/b/c/f;)Lcom/kwad/components/core/innerEc/live/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/b/a/a;->Ub:Lcom/kwad/components/core/innerEc/live/b/a/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final ay()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/components/core/innerEc/live/b/a/a;->ay()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/f;->Wf:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/f;->Wg:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->a(Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/kwad/sdk/R$id;->ksad_live_horizontal_swipe_layout:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/mvp/Presenter;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/f;->Wf:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;

    .line 13
    .line 14
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->onUnbind()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/f;->Wf:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/f;->Wg:Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout;->b(Lcom/kwad/sdk/widget/swipe/HorizontalSwipeLayout$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

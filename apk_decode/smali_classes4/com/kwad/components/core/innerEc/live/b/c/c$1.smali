.class final Lcom/kwad/components/core/innerEc/live/b/c/c$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/c;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic VA:Lcom/kwad/components/core/innerEc/live/b/c/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$1;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$1;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;I)I

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$1;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->a(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    if-gez p3, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$1;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->b(Lcom/kwad/components/core/innerEc/live/b/c/c;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$1;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->c(Lcom/kwad/components/core/innerEc/live/b/c/c;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/c$1;->VA:Lcom/kwad/components/core/innerEc/live/b/c/c;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/c;->d(Lcom/kwad/components/core/innerEc/live/b/c/c;)Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Lcom/kwad/components/core/innerEc/live/widget/f;->aL(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

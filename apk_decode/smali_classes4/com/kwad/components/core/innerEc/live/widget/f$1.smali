.class final Lcom/kwad/components/core/innerEc/live/widget/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/widget/f;->sT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic YR:Lcom/kwad/components/core/innerEc/live/widget/f;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Lcom/kwad/components/core/innerEc/live/widget/f;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/kwad/components/core/innerEc/live/widget/f$1$1;

    .line 50
    .line 51
    invoke-direct {v2, p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/f$1$1;-><init>(Lcom/kwad/components/core/innerEc/live/widget/f$1;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 52
    .line 53
    .line 54
    const-wide/16 v3, 0x30

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

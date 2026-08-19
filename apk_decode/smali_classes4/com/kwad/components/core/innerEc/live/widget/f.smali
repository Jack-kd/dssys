.class public final Lcom/kwad/components/core/innerEc/live/widget/f;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/components/core/innerEc/live/widget/f$a;,
        Lcom/kwad/components/core/innerEc/live/widget/f$b;
    }
.end annotation


# instance fields
.field private final YL:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private YM:Z

.field private YN:I

.field private YO:I

.field private YP:Lcom/kwad/components/core/innerEc/live/widget/g;

.field private YQ:Z

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private maxHeight:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/kwad/components/core/innerEc/live/widget/g$c;->YZ:Lcom/kwad/components/core/innerEc/live/widget/g$c;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YP:Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 13
    .line 14
    iput v2, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->maxHeight:I

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YQ:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 4
    .param p0    # Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetRecyclerState, clearCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiveCommentLinearLayoutManager"

    invoke-static {v3, v2, v1}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 8
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll()V

    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 12
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/innerEc/live/widget/f;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/kwad/components/core/innerEc/live/widget/f;)Lcom/kwad/components/core/innerEc/live/widget/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YP:Lcom/kwad/components/core/innerEc/live/widget/g;

    return-object p0
.end method

.method public static synthetic c(Lcom/kwad/components/core/innerEc/live/widget/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YM:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/kwad/components/core/innerEc/live/widget/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YO:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/kwad/components/core/innerEc/live/widget/f;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YN:I

    .line 2
    .line 3
    return p0
.end method

.method private sT()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YL:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    new-instance v1, Lcom/kwad/components/core/innerEc/live/widget/f$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/kwad/components/core/innerEc/live/widget/f$1;-><init>(Lcom/kwad/components/core/innerEc/live/widget/f;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, 0x20

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/innerEc/live/widget/f$a;)V
    .locals 1
    .param p1    # Lcom/kwad/components/core/innerEc/live/widget/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/f$a;->b(Lcom/kwad/components/core/innerEc/live/widget/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YM:Z

    .line 4
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/f$a;->c(Lcom/kwad/components/core/innerEc/live/widget/f$a;)I

    move-result v0

    iput v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YN:I

    .line 5
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/widget/f$a;->d(Lcom/kwad/components/core/innerEc/live/widget/f$a;)I

    move-result p1

    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YO:I

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateComments, setLiveCommentScrollConfigmEnableNewSpeedStrategy"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YM:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "mFastScrollSpeedPx"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YN:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mSlowScrollSpeedPx"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YO:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveCommentLinearLayoutManager"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final aL(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YQ:Z

    .line 2
    .line 3
    return-void
.end method

.method public final b(Lcom/kwad/components/core/innerEc/live/widget/g;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setScrollStrategyscrollStrategy"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveCommentLinearLayoutManager"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YP:Lcom/kwad/components/core/innerEc/live/widget/g;

    return-void
.end method

.method public final getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YQ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->maxHeight:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->maxHeight:I

    .line 18
    .line 19
    :cond_0
    iget p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->maxHeight:I

    .line 20
    .line 21
    shl-int/lit8 v0, p1, 0x2

    .line 22
    .line 23
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final isAutoMeasureEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p2

    .line 6
    const-string v0, "LiveCommentLinearLayoutManager"

    .line 7
    .line 8
    const-string v1, "onLayoutChildrenException"

    .line 9
    .line 10
    invoke-static {v0, v1, p2}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/kwad/components/core/innerEc/live/widget/f;->sT()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final sS()Lcom/kwad/components/core/innerEc/live/widget/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f;->YP:Lcom/kwad/components/core/innerEc/live/widget/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/kwad/components/core/innerEc/live/widget/f$b;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p2, p0, p1}, Lcom/kwad/components/core/innerEc/live/widget/f$b;-><init>(Lcom/kwad/components/core/innerEc/live/widget/f;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class final Lcom/kwad/components/core/innerEc/live/widget/f$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/widget/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic YS:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field final synthetic YT:Lcom/kwad/components/core/innerEc/live/widget/f$1;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/f$1;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1$1;->YT:Lcom/kwad/components/core/innerEc/live/widget/f$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1$1;->YS:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1$1;->YT:Lcom/kwad/components/core/innerEc/live/widget/f$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/widget/f$1;->YR:Lcom/kwad/components/core/innerEc/live/widget/f;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/f;->a(Lcom/kwad/components/core/innerEc/live/widget/f;)Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/f$1$1;->YS:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

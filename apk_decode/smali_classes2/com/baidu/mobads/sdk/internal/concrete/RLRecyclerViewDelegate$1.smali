.class Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate$1;->b:Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate$1;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate$1;->b:Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;->a(Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;)Lcom/baidu/mobads/sdk/internal/a/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate$1;->a:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v0, "onScrollStateChanged"

    .line 21
    .line 22
    invoke-virtual {p1, v0, p2}, Lcom/baidu/mobads/sdk/internal/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate$1;->b:Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;->a(Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate;)Lcom/baidu/mobads/sdk/internal/a/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/concrete/RLRecyclerViewDelegate$1;->a:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    filled-new-array {v0, p2, p3}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string p3, "onScrolled"

    .line 25
    .line 26
    invoke-virtual {p1, p3, p2}, Lcom/baidu/mobads/sdk/internal/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

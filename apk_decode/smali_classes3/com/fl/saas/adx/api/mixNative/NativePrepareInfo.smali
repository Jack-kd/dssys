.class public Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final clickViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private closeView:Landroid/view/View;

.field private final ctaViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final imageViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isSelfRenderShake:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->ctaViewList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->clickViewList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->imageViewList:Ljava/util/List;

    return-void
.end method

.method private varargs declared-synchronized addViewList(Ljava/util/List;[Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->closeView:Landroid/view/View;

    if-eq v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/fl/saas/p0;->b(Ljava/lang/Object;)Lcom/fl/saas/p0;

    move-result-object v0

    new-instance v1, Ln0/a;

    invoke-direct {v1}, Ln0/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->a(Landroidx/arch/core/util/Function;)Lcom/fl/saas/p0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fl/saas/p0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAllClickViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->clickViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->ctaViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->closeView:Landroid/view/View;

    return-object v0
.end method

.method public getCtaViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->ctaViewList:Ljava/util/List;

    return-object v0
.end method

.method public isSelfRenderShake()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->isSelfRenderShake:Z

    return v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public varargs setClickView([Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->clickViewList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->addViewList(Ljava/util/List;[Landroid/view/View;)V

    return-void
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->closeView:Landroid/view/View;

    return-void
.end method

.method public varargs setCtaView([Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->ctaViewList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->addViewList(Ljava/util/List;[Landroid/view/View;)V

    return-void
.end method

.method public varargs setImageView([Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_2

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->imageViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->imageViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method public setSelfRenderShake(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/api/mixNative/NativePrepareInfo;->isSelfRenderShake:Z

    return-void
.end method

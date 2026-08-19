.class final Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic bhQ:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$b;->bhQ:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$b;->bhQ:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$b;->bhQ:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->onChildViewsChanged(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout$b;->bhQ:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

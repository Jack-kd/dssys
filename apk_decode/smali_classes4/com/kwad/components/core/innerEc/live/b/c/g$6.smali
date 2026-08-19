.class final Lcom/kwad/components/core/innerEc/live/b/c/g$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/b/c/g;->aY(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic WD:Z

.field final synthetic Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/g;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->WD:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->WD:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->a(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->q(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->r(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->s(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$6;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->q(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

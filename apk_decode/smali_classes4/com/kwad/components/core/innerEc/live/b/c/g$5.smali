.class final Lcom/kwad/components/core/innerEc/live/b/c/g$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->WD:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->p(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->c(Lcom/kwad/components/core/innerEc/live/b/c/g;)Lcom/kwad/sdk/widget/KSLinearLayout;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->p(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->WD:Z

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->q(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->r(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sub-int/2addr v1, p1

    .line 61
    add-int/lit8 v1, v1, 0x42

    .line 62
    .line 63
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->q(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->r(Lcom/kwad/components/core/innerEc/live/b/c/g;)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-int/2addr v1, p1

    .line 89
    add-int/lit8 v1, v1, -0x42

    .line 90
    .line 91
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 92
    .line 93
    :goto_0
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/kwad/components/core/innerEc/live/b/c/g;->s(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/g$5;->Wy:Lcom/kwad/components/core/innerEc/live/b/c/g;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/g;->q(Lcom/kwad/components/core/innerEc/live/b/c/g;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

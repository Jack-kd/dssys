.class public Lcom/octopus/ad/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/internal/a/g;


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p1, p2}, Lcom/octopus/ad/internal/a/c;->a(Landroid/view/animation/Interpolator;J)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, p1, p2}, Lcom/octopus/ad/internal/a/c;->b(Landroid/view/animation/Interpolator;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private a(Landroid/view/animation/Interpolator;J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/octopus/ad/internal/a/c;->a:Landroid/view/animation/Animation;

    .line 2
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object p2, p0, Lcom/octopus/ad/internal/a/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private b(Landroid/view/animation/Interpolator;J)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/octopus/ad/internal/a/c;->b:Landroid/view/animation/Animation;

    .line 2
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-object p2, p0, Lcom/octopus/ad/internal/a/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/a/c;->a:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public b()Landroid/view/animation/Animation;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/a/c;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

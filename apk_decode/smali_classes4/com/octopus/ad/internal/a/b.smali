.class public Lcom/octopus/ad/internal/a/b;
.super Landroid/widget/ViewAnimator;
.source "SourceFile"


# instance fields
.field private a:Lcom/octopus/ad/internal/a/g;

.field private b:Lcom/octopus/ad/internal/a/i;

.field private c:Lcom/octopus/ad/internal/a/h;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/octopus/ad/internal/a/i;Lcom/octopus/ad/internal/a/h;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Lcom/octopus/ad/internal/a/g;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/a/i;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/a/h;

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/octopus/ad/internal/a/b;->d:J

    .line 12
    .line 13
    invoke-static {p2, p4, p5, p3}, Lcom/octopus/ad/internal/a/a;->a(Lcom/octopus/ad/internal/a/i;JLcom/octopus/ad/internal/a/h;)Lcom/octopus/ad/internal/a/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Lcom/octopus/ad/internal/a/g;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/octopus/ad/internal/a/b;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Lcom/octopus/ad/internal/a/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/octopus/ad/internal/a/g;->a()Landroid/view/animation/Animation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->a:Lcom/octopus/ad/internal/a/g;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/octopus/ad/internal/a/g;->b()Landroid/view/animation/Animation;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getTransitionDirection()Lcom/octopus/ad/internal/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/a/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransitionDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/a/b;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTransitionType()Lcom/octopus/ad/internal/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/a/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public setTransitionDirection(Lcom/octopus/ad/internal/a/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/a/h;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/a/h;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/a/i;

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/octopus/ad/internal/a/b;->d:J

    .line 10
    .line 11
    invoke-static {v0, v1, v2, p1}, Lcom/octopus/ad/internal/a/a;->a(Lcom/octopus/ad/internal/a/i;JLcom/octopus/ad/internal/a/h;)Lcom/octopus/ad/internal/a/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Lcom/octopus/ad/internal/a/g;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/octopus/ad/internal/a/b;->a()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setTransitionDuration(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/a/b;->d:J

    .line 2
    .line 3
    cmp-long v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/octopus/ad/internal/a/b;->d:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/a/i;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/a/h;

    .line 12
    .line 13
    invoke-static {v0, p1, p2, v1}, Lcom/octopus/ad/internal/a/a;->a(Lcom/octopus/ad/internal/a/i;JLcom/octopus/ad/internal/a/h;)Lcom/octopus/ad/internal/a/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Lcom/octopus/ad/internal/a/g;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/octopus/ad/internal/a/b;->a()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setTransitionType(Lcom/octopus/ad/internal/a/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/a/i;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->b:Lcom/octopus/ad/internal/a/i;

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/octopus/ad/internal/a/b;->d:J

    .line 8
    .line 9
    iget-object v2, p0, Lcom/octopus/ad/internal/a/b;->c:Lcom/octopus/ad/internal/a/h;

    .line 10
    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/octopus/ad/internal/a/a;->a(Lcom/octopus/ad/internal/a/i;JLcom/octopus/ad/internal/a/h;)Lcom/octopus/ad/internal/a/g;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/octopus/ad/internal/a/b;->a:Lcom/octopus/ad/internal/a/g;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/octopus/ad/internal/a/b;->a()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

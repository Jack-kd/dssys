.class Lcom/octopus/ad/internal/e/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/g;

.field private final b:Lcom/octopus/ad/internal/e/c;

.field private final c:Lcom/octopus/ad/internal/a/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/g;Lcom/octopus/ad/internal/e/c;Lcom/octopus/ad/internal/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/g$b;->a:Lcom/octopus/ad/internal/e/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/e/g$b;->b:Lcom/octopus/ad/internal/e/c;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/octopus/ad/internal/e/g$b;->c:Lcom/octopus/ad/internal/a/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/octopus/ad/internal/e/g$b;->b:Lcom/octopus/ad/internal/e/c;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g$b;->c:Lcom/octopus/ad/internal/a/b;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/octopus/ad/internal/e/c;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/octopus/ad/internal/e/g$b$1;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0, p1}, Lcom/octopus/ad/internal/e/g$b$1;-><init>(Lcom/octopus/ad/internal/e/g$b;Lcom/octopus/ad/internal/a/b;Lcom/octopus/ad/internal/e/c;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.class Lcom/octopus/ad/internal/e/g$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/g$b;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/a/b;

.field final synthetic b:Lcom/octopus/ad/internal/e/c;

.field final synthetic c:Lcom/octopus/ad/internal/e/g$b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/g$b;Lcom/octopus/ad/internal/a/b;Lcom/octopus/ad/internal/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/g$b$1;->c:Lcom/octopus/ad/internal/e/g$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/e/g$b$1;->a:Lcom/octopus/ad/internal/a/b;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/internal/e/g$b$1;->b:Lcom/octopus/ad/internal/e/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g$b$1;->a:Lcom/octopus/ad/internal/a/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/a/b;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g$b$1;->b:Lcom/octopus/ad/internal/e/c;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/octopus/ad/internal/e/c;->k()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/e/g$b$1;->a:Lcom/octopus/ad/internal/a/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/octopus/ad/internal/a/b;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

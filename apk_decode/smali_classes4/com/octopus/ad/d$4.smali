.class Lcom/octopus/ad/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/d;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d$4;->a:Lcom/octopus/ad/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d$4;->a:Lcom/octopus/ad/d;

    invoke-static {v0}, Lcom/octopus/ad/d;->f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/d$4;->a:Lcom/octopus/ad/d;

    invoke-static {v0}, Lcom/octopus/ad/d;->f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->c()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/d$4;->a:Lcom/octopus/ad/d;

    iget-object v1, v0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/octopus/ad/d;->b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/d$4;->a:Lcom/octopus/ad/d;

    invoke-static {v0}, Lcom/octopus/ad/d;->e(Lcom/octopus/ad/d;)V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

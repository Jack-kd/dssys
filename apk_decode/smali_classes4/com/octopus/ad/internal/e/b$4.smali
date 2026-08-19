.class Lcom/octopus/ad/internal/e/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/e/b;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/e/b;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/e/b$4;->a:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$4;->a:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/e/b$4;->a:Lcom/octopus/ad/internal/e/b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/b;->a(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

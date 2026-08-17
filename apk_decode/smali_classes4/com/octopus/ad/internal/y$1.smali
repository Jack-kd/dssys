.class Lcom/octopus/ad/internal/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/y;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/y;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/y$1;->a:Lcom/octopus/ad/internal/y;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/y$1;->a:Lcom/octopus/ad/internal/y;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/y;->a(Lcom/octopus/ad/internal/y;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/octopus/ad/internal/y$1;->a:Lcom/octopus/ad/internal/y;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/octopus/ad/internal/y;->a(Lcom/octopus/ad/internal/y;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/octopus/ad/internal/y$1;->a:Lcom/octopus/ad/internal/y;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/octopus/ad/internal/y;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_0
    if-ge v2, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    check-cast v3, Lcom/octopus/ad/internal/y$a;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-interface {v3, v4}, Lcom/octopus/ad/internal/y$a;->a(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    move v3, v2

    .line 53
    :goto_1
    if-ge v3, v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    check-cast v4, Lcom/octopus/ad/internal/y$a;

    .line 62
    .line 63
    invoke-interface {v4, v2}, Lcom/octopus/ad/internal/y$a;->a(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.class Lcom/octopus/ad/internal/b/g$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/g;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/octopus/ad/internal/b/g;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/g;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/g$1;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g$1;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/octopus/ad/internal/b/g;->a(Lcom/octopus/ad/internal/b/g;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/g;->b(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/octopus/ad/internal/b/g;->a(Lcom/octopus/ad/internal/b/g;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/octopus/ad/internal/b/g$a;

    .line 43
    .line 44
    iget v3, v1, Lcom/octopus/ad/internal/b/g$a;->b:I

    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    if-ge v3, v4, :cond_0

    .line 48
    .line 49
    new-instance v3, Lcom/octopus/ad/internal/b/g$1$1;

    .line 50
    .line 51
    invoke-direct {v3, p0, v2, v1}, Lcom/octopus/ad/internal/b/g$1$1;-><init>(Lcom/octopus/ad/internal/b/g$1;ZLcom/octopus/ad/internal/b/g$a;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/octopus/ad/internal/c/d;->b()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/octopus/ad/internal/b/g;->a(Lcom/octopus/ad/internal/b/g;)Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/octopus/ad/internal/b/g;->b(Lcom/octopus/ad/internal/b/g;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-void

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/g$1;->b:Lcom/octopus/ad/internal/b/g;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/octopus/ad/internal/b/g;->b(Lcom/octopus/ad/internal/b/g;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

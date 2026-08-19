.class Lcom/octopus/ad/internal/y$2;
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
    iput-object p1, p0, Lcom/octopus/ad/internal/y$2;->a:Lcom/octopus/ad/internal/y;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/y$2;->a:Lcom/octopus/ad/internal/y;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/octopus/ad/internal/y;->c(Lcom/octopus/ad/internal/y;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/y$2;->a:Lcom/octopus/ad/internal/y;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/octopus/ad/internal/y;->b(Lcom/octopus/ad/internal/y;)Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/octopus/ad/internal/y$2;->a:Lcom/octopus/ad/internal/y;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/octopus/ad/internal/y;->d(Lcom/octopus/ad/internal/y;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/octopus/ad/internal/y$2;->a:Lcom/octopus/ad/internal/y;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/octopus/ad/internal/y;->e(Lcom/octopus/ad/internal/y;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/octopus/ad/internal/y$2;->a:Lcom/octopus/ad/internal/y;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/octopus/ad/internal/y;->e(Lcom/octopus/ad/internal/y;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/octopus/ad/internal/y$2;->a:Lcom/octopus/ad/internal/y;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/y;->a(Lcom/octopus/ad/internal/y;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

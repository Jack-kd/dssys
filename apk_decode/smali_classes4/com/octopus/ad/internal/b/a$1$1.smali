.class Lcom/octopus/ad/internal/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/octopus/ad/internal/b/a$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/a$1;Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/a$1$1;->c:Lcom/octopus/ad/internal/b/a$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/a$1$1;->a:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/internal/b/a$1$1;->b:Ljava/util/ArrayList;

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
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$1$1;->a:Ljava/util/concurrent/CountDownLatch;

    .line 3
    .line 4
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget v2, v2, Lcom/octopus/ad/internal/q;->c:I

    .line 9
    .line 10
    int-to-long v2, v2

    .line 11
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$1$1;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$1$1;->c:Lcom/octopus/ad/internal/b/a$1;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$1$1;->b:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$1$1;->c:Lcom/octopus/ad/internal/b/a$1;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/octopus/ad/internal/b/a$1$1;->b:Ljava/util/ArrayList;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/octopus/ad/internal/b/f;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$1$1;->b:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/octopus/ad/internal/b/a;->a(Ljava/util/ArrayList;)Lcom/octopus/ad/internal/b/f;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/octopus/ad/internal/b/a$1$1;->c:Lcom/octopus/ad/internal/b/a$1;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_0
    iget-object v1, p0, Lcom/octopus/ad/internal/b/a$1$1;->c:Lcom/octopus/ad/internal/b/a$1;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/octopus/ad/internal/b/a$1;->c:Lcom/octopus/ad/internal/b/a;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/a;->a(Lcom/octopus/ad/internal/b/f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

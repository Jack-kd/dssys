.class public abstract Lkotlinx/coroutines/N;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/coroutines/i;)Lkotlinx/coroutines/M;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/d;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/u0;->T2:Lkotlinx/coroutines/u0$b;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/w0;->b(Lkotlinx/coroutines/u0;ILjava/lang/Object;)Lkotlinx/coroutines/y;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p0, v1}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/d;-><init>(Lkotlin/coroutines/i;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/x;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlin/coroutines/e;->getContext()Lkotlin/coroutines/i;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/x;-><init>(Lkotlin/coroutines/i;Lkotlin/coroutines/e;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v0, p0}, LG1/b;->b(Lkotlinx/coroutines/internal/x;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lw1/e;->c(Lkotlin/coroutines/e;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public static final c(Lkotlinx/coroutines/M;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/M;->getCoroutineContext()Lkotlin/coroutines/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/w0;->f(Lkotlin/coroutines/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

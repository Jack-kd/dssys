.class public abstract Lkotlinx/coroutines/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/V;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/V;->c()Lkotlin/coroutines/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-nez v1, :cond_2

    .line 12
    .line 13
    instance-of v2, v0, Lkotlinx/coroutines/internal/g;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-static {p1}, Lkotlinx/coroutines/W;->b(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget v2, p0, Lkotlinx/coroutines/V;->d:I

    .line 22
    .line 23
    invoke-static {v2}, Lkotlinx/coroutines/W;->b(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne p1, v2, :cond_2

    .line 28
    .line 29
    check-cast v0, Lkotlinx/coroutines/internal/g;

    .line 30
    .line 31
    iget-object p1, v0, Lkotlinx/coroutines/internal/g;->e:Lkotlinx/coroutines/H;

    .line 32
    .line 33
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/g;->getContext()Lkotlin/coroutines/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/H;->isDispatchNeeded(Lkotlin/coroutines/i;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/H;->dispatch(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {p0}, Lkotlinx/coroutines/W;->e(Lkotlinx/coroutines/V;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/W;->d(Lkotlinx/coroutines/V;Lkotlin/coroutines/e;Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static final b(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final c(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(Lkotlinx/coroutines/V;Lkotlin/coroutines/e;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/V;->h()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/V;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/V;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    if-eqz p2, :cond_6

    .line 30
    .line 31
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    .line 32
    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Lkotlinx/coroutines/internal/g;

    .line 37
    .line 38
    iget-object p2, p1, Lkotlinx/coroutines/internal/g;->f:Lkotlin/coroutines/e;

    .line 39
    .line 40
    iget-object v0, p1, Lkotlinx/coroutines/internal/g;->h:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {p2}, Lkotlin/coroutines/e;->getContext()Lkotlin/coroutines/i;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/I;->i(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v2, Lkotlinx/coroutines/internal/I;->a:Lkotlinx/coroutines/internal/B;

    .line 51
    .line 52
    if-eq v0, v2, :cond_1

    .line 53
    .line 54
    invoke-static {p2, v1, v0}, Lkotlinx/coroutines/F;->m(Lkotlin/coroutines/e;Lkotlin/coroutines/i;Ljava/lang/Object;)Lkotlinx/coroutines/S0;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    const/4 p2, 0x0

    .line 60
    :goto_2
    :try_start_0
    iget-object p1, p1, Lkotlinx/coroutines/internal/g;->f:Lkotlin/coroutines/e;

    .line 61
    .line 62
    invoke-interface {p1, p0}, Lkotlin/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lkotlin/j;->a:Lkotlin/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p2}, Lkotlinx/coroutines/S0;->W0()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_2

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    return-void

    .line 77
    :cond_3
    :goto_3
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/I;->f(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    invoke-virtual {p2}, Lkotlinx/coroutines/S0;->W0()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    :cond_4
    invoke-static {v1, v0}, Lkotlinx/coroutines/internal/I;->f(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    throw p0

    .line 94
    :cond_6
    invoke-interface {p1, p0}, Lkotlin/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static final e(Lkotlinx/coroutines/V;)V
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/O0;->a:Lkotlinx/coroutines/O0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/O0;->b()Lkotlinx/coroutines/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlinx/coroutines/d0;->G()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/d0;->n(Lkotlinx/coroutines/V;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/d0;->D(Z)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/V;->c()Lkotlin/coroutines/e;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {p0, v2, v1}, Lkotlinx/coroutines/W;->d(Lkotlinx/coroutines/V;Lkotlin/coroutines/e;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/d0;->J()Z

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/d0;->j(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v2

    .line 39
    :try_start_1
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/V;->g(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    return-void

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/d0;->j(Z)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

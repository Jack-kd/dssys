.class public abstract synthetic Lkotlinx/coroutines/JobKt__JobKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/u0;)Lkotlinx/coroutines/y;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/coroutines/v0;-><init>(Lkotlinx/coroutines/u0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/u0;ILjava/lang/Object;)Lkotlinx/coroutines/y;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/w0;->a(Lkotlinx/coroutines/u0;)Lkotlinx/coroutines/y;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/u0;->T2:Lkotlinx/coroutines/u0$b;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlinx/coroutines/u0;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lkotlinx/coroutines/u0;->a(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static synthetic d(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/w0;->c(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final e(Lkotlinx/coroutines/u0;Lkotlinx/coroutines/Z;)Lkotlinx/coroutines/Z;
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/b0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lkotlinx/coroutines/b0;-><init>(Lkotlinx/coroutines/Z;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v2, v0, p1, v1}, Lkotlinx/coroutines/w0;->j(Lkotlinx/coroutines/u0;ZLkotlinx/coroutines/x0;ILjava/lang/Object;)Lkotlinx/coroutines/Z;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final f(Lkotlin/coroutines/i;)V
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/u0;->T2:Lkotlinx/coroutines/u0$b;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlinx/coroutines/u0;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lkotlinx/coroutines/w0;->g(Lkotlinx/coroutines/u0;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public static final g(Lkotlinx/coroutines/u0;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/u0;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/u0;->z()Ljava/util/concurrent/CancellationException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public static final h(Lkotlin/coroutines/i;)Lkotlinx/coroutines/u0;
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/u0;->T2:Lkotlinx/coroutines/u0$b;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/u0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Current context doesn\'t contain Job in it: "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public static final i(Lkotlinx/coroutines/u0;ZLkotlinx/coroutines/x0;)Lkotlinx/coroutines/Z;
    .locals 2

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/y0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lkotlinx/coroutines/y0;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/y0;->n0(ZLkotlinx/coroutines/x0;)Lkotlinx/coroutines/Z;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lkotlinx/coroutines/x0;->u()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Lkotlinx/coroutines/JobKt__JobKt$invokeOnCompletion$1;

    .line 17
    .line 18
    invoke-direct {v1, p2}, Lkotlinx/coroutines/JobKt__JobKt$invokeOnCompletion$1;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0, p1, v1}, Lkotlinx/coroutines/u0;->u(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Z;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static synthetic j(Lkotlinx/coroutines/u0;ZLkotlinx/coroutines/x0;ILjava/lang/Object;)Lkotlinx/coroutines/Z;
    .locals 0

    .line 1
    const/4 p4, 0x1

    .line 2
    and-int/2addr p3, p4

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    move p1, p4

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/w0;->i(Lkotlinx/coroutines/u0;ZLkotlinx/coroutines/x0;)Lkotlinx/coroutines/Z;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.class public abstract Lkotlinx/coroutines/flow/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/internal/h;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlin/coroutines/e;->getContext()Lkotlin/coroutines/i;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/flow/internal/h;-><init>(Lkotlin/coroutines/i;Lkotlin/coroutines/e;)V

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

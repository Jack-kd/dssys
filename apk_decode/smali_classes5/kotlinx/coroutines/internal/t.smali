.class public final Lkotlinx/coroutines/internal/t;
.super Lkotlinx/coroutines/H;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/T;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/T;

.field public final c:Lkotlinx/coroutines/H;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/H;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/H;-><init>()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lkotlinx/coroutines/T;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Lkotlinx/coroutines/T;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lkotlinx/coroutines/Q;->a()Lkotlinx/coroutines/T;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_1
    iput-object v0, p0, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/T;

    .line 20
    .line 21
    iput-object p1, p0, Lkotlinx/coroutines/internal/t;->c:Lkotlinx/coroutines/H;

    .line 22
    .line 23
    iput-object p2, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public d(JLkotlinx/coroutines/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/T;

    invoke-interface {v0, p1, p2, p3}, Lkotlinx/coroutines/T;->d(JLkotlinx/coroutines/l;)V

    return-void
.end method

.method public dispatch(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->c:Lkotlinx/coroutines/H;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/H;->dispatch(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->c:Lkotlinx/coroutines/H;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/H;->dispatchYield(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/Z;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/T;

    invoke-interface {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/T;->f(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/Z;

    move-result-object p1

    return-object p1
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->c:Lkotlinx/coroutines/H;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/H;->isDispatchNeeded(Lkotlin/coroutines/i;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/t;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

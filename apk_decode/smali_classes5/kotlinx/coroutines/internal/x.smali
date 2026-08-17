.class public Lkotlinx/coroutines/internal/x;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lw1/c;


# instance fields
.field public final e:Lkotlin/coroutines/e;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Lkotlin/coroutines/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;ZZ)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/internal/x;->e:Lkotlin/coroutines/e;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public M(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->e:Lkotlin/coroutines/e;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lkotlin/coroutines/e;)Lkotlin/coroutines/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lkotlinx/coroutines/internal/x;->e:Lkotlin/coroutines/e;

    .line 8
    .line 9
    invoke-static {p1, v1}, Lkotlinx/coroutines/B;->a(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/h;->b(Lkotlin/coroutines/e;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public S0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->e:Lkotlin/coroutines/e;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlinx/coroutines/B;->a(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lkotlin/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getCallerFrame()Lw1/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->e:Lkotlin/coroutines/e;

    .line 2
    .line 3
    instance-of v1, v0, Lw1/c;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lw1/c;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final o0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

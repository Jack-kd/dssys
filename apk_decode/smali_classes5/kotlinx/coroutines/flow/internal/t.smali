.class public final Lkotlinx/coroutines/flow/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/e;
.implements Lw1/c;


# instance fields
.field public final b:Lkotlin/coroutines/e;

.field public final c:Lkotlin/coroutines/i;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/e;Lkotlin/coroutines/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/t;->b:Lkotlin/coroutines/e;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/t;->c:Lkotlin/coroutines/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCallerFrame()Lw1/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/t;->b:Lkotlin/coroutines/e;

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

.method public getContext()Lkotlin/coroutines/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/t;->c:Lkotlin/coroutines/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/t;->b:Lkotlin/coroutines/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlin/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

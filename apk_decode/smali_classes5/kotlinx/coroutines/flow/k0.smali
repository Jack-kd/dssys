.class public final Lkotlinx/coroutines/flow/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/s0;
.implements Lkotlinx/coroutines/flow/c;
.implements Lkotlinx/coroutines/flow/internal/k;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/flow/s0;

.field public final c:Lkotlinx/coroutines/u0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/s0;Lkotlinx/coroutines/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/k0;->b:Lkotlinx/coroutines/flow/s0;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/k0;->c:Lkotlinx/coroutines/u0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/k0;->b:Lkotlinx/coroutines/flow/s0;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/m0;->collect(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/c;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/t0;->d(Lkotlinx/coroutines/flow/s0;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/k0;->b:Lkotlinx/coroutines/flow/s0;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/s0;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class public final Lkotlinx/coroutines/flow/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/i;


# instance fields
.field public final synthetic b:Lkotlin/coroutines/i;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lkotlin/coroutines/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlin/coroutines/i;

    .line 5
    .line 6
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/g;->c:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlin/coroutines/i;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/i;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlin/coroutines/i;

    invoke-interface {v0, p1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlin/coroutines/i;

    invoke-interface {v0, p1}, Lkotlin/coroutines/i;->minusKey(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/g;->b:Lkotlin/coroutines/i;

    invoke-interface {v0, p1}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p1

    return-object p1
.end method

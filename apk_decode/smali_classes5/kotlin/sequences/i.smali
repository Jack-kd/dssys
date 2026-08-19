.class public abstract Lkotlin/sequences/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;
.end method

.method public abstract b(Ljava/util/Iterator;Lkotlin/coroutines/e;)Ljava/lang/Object;
.end method

.method public final e(Lkotlin/sequences/g;Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/i;->b(Ljava/util/Iterator;Lkotlin/coroutines/e;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/j;->a:Lkotlin/j;

    .line 17
    .line 18
    return-object p1
.end method

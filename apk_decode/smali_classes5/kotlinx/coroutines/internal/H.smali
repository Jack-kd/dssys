.class public final synthetic Lkotlinx/coroutines/internal/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/O;

    check-cast p2, Lkotlin/coroutines/i$b;

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/I;->c(Lkotlinx/coroutines/internal/O;Lkotlin/coroutines/i$b;)Lkotlinx/coroutines/internal/O;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lkotlin/coroutines/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:[Lkotlin/coroutines/i;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>([Lkotlin/coroutines/i;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/c;->b:[Lkotlin/coroutines/i;

    iput-object p2, p0, Lkotlin/coroutines/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/c;->b:[Lkotlin/coroutines/i;

    iget-object v1, p0, Lkotlin/coroutines/c;->c:Lkotlin/jvm/internal/Ref$IntRef;

    check-cast p1, Lkotlin/j;

    check-cast p2, Lkotlin/coroutines/i$b;

    invoke-static {v0, v1, p1, p2}, Lkotlin/coroutines/CombinedContext;->d([Lkotlin/coroutines/i;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/j;Lkotlin/coroutines/i$b;)Lkotlin/j;

    move-result-object p1

    return-object p1
.end method

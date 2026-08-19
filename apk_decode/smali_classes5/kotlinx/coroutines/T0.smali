.class public final Lkotlinx/coroutines/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/i$b;
.implements Lkotlin/coroutines/i$c;


# static fields
.field public static final b:Lkotlinx/coroutines/T0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/T0;

    invoke-direct {v0}, Lkotlinx/coroutines/T0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/T0;->b:Lkotlinx/coroutines/T0;

    return-void
.end method

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
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/coroutines/i$b$a;->a(Lkotlin/coroutines/i$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public get(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/i$b$a;->b(Lkotlin/coroutines/i$b;Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getKey()Lkotlin/coroutines/i$c;
    .locals 0

    return-object p0
.end method

.method public minusKey(Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/i$b$a;->c(Lkotlin/coroutines/i$b;Lkotlin/coroutines/i$c;)Lkotlin/coroutines/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/i$b$a;->d(Lkotlin/coroutines/i$b;Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

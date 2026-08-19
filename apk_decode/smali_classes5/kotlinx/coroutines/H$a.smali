.class public final Lkotlinx/coroutines/H$a;
.super Lkotlin/coroutines/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlin/coroutines/f;->R2:Lkotlin/coroutines/f$b;

    new-instance v1, Lkotlinx/coroutines/G;

    invoke-direct {v1}, Lkotlinx/coroutines/G;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/i$c;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/H$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/i$b;)Lkotlinx/coroutines/H;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/H$a;->d(Lkotlin/coroutines/i$b;)Lkotlinx/coroutines/H;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lkotlin/coroutines/i$b;)Lkotlinx/coroutines/H;
    .locals 1

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/H;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lkotlinx/coroutines/H;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

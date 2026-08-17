.class public final Lkotlinx/coroutines/A0;
.super Lkotlinx/coroutines/J0;
.source "SourceFile"


# instance fields
.field public final e:Lkotlin/coroutines/e;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/J0;-><init>(Lkotlin/coroutines/i;Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/e;)Lkotlin/coroutines/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lkotlinx/coroutines/A0;->e:Lkotlin/coroutines/e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public C0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/A0;->e:Lkotlin/coroutines/e;

    .line 2
    .line 3
    invoke-static {v0, p0}, LG1/a;->b(Lkotlin/coroutines/e;Lkotlin/coroutines/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

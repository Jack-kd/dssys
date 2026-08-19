.class public final Lkotlinx/coroutines/selects/OnTimeout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/selects/OnTimeout;->c(Lkotlinx/coroutines/selects/i;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/selects/i;

.field public final synthetic c:Lkotlinx/coroutines/selects/OnTimeout;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/selects/i;Lkotlinx/coroutines/selects/OnTimeout;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/OnTimeout$a;->b:Lkotlinx/coroutines/selects/i;

    iput-object p2, p0, Lkotlinx/coroutines/selects/OnTimeout$a;->c:Lkotlinx/coroutines/selects/OnTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/selects/OnTimeout$a;->b:Lkotlinx/coroutines/selects/i;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/selects/OnTimeout$a;->c:Lkotlinx/coroutines/selects/OnTimeout;

    .line 4
    .line 5
    sget-object v2, Lkotlin/j;->a:Lkotlin/j;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/selects/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

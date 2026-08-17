.class public final Lkotlinx/coroutines/y0$d;
.super Lkotlinx/coroutines/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final f:Lkotlinx/coroutines/selects/i;

.field public final synthetic g:Lkotlinx/coroutines/y0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/y0;Lkotlinx/coroutines/selects/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/y0$d;->g:Lkotlinx/coroutines/y0;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/x0;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/y0$d;->f:Lkotlinx/coroutines/selects/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/y0$d;->g:Lkotlinx/coroutines/y0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/y0;->h0()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lkotlinx/coroutines/A;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lkotlinx/coroutines/z0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/y0$d;->f:Lkotlinx/coroutines/selects/i;

    .line 17
    .line 18
    iget-object v1, p0, Lkotlinx/coroutines/y0$d;->g:Lkotlinx/coroutines/y0;

    .line 19
    .line 20
    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/selects/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

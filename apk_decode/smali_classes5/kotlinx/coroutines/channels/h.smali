.class public abstract Lkotlinx/coroutines/channels/h;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/g;


# instance fields
.field public final e:Lkotlinx/coroutines/channels/g;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Lkotlinx/coroutines/channels/g;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;ZZ)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/s;->C(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public E(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/s;->E(Ljava/lang/Object;Lkotlin/coroutines/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public R(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/y0;->L0(Lkotlinx/coroutines/y0;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/util/concurrent/CancellationException;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/y0;->P(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final W0()Lkotlinx/coroutines/channels/g;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final X0()Lkotlinx/coroutines/channels/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/y0;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    .line 11
    .line 12
    invoke-static {p0}, Lkotlinx/coroutines/y0;->G(Lkotlinx/coroutines/y0;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/u0;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/h;->R(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    return-object v0
.end method

.method public k(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/s;->k(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/s;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n()Lkotlinx/coroutines/selects/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->n()Lkotlinx/coroutines/selects/f;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->o()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public p(Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->p(Lkotlin/coroutines/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    return-object p1
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/s;->r()Z

    move-result v0

    return v0
.end method

.method public w()Lkotlinx/coroutines/selects/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->w()Lkotlinx/coroutines/selects/f;

    move-result-object v0

    return-object v0
.end method

.method public y(Lkotlin/coroutines/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/h;->e:Lkotlinx/coroutines/channels/g;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->y(Lkotlin/coroutines/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

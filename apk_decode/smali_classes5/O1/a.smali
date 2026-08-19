.class public LO1/a;
.super LN1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO1/a$a;
    }
.end annotation


# static fields
.field public static final N:LR1/c;


# instance fields
.field public K:Ljava/net/ServerSocket;

.field public final L:Ljava/util/Set;

.field public volatile M:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LO1/a;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LO1/a;->N:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LN1/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, LO1/a;->M:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LO1/a;->L:Ljava/util/Set;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic A0(LO1/a;LL1/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LN1/a;->g0(LL1/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0()LR1/c;
    .locals 1

    .line 1
    sget-object v0, LO1/a;->N:LR1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic y0(LO1/a;)I
    .locals 0

    .line 1
    iget p0, p0, LN1/a;->A:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic z0(LO1/a;LL1/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LN1/a;->h0(LL1/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public B0(LL1/k;)LL1/j;
    .locals 2

    .line 1
    new-instance v0, LN1/f;

    .line 2
    .line 3
    invoke-virtual {p0}, LN1/a;->c()LN1/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, p1, v1}, LN1/f;-><init>(LN1/g;LL1/k;LN1/m;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public C0(Ljava/lang/String;II)Ljava/net/ServerSocket;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/net/ServerSocket;

    .line 4
    .line 5
    invoke-direct {p1, p2, p3}, Ljava/net/ServerSocket;-><init>(II)V

    .line 6
    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p2, p3, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public a0(I)V
    .locals 1

    .line 1
    iget-object p1, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, LN1/a;->f0(Ljava/net/Socket;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, LO1/a$a;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1}, LO1/a$a;-><init>(LO1/a;Ljava/net/Socket;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, LO1/a$a;->e()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 10
    .line 11
    const/4 v0, -0x2

    .line 12
    iput v0, p0, LO1/a;->M:I

    .line 13
    .line 14
    return-void
.end method

.method public doStart()V
    .locals 1

    .line 1
    iget-object v0, p0, LO1/a;->L:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, LN1/a;->doStart()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public doStop()V
    .locals 3

    .line 1
    invoke-super {p0}, LN1/a;->doStop()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LO1/a;->L:Ljava/util/Set;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, LO1/a;->L:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, LL1/k;

    .line 33
    .line 34
    check-cast v1, LO1/a$a;

    .line 35
    .line 36
    invoke-virtual {v1}, LO1/a$a;->close()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v0
.end method

.method public f(LL1/k;LN1/k;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, LO1/a$a;

    .line 3
    .line 4
    invoke-virtual {p0}, LN1/a;->r()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, LN1/a;->B:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, p0, LN1/a;->A:I

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/bio/a;->l(I)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0, p1, p2}, LN1/a;->f(LL1/k;LN1/k;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    iget v0, p0, LO1/a;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/util/component/b;->m(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LO1/a;->L:Ljava/util/Set;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, LO1/a;->L:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/util/Collection;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public open()V
    .locals 3

    .line 1
    iget-object v0, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, LN1/a;->getHost()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, LN1/a;->s0()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0}, LN1/a;->i0()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {p0, v0, v1, v2}, LO1/a;->C0(Ljava/lang/String;II)Ljava/net/ServerSocket;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 30
    .line 31
    invoke-virtual {p0}, LN1/a;->t0()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, LO1/a;->K:Ljava/net/ServerSocket;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, LO1/a;->M:I

    .line 45
    .line 46
    iget v0, p0, LO1/a;->M:I

    .line 47
    .line 48
    if-lez v0, :cond_2

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "port not allocated for "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method

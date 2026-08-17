.class public abstract LN1/a;
.super Lorg/eclipse/jetty/util/component/b;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/d;
.implements LN1/g;
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN1/a$a;
    }
.end annotation


# static fields
.field public static final J:LR1/c;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public transient D:[Ljava/lang/Thread;

.field public final E:Ljava/util/concurrent/atomic/AtomicLong;

.field public final F:LV1/a;

.field public final G:LV1/b;

.field public final H:LV1/b;

.field public final I:Lorg/eclipse/jetty/http/e;

.field public e:Ljava/lang/String;

.field public f:LN1/m;

.field public g:LW1/d;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LN1/a;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LN1/a;->J:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LN1/a;->i:I

    .line 6
    .line 7
    const-string v1, "https"

    .line 8
    .line 9
    iput-object v1, p0, LN1/a;->j:Ljava/lang/String;

    .line 10
    .line 11
    iput v0, p0, LN1/a;->k:I

    .line 12
    .line 13
    iput-object v1, p0, LN1/a;->l:Ljava/lang/String;

    .line 14
    .line 15
    iput v0, p0, LN1/a;->m:I

    .line 16
    .line 17
    iput v0, p0, LN1/a;->n:I

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput v1, p0, LN1/a;->o:I

    .line 21
    .line 22
    iput v0, p0, LN1/a;->p:I

    .line 23
    .line 24
    const-string v0, "X-Forwarded-Host"

    .line 25
    .line 26
    iput-object v0, p0, LN1/a;->t:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "X-Forwarded-Server"

    .line 29
    .line 30
    iput-object v0, p0, LN1/a;->u:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "X-Forwarded-For"

    .line 33
    .line 34
    iput-object v0, p0, LN1/a;->v:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "X-Forwarded-Proto"

    .line 37
    .line 38
    iput-object v0, p0, LN1/a;->w:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v1, p0, LN1/a;->z:Z

    .line 41
    .line 42
    const v0, 0x30d40

    .line 43
    .line 44
    .line 45
    iput v0, p0, LN1/a;->A:I

    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    iput v0, p0, LN1/a;->B:I

    .line 49
    .line 50
    iput v0, p0, LN1/a;->C:I

    .line 51
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    .line 54
    const-wide/16 v1, -0x1

    .line 55
    .line 56
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, LN1/a;->E:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    .line 61
    new-instance v0, LV1/a;

    .line 62
    .line 63
    invoke-direct {v0}, LV1/a;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, LN1/a;->F:LV1/a;

    .line 67
    .line 68
    new-instance v0, LV1/b;

    .line 69
    .line 70
    invoke-direct {v0}, LV1/b;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, LN1/a;->G:LV1/b;

    .line 74
    .line 75
    new-instance v0, LV1/b;

    .line 76
    .line 77
    invoke-direct {v0}, LV1/b;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, LN1/a;->H:LV1/b;

    .line 81
    .line 82
    new-instance v0, Lorg/eclipse/jetty/http/e;

    .line 83
    .line 84
    invoke-direct {v0}, Lorg/eclipse/jetty/http/e;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, LN1/a;->I:Lorg/eclipse/jetty/http/e;

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/component/b;->P(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public static synthetic b0(LN1/a;)[Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, LN1/a;->D:[Ljava/lang/Thread;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c0(LN1/a;)I
    .locals 0

    .line 1
    iget p0, p0, LN1/a;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d0()LR1/c;
    .locals 1

    .line 1
    sget-object v0, LN1/a;->J:LR1/c;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final D()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LN1/a;->r0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public H()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->I:Lorg/eclipse/jetty/http/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/e;->H()Lorg/eclipse/jetty/io/Buffers;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public a(LN1/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN1/a;->f:LN1/m;

    .line 2
    .line 3
    return-void
.end method

.method public abstract a0(I)V
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, LN1/a;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public c()LN1/m;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->f:LN1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public doStart()V
    .locals 3

    .line 1
    iget-object v0, p0, LN1/a;->f:LN1/m;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-interface {p0}, LN1/g;->open()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LN1/a;->g:LW1/d;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, LN1/a;->f:LN1/m;

    .line 14
    .line 15
    invoke-virtual {v0}, LN1/m;->m0()LW1/d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, LN1/a;->g:LW1/d;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/component/b;->Q(Ljava/lang/Object;Z)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/b;->doStart()V

    .line 25
    .line 26
    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    invoke-virtual {p0}, LN1/a;->j0()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    new-array v0, v0, [Ljava/lang/Thread;

    .line 33
    .line 34
    iput-object v0, p0, LN1/a;->D:[Ljava/lang/Thread;

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, LN1/a;->D:[Ljava/lang/Thread;

    .line 37
    .line 38
    array-length v0, v0

    .line 39
    if-ge v1, v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, LN1/a;->g:LW1/d;

    .line 42
    .line 43
    new-instance v2, LN1/a$a;

    .line 44
    .line 45
    invoke-direct {v2, p0, v1}, LN1/a$a;-><init>(LN1/a;I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v2}, LW1/d;->dispatch(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v1, "!accepting"

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, LN1/a;->g:LW1/d;

    .line 68
    .line 69
    invoke-interface {v0}, LW1/d;->isLowOnThreads()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    sget-object v0, LN1/a;->J:LR1/c;

    .line 76
    .line 77
    const-string v1, "insufficient threads configured for {}"

    .line 78
    .line 79
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-object v0, LN1/a;->J:LR1/c;

    .line 88
    .line 89
    const-string v1, "Started {}"

    .line 90
    .line 91
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw v0

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string v1, "No server"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v0
.end method

.method public doStop()V
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, LN1/g;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    sget-object v1, LN1/a;->J:LR1/c;

    .line 7
    .line 8
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/b;->doStop()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_1
    iget-object v0, p0, LN1/a;->D:[Ljava/lang/Thread;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, LN1/a;->D:[Ljava/lang/Thread;

    .line 19
    .line 20
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_1
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    aget-object v3, v0, v2

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw v0
.end method

.method public e0(LL1/k;LN1/k;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, LN1/k;->d()LN1/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, LN1/c;->s()Lorg/eclipse/jetty/http/g;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, LN1/a;->k0()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, LN1/a;->k0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/http/g;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-string v1, "javax.servlet.request.cipher_suite"

    .line 26
    .line 27
    invoke-virtual {p2, v1, v0}, LN1/k;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, LN1/a;->p0()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, LN1/a;->p0()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/http/g;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v1, "javax.servlet.request.ssl_session_id"

    .line 47
    .line 48
    invoke-virtual {p2, v1, v0}, LN1/k;->F(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "https"

    .line 52
    .line 53
    invoke-virtual {p2, v0}, LN1/k;->W(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0}, LN1/a;->m0()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, p1, v0}, LN1/a;->q0(Lorg/eclipse/jetty/http/g;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0}, LN1/a;->o0()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p0, p1, v1}, LN1/a;->q0(Lorg/eclipse/jetty/http/g;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p0}, LN1/a;->l0()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, p1, v2}, LN1/a;->q0(Lorg/eclipse/jetty/http/g;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p0}, LN1/a;->n0()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p0, p1, v3}, LN1/a;->q0(Lorg/eclipse/jetty/http/g;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-object v4, p0, LN1/a;->s:Ljava/lang/String;

    .line 89
    .line 90
    const/4 v5, -0x1

    .line 91
    const/4 v6, 0x0

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    sget-object v0, Lorg/eclipse/jetty/http/j;->e:LL1/d;

    .line 95
    .line 96
    invoke-virtual {p1, v0, v4}, Lorg/eclipse/jetty/http/g;->w(LL1/d;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v6}, LN1/k;->X(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v5}, LN1/k;->Y(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, LN1/k;->p()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    if-eqz v0, :cond_3

    .line 110
    .line 111
    sget-object v1, Lorg/eclipse/jetty/http/j;->e:LL1/d;

    .line 112
    .line 113
    invoke-virtual {p1, v1, v0}, Lorg/eclipse/jetty/http/g;->w(LL1/d;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v6}, LN1/k;->X(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v5}, LN1/k;->Y(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, LN1/k;->p()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    if-eqz v1, :cond_4

    .line 127
    .line 128
    invoke-virtual {p2, v1}, LN1/k;->X(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_0
    if-eqz v2, :cond_7

    .line 132
    .line 133
    invoke-virtual {p2, v2}, LN1/k;->R(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-boolean p1, p0, LN1/a;->q:Z

    .line 137
    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 141
    .line 142
    .line 143
    move-result-object v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_1

    .line 145
    :catch_0
    move-exception p1

    .line 146
    sget-object v0, LN1/a;->J:LR1/c;

    .line 147
    .line 148
    invoke-interface {v0, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    :goto_1
    if-nez v6, :cond_6

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :goto_2
    invoke-virtual {p2, v2}, LN1/k;->S(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    if-eqz v3, :cond_8

    .line 162
    .line 163
    invoke-virtual {p2, v3}, LN1/k;->W(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    return-void
.end method

.method public f(LL1/k;LN1/k;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LN1/a;->v0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, LN1/a;->e0(LL1/k;LN1/k;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public f0(Ljava/net/Socket;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, LN1/a;->C:I

    .line 6
    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    div-int/lit16 v1, v1, 0x3e8

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    sget-object v0, LN1/a;->J:LR1/c;

    .line 23
    .line 24
    invoke-interface {v0, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public g0(LL1/j;)V
    .locals 5

    .line 1
    invoke-interface {p1}, LL1/j;->onClose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LN1/a;->E:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-interface {p1}, LL1/j;->d()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v0, v2

    .line 26
    instance-of v2, p1, LN1/c;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    check-cast p1, LN1/c;

    .line 31
    .line 32
    invoke-virtual {p1}, LN1/c;->t()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, LN1/a;->G:LV1/b;

    .line 39
    .line 40
    int-to-long v3, p1

    .line 41
    invoke-virtual {v2, v3, v4}, LV1/b;->a(J)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, LN1/a;->F:LV1/a;

    .line 45
    .line 46
    invoke-virtual {p1}, LV1/a;->b()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, LN1/a;->H:LV1/b;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, LV1/b;->a(J)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LN1/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, LN1/a;->getHost()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "0.0.0.0"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, LN1/a;->getHost()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ":"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, LN1/g;->getLocalPort()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-gtz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, LN1/a;->s0()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {p0}, LN1/g;->getLocalPort()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, LN1/a;->e:Ljava/lang/String;

    .line 54
    .line 55
    :cond_2
    iget-object v0, p0, LN1/a;->e:Ljava/lang/String;

    .line 56
    .line 57
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/a;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public h0(LL1/j;)V
    .locals 4

    .line 1
    iget-object p1, p0, LN1/a;->E:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, LN1/a;->F:LV1/a;

    .line 15
    .line 16
    invoke-virtual {p1}, LV1/a;->c()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public i0()I
    .locals 1

    .line 1
    iget v0, p0, LN1/a;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public j0()I
    .locals 1

    .line 1
    iget v0, p0, LN1/a;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public k0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->w:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public p0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q0(Lorg/eclipse/jetty/http/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/http/g;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    const/16 p2, 0x2c

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v0, -0x1

    .line 19
    if-ne p2, v0, :cond_2

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_2
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->g:LW1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, LW1/d;->isLowOnThreads()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, LN1/a;->f:LN1/m;

    .line 11
    .line 12
    invoke-virtual {v0}, LN1/m;->m0()LW1/d;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, LW1/d;->isLowOnThreads()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public r0()I
    .locals 1

    .line 1
    iget v0, p0, LN1/a;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public s(LN1/k;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, LN1/k;->o()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "https"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public s0()I
    .locals 1

    .line 1
    iget v0, p0, LN1/a;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public t0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/a;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, LN1/a;->getHost()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "0.0.0.0"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, LN1/a;->getHost()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-interface {p0}, LN1/g;->getLocalPort()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gtz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, LN1/a;->s0()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {p0}, LN1/g;->getLocalPort()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "%s@%s:%d"

    .line 46
    .line 47
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public u0()LW1/d;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->g:LW1/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public v(LL1/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/a;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public w0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN1/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public x0(I)V
    .locals 0

    .line 1
    iput p1, p0, LN1/a;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public z()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .line 1
    iget-object v0, p0, LN1/a;->I:Lorg/eclipse/jetty/http/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/e;->z()Lorg/eclipse/jetty/io/Buffers;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

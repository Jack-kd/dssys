.class public LW1/b;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"

# interfaces
.implements LW1/d;
.implements Ljava/util/concurrent/Executor;
.implements Lorg/eclipse/jetty/util/component/e;


# static fields
.field public static final r:LR1/c;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Lorg/eclipse/jetty/util/g;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/util/concurrent/BlockingQueue;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LW1/b;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LW1/b;->r:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LW1/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LW1/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    .line 25
    new-instance v0, Lorg/eclipse/jetty/util/g;

    .line 26
    .line 27
    invoke-direct {v0}, Lorg/eclipse/jetty/util/g;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LW1/b;->e:Lorg/eclipse/jetty/util/g;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, LW1/b;->f:Ljava/lang/Object;

    .line 38
    .line 39
    const v0, 0xea60

    .line 40
    .line 41
    .line 42
    iput v0, p0, LW1/b;->i:I

    .line 43
    .line 44
    const/16 v0, 0xfe

    .line 45
    .line 46
    iput v0, p0, LW1/b;->j:I

    .line 47
    .line 48
    const/16 v0, 0x8

    .line 49
    .line 50
    iput v0, p0, LW1/b;->k:I

    .line 51
    .line 52
    const/4 v0, -0x1

    .line 53
    iput v0, p0, LW1/b;->l:I

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    iput v0, p0, LW1/b;->m:I

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, LW1/b;->n:Z

    .line 60
    .line 61
    const/16 v1, 0x64

    .line 62
    .line 63
    iput v1, p0, LW1/b;->o:I

    .line 64
    .line 65
    iput-boolean v0, p0, LW1/b;->p:Z

    .line 66
    .line 67
    new-instance v0, LW1/b$c;

    .line 68
    .line 69
    invoke-direct {v0, p0}, LW1/b$c;-><init>(LW1/b;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, LW1/b;->q:Ljava/lang/Runnable;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "qtp"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, LW1/b;->h:Ljava/lang/String;

    .line 96
    .line 97
    return-void
.end method

.method public static synthetic P(LW1/b;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Q(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, LW1/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic R(LW1/b;)I
    .locals 0

    .line 1
    iget p0, p0, LW1/b;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic S(LW1/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic T(LW1/b;)I
    .locals 0

    .line 1
    iget p0, p0, LW1/b;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic U(LW1/b;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, LW1/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic V(LW1/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-virtual {p0}, LW1/b;->a0()Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W()LR1/c;
    .locals 1

    .line 1
    sget-object v0, LW1/b;->r:LR1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic X(LW1/b;)Lorg/eclipse/jetty/util/g;
    .locals 0

    .line 1
    iget-object p0, p0, LW1/b;->e:Lorg/eclipse/jetty/util/g;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public Y()I
    .locals 1

    .line 1
    iget v0, p0, LW1/b;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public Z()I
    .locals 1

    .line 1
    iget v0, p0, LW1/b;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final a0()Ljava/lang/Runnable;
    .locals 4

    .line 1
    iget-object v0, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    iget v1, p0, LW1/b;->i:I

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Runnable;

    .line 13
    .line 14
    return-object v0
.end method

.method public b0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c0(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LW1/b;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0}, LW1/b;->getIdleThreads()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 18
    .line 19
    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget v0, p0, LW1/b;->j:I

    .line 36
    .line 37
    if-ge p1, v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1}, LW1/b;->g0(I)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :cond_2
    sget-object v0, LW1/b;->r:LR1/c;

    .line 45
    .line 46
    const-string v1, "Dispatched {} to stopped {}"

    .line 47
    .line 48
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v0, v1, p1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    return p1
.end method

.method public doStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/a;->doStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, LW1/b;->l:I

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    .line 20
    iget v1, p0, LW1/b;->l:I

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/util/d;

    .line 27
    .line 28
    iget v1, p0, LW1/b;->k:I

    .line 29
    .line 30
    invoke-direct {v0, v1, v1}, Lorg/eclipse/jetty/util/d;-><init>(II)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object v0, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    iget v1, p0, LW1/b;->k:I

    .line 48
    .line 49
    if-ge v0, v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, v0}, LW1/b;->g0(I)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    return-void
.end method

.method public doStop()V
    .locals 9

    .line 1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/a;->doStop()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :goto_0
    iget-object v2, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-wide/16 v3, 0x1

    .line 15
    .line 16
    if-lez v2, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v5

    .line 22
    sub-long/2addr v5, v0

    .line 23
    iget v2, p0, LW1/b;->o:I

    .line 24
    .line 25
    div-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    int-to-long v7, v2

    .line 28
    cmp-long v2, v5, v7

    .line 29
    .line 30
    if-gez v2, :cond_0

    .line 31
    .line 32
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v2, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 39
    .line 40
    .line 41
    new-instance v2, LW1/b$a;

    .line 42
    .line 43
    invoke-direct {v2, p0}, LW1/b$a;-><init>(LW1/b;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, LW1/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    :goto_1
    add-int/lit8 v6, v5, -0x1

    .line 53
    .line 54
    if-lez v5, :cond_1

    .line 55
    .line 56
    iget-object v5, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 57
    .line 58
    invoke-interface {v5, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move v5, v6

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-lez v2, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, LW1/b;->e:Lorg/eclipse/jetty/util/g;

    .line 75
    .line 76
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/g;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ljava/lang/Thread;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    :goto_3
    iget-object v2, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-lez v2, :cond_3

    .line 103
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v5

    .line 108
    sub-long/2addr v5, v0

    .line 109
    iget v2, p0, LW1/b;->o:I

    .line 110
    .line 111
    int-to-long v7, v2

    .line 112
    cmp-long v2, v5, v7

    .line 113
    .line 114
    if-gez v2, :cond_3

    .line 115
    .line 116
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, LW1/b;->e:Lorg/eclipse/jetty/util/g;

    .line 124
    .line 125
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/g;->size()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-lez v0, :cond_6

    .line 130
    .line 131
    sget-object v1, LW1/b;->r:LR1/c;

    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v3, " threads could not be stopped"

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const/4 v3, 0x0

    .line 151
    new-array v4, v3, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-interface {v1, v2, v4}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    if-eq v0, v2, :cond_4

    .line 158
    .line 159
    invoke-interface {v1}, LR1/c;->f()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_6

    .line 164
    .line 165
    :cond_4
    iget-object v0, p0, LW1/b;->e:Lorg/eclipse/jetty/util/g;

    .line 166
    .line 167
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/g;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_6

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Ljava/lang/Thread;

    .line 182
    .line 183
    sget-object v2, LW1/b;->r:LR1/c;

    .line 184
    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v5, "Couldn\'t stop "

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    new-array v5, v3, [Ljava/lang/Object;

    .line 203
    .line 204
    invoke-interface {v2, v4, v5}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    array-length v2, v1

    .line 212
    move v4, v3

    .line 213
    :goto_4
    if-ge v4, v2, :cond_5

    .line 214
    .line 215
    aget-object v5, v1, v4

    .line 216
    .line 217
    sget-object v6, LW1/b;->r:LR1/c;

    .line 218
    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v8, " at "

    .line 225
    .line 226
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    new-array v7, v3, [Ljava/lang/Object;

    .line 237
    .line 238
    invoke-interface {v6, v5, v7}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    add-int/lit8 v4, v4, 0x1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_6
    iget-object v0, p0, LW1/b;->f:Ljava/lang/Object;

    .line 245
    .line 246
    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, LW1/b;->f:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 250
    .line 251
    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 254
    :catchall_0
    move-exception v1

    .line 255
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    throw v1
.end method

.method public e0(I)V
    .locals 1

    .line 1
    iput p1, p0, LW1/b;->j:I

    .line 2
    .line 3
    iget v0, p0, LW1/b;->k:I

    .line 4
    .line 5
    if-le v0, p1, :cond_0

    .line 6
    .line 7
    iput p1, p0, LW1/b;->k:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW1/b;->dispatch(Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public f0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, LW1/b;->h:Ljava/lang/String;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "started"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final g0(I)Z
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-object v1, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    :try_start_0
    iget-object p1, p0, LW1/b;->q:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, LW1/b;->b0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-boolean v0, p0, LW1/b;->n:Z

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, LW1/b;->m:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, LW1/b;->h:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "-"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, LW1/b;->e:Lorg/eclipse/jetty/util/g;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/g;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x1

    .line 67
    return p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    iget-object v0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public getIdleThreads()I
    .locals 1

    .line 1
    iget-object v0, p0, LW1/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getThreads()I
    .locals 1

    .line 1
    iget-object v0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLowOnThreads()Z
    .locals 2

    .line 1
    iget-object v0, p0, LW1/b;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, LW1/b;->j:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, LW1/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lt v0, v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, LW1/b;->Y()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, LW1/b;->e:Lorg/eclipse/jetty/util/g;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/g;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_5

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Thread;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    array-length v6, v5

    .line 37
    move v7, v4

    .line 38
    :goto_1
    if-ge v7, v6, :cond_1

    .line 39
    .line 40
    aget-object v8, v5, v7

    .line 41
    .line 42
    const-string v9, "idleJobPoll"

    .line 43
    .line 44
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v3, v4

    .line 59
    :goto_2
    iget-boolean v6, p0, LW1/b;->p:Z

    .line 60
    .line 61
    if-eqz v6, :cond_2

    .line 62
    .line 63
    new-instance v4, LW1/b$b;

    .line 64
    .line 65
    invoke-direct {v4, p0, v2, v3, v5}, LW1/b$b;-><init>(LW1/b;Ljava/lang/Thread;Z[Ljava/lang/StackTraceElement;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v7, " "

    .line 85
    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v2, " @ "

    .line 107
    .line 108
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    array-length v2, v5

    .line 112
    if-lez v2, :cond_3

    .line 113
    .line 114
    aget-object v2, v5, v4

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    const-string v2, "???"

    .line 118
    .line 119
    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    if-eqz v3, :cond_4

    .line 123
    .line 124
    const-string v2, " IDLE"

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_4
    const-string v2, ""

    .line 128
    .line 129
    :goto_4
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/component/b;->T(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    new-array v1, v3, [Ljava/util/Collection;

    .line 144
    .line 145
    aput-object v0, v1, v4

    .line 146
    .line 147
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LW1/b;->h:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "{"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, LW1/b;->Z()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "<="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, LW1/b;->getIdleThreads()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, LW1/b;->getThreads()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "/"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, LW1/b;->Y()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ","

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, LW1/b;->g:Ljava/util/concurrent/BlockingQueue;

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    const/4 v1, -0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, "}"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

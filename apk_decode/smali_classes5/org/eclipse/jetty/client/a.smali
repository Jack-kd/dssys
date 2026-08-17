.class public abstract Lorg/eclipse/jetty/client/a;
.super LL1/b;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/a$d;,
        Lorg/eclipse/jetty/client/a$b;,
        Lorg/eclipse/jetty/client/a$c;
    }
.end annotation


# static fields
.field public static final p:LR1/c;


# instance fields
.field public e:Lorg/eclipse/jetty/client/HttpDestination;

.field public f:Lorg/eclipse/jetty/http/h;

.field public g:Lorg/eclipse/jetty/http/l;

.field public h:Z

.field public i:I

.field public j:LL1/d;

.field public k:Z

.field public volatile l:Lorg/eclipse/jetty/client/j;

.field public m:Lorg/eclipse/jetty/client/j;

.field public final n:LW1/e$a;

.field public o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/client/a;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/client/a;->p:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/Buffers;LL1/k;)V
    .locals 3

    .line 1
    invoke-direct {p0, p3}, LL1/b;-><init>(LL1/k;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/a;->h:Z

    .line 6
    .line 7
    new-instance v0, Lorg/eclipse/jetty/client/a$b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/client/a$b;-><init>(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/a$a;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/eclipse/jetty/client/a;->n:LW1/e$a;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/eclipse/jetty/client/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v0, Lorg/eclipse/jetty/http/h;

    .line 24
    .line 25
    invoke-direct {v0, p1, p3}, Lorg/eclipse/jetty/http/h;-><init>(Lorg/eclipse/jetty/io/Buffers;LL1/k;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 29
    .line 30
    new-instance p1, Lorg/eclipse/jetty/http/l;

    .line 31
    .line 32
    new-instance v0, Lorg/eclipse/jetty/client/a$c;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/client/a$c;-><init>(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/a$a;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2, p3, v0}, Lorg/eclipse/jetty/http/l;-><init>(Lorg/eclipse/jetty/io/Buffers;LL1/k;Lorg/eclipse/jetty/http/l$a;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic f()LR1/c;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/client/a;->p:LR1/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic g(Lorg/eclipse/jetty/client/a;)LL1/k;
    .locals 0

    .line 1
    iget-object p0, p0, LL1/b;->c:LL1/k;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lorg/eclipse/jetty/client/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/client/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getTimeout()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-gtz v4, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/g;->n0()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :cond_0
    iget-object v4, p0, LL1/b;->c:LL1/k;

    .line 24
    .line 25
    invoke-interface {v4}, LL1/k;->b()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    int-to-long v4, v4

    .line 30
    cmp-long v2, v0, v2

    .line 31
    .line 32
    if-lez v2, :cond_1

    .line 33
    .line 34
    cmp-long v2, v0, v4

    .line 35
    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, LL1/b;->c:LL1/k;

    .line 39
    .line 40
    long-to-int v0, v0

    .line 41
    mul-int/lit8 v0, v0, 0x2

    .line 42
    .line 43
    invoke-interface {v2, v0}, LL1/k;->l(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public isIdle()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v0
.end method

.method public j()Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->n:LW1/e$a;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/g;->c0(LW1/e$a;)V

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v2

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return v1

    .line 29
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0
.end method

.method public k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->isDone()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    packed-switch v2, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    iget-object v2, p0, LL1/b;->c:LL1/k;

    .line 21
    .line 22
    invoke-interface {v2}, LL1/k;->s()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/l;->j(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 42
    .line 43
    invoke-interface {v3}, LL1/k;->isOpen()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-object v3, p0, LL1/b;->c:LL1/k;

    .line 50
    .line 51
    invoke-interface {v3}, LL1/k;->s()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const-string v3, "half closed: "

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string v3, "local close: "

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string v3, "closed: "

    .line 64
    .line 65
    :goto_1
    const/16 v4, 0x9

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v4, Lorg/eclipse/jetty/io/EofException;

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v4, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v4}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_2
    :pswitch_1
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 101
    .line 102
    invoke-interface {v0}, LL1/k;->isOpen()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 109
    .line 110
    invoke-interface {v0}, LL1/k;->close()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 114
    .line 115
    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V

    .line 116
    .line 117
    .line 118
    :cond_4
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public l()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lorg/eclipse/jetty/client/a;->i:I

    .line 4
    .line 5
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 6
    .line 7
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_9

    .line 13
    .line 14
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getVersion()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/a;->setVersion(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/j;->getMethod()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 38
    .line 39
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getRequestURI()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 44
    .line 45
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->l()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    const-string v3, "CONNECT"

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_4

    .line 58
    .line 59
    const-string v3, "/"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 68
    .line 69
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->n()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 74
    .line 75
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/HttpDestination;->e()Lorg/eclipse/jetty/client/b;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4}, Lorg/eclipse/jetty/client/b;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 84
    .line 85
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/HttpDestination;->e()Lorg/eclipse/jetty/client/b;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5}, Lorg/eclipse/jetty/client/b;->b()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    if-eqz v3, :cond_0

    .line 99
    .line 100
    const-string v7, "https"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_0
    const-string v7, "http"

    .line 107
    .line 108
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v7, "://"

    .line 112
    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_1

    .line 120
    .line 121
    const/16 v4, 0x1bb

    .line 122
    .line 123
    if-eq v5, v4, :cond_3

    .line 124
    .line 125
    :cond_1
    if-nez v3, :cond_2

    .line 126
    .line 127
    const/16 v3, 0x50

    .line 128
    .line 129
    if-eq v5, v3, :cond_3

    .line 130
    .line 131
    :cond_2
    const-string v3, ":"

    .line 132
    .line 133
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 147
    .line 148
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->j()LJ1/a;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    iget-object v4, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 155
    .line 156
    invoke-interface {v3, v4}, LJ1/a;->a(Lorg/eclipse/jetty/client/j;)V

    .line 157
    .line 158
    .line 159
    :cond_5
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 160
    .line 161
    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jetty/http/a;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 165
    .line 166
    const-string v3, "HEAD"

    .line 167
    .line 168
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/l;->l(Z)V

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 176
    .line 177
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/j;->getRequestFields()Lorg/eclipse/jetty/http/g;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 182
    .line 183
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getVersion()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    const/16 v3, 0xb

    .line 188
    .line 189
    if-lt v2, v3, :cond_6

    .line 190
    .line 191
    sget-object v2, Lorg/eclipse/jetty/http/j;->e:LL1/d;

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/g;->i(LL1/d;)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_6

    .line 198
    .line 199
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 200
    .line 201
    invoke-virtual {v3}, Lorg/eclipse/jetty/client/HttpDestination;->f()LL1/d;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/http/g;->d(LL1/d;LL1/d;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 209
    .line 210
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getRequestContent()LL1/d;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const/4 v3, 0x4

    .line 215
    const/4 v4, 0x1

    .line 216
    if-eqz v2, :cond_7

    .line 217
    .line 218
    const-string v5, "Content-Length"

    .line 219
    .line 220
    invoke-interface {v2}, LL1/d;->length()I

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    int-to-long v6, v6

    .line 225
    invoke-virtual {v1, v5, v6, v7}, Lorg/eclipse/jetty/http/g;->z(Ljava/lang/String;J)V

    .line 226
    .line 227
    .line 228
    iget-object v5, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 229
    .line 230
    invoke-virtual {v5, v1, v0}, Lorg/eclipse/jetty/http/h;->m(Lorg/eclipse/jetty/http/g;Z)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 234
    .line 235
    new-instance v1, LL1/l;

    .line 236
    .line 237
    invoke-direct {v1, v2}, LL1/l;-><init>(LL1/d;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/http/h;->g(LL1/d;Z)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 244
    .line 245
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 250
    .line 251
    invoke-virtual {v2}, Lorg/eclipse/jetty/client/j;->getRequestContentSource()Ljava/io/InputStream;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    if-eqz v2, :cond_8

    .line 256
    .line 257
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 258
    .line 259
    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jetty/http/h;->m(Lorg/eclipse/jetty/http/g;Z)V

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_8
    const-string v0, "Content-Length"

    .line 264
    .line 265
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/g;->B(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 269
    .line 270
    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/http/h;->m(Lorg/eclipse/jetty/http/g;Z)V

    .line 271
    .line 272
    .line 273
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 274
    .line 275
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 276
    .line 277
    .line 278
    :goto_1
    monitor-exit p0

    .line 279
    return-void

    .line 280
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 281
    .line 282
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 283
    .line 284
    .line 285
    throw v0

    .line 286
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    throw v0
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "\n"

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, LL1/b;->c:LL1/k;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/util/Collection;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v0, v1, v2

    .line 26
    .line 27
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public n(Lorg/eclipse/jetty/client/j;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    :try_start_1
    iget-object p1, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->s(Lorg/eclipse/jetty/client/a;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    :try_start_2
    sget-object v0, Lorg/eclipse/jetty/client/a;->p:LR1/c;

    .line 17
    .line 18
    invoke-interface {v0, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    throw p1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/a;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jetty/client/a;->j:LL1/d;

    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/l;->reset()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/h;->reset()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lorg/eclipse/jetty/client/a;->h:Z

    .line 16
    .line 17
    return-void
.end method

.method public q(Lorg/eclipse/jetty/client/j;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/eclipse/jetty/client/a;->p:LR1/c;

    .line 2
    .line 3
    const-string v1, "Send {} on {}"

    .line 4
    .line 5
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iput-object p1, p0, Lorg/eclipse/jetty/client/a;->m:Lorg/eclipse/jetty/client/j;

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return v1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " PIPELINED!!!  _exchange="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 57
    .line 58
    iget-object p1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/j;->associate(Lorg/eclipse/jetty/client/a;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, LL1/b;->c:LL1/k;

    .line 64
    .line 65
    invoke-interface {p1}, LL1/k;->isOpen()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 72
    .line 73
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/j;->disassociate()Lorg/eclipse/jetty/client/a;

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    monitor-exit p0

    .line 81
    return p1

    .line 82
    :cond_2
    iget-object p1, p0, Lorg/eclipse/jetty/client/a;->l:Lorg/eclipse/jetty/client/j;

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/a;->i()V

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return v1

    .line 93
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p1
.end method

.method public r(Lorg/eclipse/jetty/client/HttpDestination;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 2
    .line 3
    return-void
.end method

.method public s()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/HttpDestination;->g()Lorg/eclipse/jetty/client/g;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->n:LW1/e$a;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/g;->v0(LW1/e$a;)V

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/eclipse/jetty/client/a;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, LL1/b;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/eclipse/jetty/client/a;->e:Lorg/eclipse/jetty/client/HttpDestination;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v1, "?.?.?.?:??"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/HttpDestination;->e()Lorg/eclipse/jetty/client/b;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/a;->f:Lorg/eclipse/jetty/http/h;

    .line 17
    .line 18
    iget-object v3, p0, Lorg/eclipse/jetty/client/a;->g:Lorg/eclipse/jetty/http/l;

    .line 19
    .line 20
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "%s %s g=%s p=%s"

    .line 25
    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

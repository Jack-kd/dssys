.class public Lorg/eclipse/jetty/client/HttpDestination;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/client/HttpDestination$a;
    }
.end annotation


# static fields
.field public static final s:LR1/c;


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/concurrent/BlockingQueue;

.field public final e:Ljava/util/List;

.field public final f:Lorg/eclipse/jetty/client/g;

.field public final g:Lorg/eclipse/jetty/client/b;

.field public final h:Z

.field public final i:LU1/b;

.field public final j:LL1/h;

.field public volatile k:I

.field public volatile l:I

.field public m:I

.field public n:I

.field public volatile o:Lorg/eclipse/jetty/client/b;

.field public p:LJ1/a;

.field public q:Lorg/eclipse/jetty/http/PathMap;

.field public r:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/client/HttpDestination;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/client/HttpDestination;->s:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/client/g;Lorg/eclipse/jetty/client/b;ZLU1/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->d:Ljava/util/concurrent/BlockingQueue;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 37
    .line 38
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->n:I

    .line 39
    .line 40
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 41
    .line 42
    iput-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->g:Lorg/eclipse/jetty/client/b;

    .line 43
    .line 44
    iput-boolean p3, p0, Lorg/eclipse/jetty/client/HttpDestination;->h:Z

    .line 45
    .line 46
    iput-object p4, p0, Lorg/eclipse/jetty/client/HttpDestination;->i:LU1/b;

    .line 47
    .line 48
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/g;->h0()I

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    iput p4, p0, Lorg/eclipse/jetty/client/HttpDestination;->k:I

    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/g;->i0()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->l:I

    .line 59
    .line 60
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/b;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/b;->b()I

    .line 65
    .line 66
    .line 67
    move-result p4

    .line 68
    if-eqz p3, :cond_0

    .line 69
    .line 70
    const/16 p3, 0x1bb

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/16 p3, 0x50

    .line 74
    .line 75
    :goto_0
    if-eq p4, p3, :cond_1

    .line 76
    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, ":"

    .line 86
    .line 87
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/b;->b()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :cond_1
    new-instance p2, LL1/h;

    .line 102
    .line 103
    invoke-direct {p2, p1}, LL1/h;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->j:LL1/h;

    .line 107
    .line 108
    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jetty/client/HttpDestination;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lorg/eclipse/jetty/client/a;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/a;->k()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0
.end method

.method public c(Lorg/eclipse/jetty/client/j;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->r:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lorg/eclipse/jetty/http/f;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :cond_0
    const-string v3, "; "

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/f;->d()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, "="

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/f;->f()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const-string v0, "Cookie"

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/client/j;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->q:Lorg/eclipse/jetty/http/PathMap;

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/j;->getRequestURI()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, LJ1/a;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-interface {v0, p1}, LJ1/a;->a(Lorg/eclipse/jetty/client/j;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/j;->scheduleTimeout(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->h()Lorg/eclipse/jetty/client/a;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->u(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/j;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->l:I

    .line 111
    .line 112
    if-eq v0, v1, :cond_7

    .line 113
    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 126
    .line 127
    add-int/2addr p1, v0

    .line 128
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->k:I

    .line 129
    .line 130
    if-ge p1, v0, :cond_5

    .line 131
    .line 132
    const/4 p1, 0x1

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    const/4 p1, 0x0

    .line 135
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->y()V

    .line 139
    .line 140
    .line 141
    :cond_6
    return-void

    .line 142
    :catchall_1
    move-exception p1

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    :try_start_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v1, "Queue full for address "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->g:Lorg/eclipse/jetty/client/b;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    throw p1

    .line 171
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    throw p1
.end method

.method public d(Lorg/eclipse/jetty/client/j;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public e()Lorg/eclipse/jetty/client/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->g:Lorg/eclipse/jetty/client/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()LL1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->j:LL1/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lorg/eclipse/jetty/client/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lorg/eclipse/jetty/client/a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/a;->k()V

    .line 12
    .line 13
    .line 14
    move-object v1, v0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-lez v2, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lorg/eclipse/jetty/client/a;

    .line 39
    .line 40
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/a;->j()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    return-object v1

    .line 51
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method

.method public i()Lorg/eclipse/jetty/client/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->o:Lorg/eclipse/jetty/client/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()LJ1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->p:LJ1/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()LU1/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->i:LU1/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->o:Lorg/eclipse/jetty/client/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
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
    const-string v0, "idle="

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 25
    .line 26
    .line 27
    const-string v0, " pending="

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 39
    .line 40
    .line 41
    const-string v0, "\n"

    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Ljava/util/Collection;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    aput-object v0, v1, v2

    .line 53
    .line 54
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public o(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 7
    .line 8
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->n:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->n:I

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lorg/eclipse/jetty/client/j;

    .line 36
    .line 37
    const/16 v4, 0x9

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->a(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    :goto_0
    move-object p1, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v1, v2

    .line 71
    goto :goto_0

    .line 72
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->y()V

    .line 76
    .line 77
    .line 78
    :cond_3
    if-eqz p1, :cond_4

    .line 79
    .line 80
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->d:Ljava/util/concurrent/BlockingQueue;

    .line 81
    .line 82
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->s:LR1/c;

    .line 88
    .line 89
    invoke-interface {v0, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    return-void

    .line 93
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p1
.end method

.method public p(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lorg/eclipse/jetty/client/j;

    .line 24
    .line 25
    const/16 v1, 0x9

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/client/h;->d(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p1
.end method

.method public q(Lorg/eclipse/jetty/client/a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->n:I

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->n:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    invoke-virtual {p1}, LL1/b;->e()LL1/k;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->l()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    instance-of v1, v0, Lorg/eclipse/jetty/client/k$c;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    check-cast v0, Lorg/eclipse/jetty/client/k$c;

    .line 39
    .line 40
    new-instance v1, Lorg/eclipse/jetty/client/HttpDestination$a;

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->e()Lorg/eclipse/jetty/client/b;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v1, p0, v2, v0}, Lorg/eclipse/jetty/client/HttpDestination$a;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/b;Lorg/eclipse/jetty/client/k$c;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->i()Lorg/eclipse/jetty/client/b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/client/j;->setAddress(Lorg/eclipse/jetty/client/b;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->s:LR1/c;

    .line 57
    .line 58
    const-string v2, "Establishing tunnel to {} via {}"

    .line 59
    .line 60
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->e()Lorg/eclipse/jetty/client/b;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->i()Lorg/eclipse/jetty/client/b;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v0, v2, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/client/HttpDestination;->u(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/j;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->s:LR1/c;

    .line 88
    .line 89
    const-string v1, "No exchanges for new connection {}"

    .line 90
    .line 91
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/a;->s()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lorg/eclipse/jetty/client/j;

    .line 115
    .line 116
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/client/HttpDestination;->u(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/j;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    const/4 p1, 0x0

    .line 120
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->d:Ljava/util/concurrent/BlockingQueue;

    .line 124
    .line 125
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catch_0
    move-exception p1

    .line 130
    sget-object v0, Lorg/eclipse/jetty/client/HttpDestination;->s:LR1/c;

    .line 131
    .line 132
    invoke-interface {v0, p1}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    return-void

    .line 136
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    throw p1
.end method

.method public r(Lorg/eclipse/jetty/client/j;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/j;->getEventListener()Lorg/eclipse/jetty/client/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/eclipse/jetty/client/h;->b()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/j;->reset()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->c(Lorg/eclipse/jetty/client/j;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public s(Lorg/eclipse/jetty/client/a;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/a;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/client/a;->t(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/a;->k()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    sget-object v2, Lorg/eclipse/jetty/client/HttpDestination;->s:LR1/c;

    .line 19
    .line 20
    invoke-interface {v2, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_2
    if-nez p2, :cond_4

    .line 34
    .line 35
    invoke-virtual {p1}, LL1/b;->e()LL1/k;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, LL1/k;->isOpen()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_4

    .line 44
    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/a;->s()V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lorg/eclipse/jetty/client/j;

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/client/HttpDestination;->u(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/j;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    goto :goto_5

    .line 81
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p1

    .line 83
    :cond_4
    monitor-enter p0

    .line 84
    :try_start_2
    iget-object p2, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/4 p2, 0x1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/g;->q0()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->r:Ljava/util/List;

    .line 107
    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catchall_1
    move-exception p1

    .line 118
    goto :goto_6

    .line 119
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_7

    .line 126
    .line 127
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_7

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 137
    .line 138
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    move v3, v1

    .line 145
    move v1, p2

    .line 146
    move p2, v3

    .line 147
    goto :goto_4

    .line 148
    :cond_7
    move p2, v1

    .line 149
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->y()V

    .line 153
    .line 154
    .line 155
    :cond_8
    if-eqz p2, :cond_9

    .line 156
    .line 157
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 158
    .line 159
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/g;->s0(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_5
    return-void

    .line 163
    :goto_6
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    throw p1
.end method

.method public t(Lorg/eclipse/jetty/client/a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, LL1/b;->e()LL1/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, LL1/b;->e()LL1/k;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, LL1/k;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-long v0, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v0, -0x1

    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1, v0, v1}, LL1/b;->a(J)V

    .line 20
    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v0, 0x1

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/eclipse/jetty/client/g;->q0()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->r:Ljava/util/List;

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_4

    .line 64
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    move v0, v1

    .line 82
    :goto_2
    move v2, v1

    .line 83
    move v1, v0

    .line 84
    move v0, v2

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 87
    .line 88
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    move v0, v1

    .line 96
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/eclipse/jetty/client/HttpDestination;->y()V

    .line 100
    .line 101
    .line 102
    :cond_5
    if-eqz v1, :cond_6

    .line 103
    .line 104
    iget-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/client/g;->s0(Lorg/eclipse/jetty/client/HttpDestination;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    return-void

    .line 110
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "HttpDestination@%x//%s:%d(%d/%d,%d,%d/%d)%n"

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->g:Lorg/eclipse/jetty/client/b;

    .line 13
    .line 14
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/b;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->g:Lorg/eclipse/jetty/client/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/eclipse/jetty/client/b;->b()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->c:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->k:I

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->e:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    iget v1, p0, Lorg/eclipse/jetty/client/HttpDestination;->l:I

    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v0
.end method

.method public u(Lorg/eclipse/jetty/client/a;Lorg/eclipse/jetty/client/j;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/eclipse/jetty/client/a;->q(Lorg/eclipse/jetty/client/j;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/eclipse/jetty/client/j;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->b:Ljava/util/List;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->t(Lorg/eclipse/jetty/client/a;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public v(Lorg/eclipse/jetty/client/j;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/j;->setStatus(I)Z

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/g;->k0()Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    if-lez v1, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v1, -0x1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-class v4, Lorg/eclipse/jetty/client/HttpDestination;

    .line 32
    .line 33
    const-class v5, Lorg/eclipse/jetty/client/j;

    .line 34
    .line 35
    filled-new-array {v4, v5}, [Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lorg/eclipse/jetty/client/h;

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    new-instance v0, Lorg/eclipse/jetty/client/HttpDestination$1;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "Unable to instantiate registered listener for destination: "

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/jetty/client/HttpDestination$1;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 84
    .line 85
    invoke-virtual {v0}, Lorg/eclipse/jetty/client/g;->o0()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    new-instance v0, LJ1/c;

    .line 92
    .line 93
    invoke-direct {v0, p0, p1}, LJ1/c;-><init>(Lorg/eclipse/jetty/client/HttpDestination;Lorg/eclipse/jetty/client/j;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/client/j;->setEventListener(Lorg/eclipse/jetty/client/h;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/client/HttpDestination;->c(Lorg/eclipse/jetty/client/j;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public w(Lorg/eclipse/jetty/client/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->o:Lorg/eclipse/jetty/client/b;

    .line 2
    .line 3
    return-void
.end method

.method public x(LJ1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/client/HttpDestination;->p:LJ1/a;

    .line 2
    .line 3
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->m:I

    .line 7
    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/client/HttpDestination;->f:Lorg/eclipse/jetty/client/g;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/eclipse/jetty/client/g;->m:Lorg/eclipse/jetty/client/g$b;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/client/g$b;->t(Lorg/eclipse/jetty/client/HttpDestination;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 25
    :goto_0
    sget-object v1, Lorg/eclipse/jetty/client/HttpDestination;->s:LR1/c;

    .line 26
    .line 27
    invoke-interface {v1, v0}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/client/HttpDestination;->o(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

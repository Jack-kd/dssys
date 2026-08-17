.class public LP1/e;
.super LP1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP1/e$c;
    }
.end annotation


# static fields
.field public static final Q:LR1/c;

.field public static R:I


# instance fields
.field public final E:Ljava/util/concurrent/ConcurrentMap;

.field public F:Ljava/util/Timer;

.field public G:Z

.field public H:Ljava/util/TimerTask;

.field public I:J

.field public J:J

.field public K:J

.field public L:Ljava/util/TimerTask;

.field public M:Ljava/io/File;

.field public N:Z

.field public volatile O:Z

.field public P:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LP1/g;->l:LR1/c;

    .line 2
    .line 3
    sput-object v0, LP1/e;->Q:LR1/c;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, LP1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, LP1/e;->G:Z

    .line 13
    .line 14
    const-wide/16 v1, 0x7530

    .line 15
    .line 16
    iput-wide v1, p0, LP1/e;->I:J

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    iput-wide v1, p0, LP1/e;->J:J

    .line 21
    .line 22
    iput-wide v1, p0, LP1/e;->K:J

    .line 23
    .line 24
    iput-boolean v0, p0, LP1/e;->N:Z

    .line 25
    .line 26
    iput-boolean v0, p0, LP1/e;->O:Z

    .line 27
    .line 28
    iput-boolean v0, p0, LP1/e;->P:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public P(LP1/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    .line 9
    invoke-virtual {p1}, LP1/a;->o()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast p1, LP1/f;

    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public U(Ljava/lang/String;)LP1/a;
    .locals 5

    .line 1
    iget-boolean v0, p0, LP1/e;->N:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, LP1/e;->O:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, LP1/e;->k0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, LP1/e;->Q:LR1/c;

    .line 15
    .line 16
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, LP1/f;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-boolean v2, p0, LP1/e;->N:Z

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, p1}, LP1/e;->j0(Ljava/lang/String;)LP1/f;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_2
    if-nez v0, :cond_3

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_3
    iget-wide v1, p0, LP1/e;->K:J

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long p1, v1, v3

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0}, LP1/f;->F()V

    .line 53
    .line 54
    .line 55
    :cond_4
    return-object v0
.end method

.method public X()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_2

    .line 19
    .line 20
    add-int/lit8 v2, v1, -0x1

    .line 21
    .line 22
    if-lez v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStopping()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, LP1/e;->M:Ljava/io/File;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, LP1/e;->M:Ljava/io/File;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    move v4, v3

    .line 54
    :goto_1
    if-ge v4, v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    check-cast v5, LP1/f;

    .line 63
    .line 64
    invoke-virtual {v5, v3}, LP1/f;->J(Z)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v5, v3}, LP1/c;->a0(LP1/a;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :goto_2
    if-ge v3, v1, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    check-cast v4, LP1/f;

    .line 84
    .line 85
    invoke-virtual {v4}, LP1/a;->v()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 90
    .line 91
    iget-object v1, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 92
    .line 93
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    return-void
.end method

.method public Z(Ljavax/servlet/http/HttpServletRequest;)LP1/a;
    .locals 1

    .line 1
    new-instance v0, LP1/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, LP1/f;-><init>(LP1/e;Ljavax/servlet/http/HttpServletRequest;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public b0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public doStart()V
    .locals 5

    .line 1
    invoke-super {p0}, LP1/c;->doStart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, LP1/e;->G:Z

    .line 6
    .line 7
    invoke-static {}, Lorg/eclipse/jetty/server/handler/d;->w0()Lorg/eclipse/jetty/server/handler/d$d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "org.eclipse.jetty.server.session.timer"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Timer;

    .line 20
    .line 21
    iput-object v0, p0, LP1/e;->F:Ljava/util/Timer;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, LP1/e;->F:Ljava/util/Timer;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, LP1/e;->G:Z

    .line 29
    .line 30
    new-instance v1, Ljava/util/Timer;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "HashSessionScavenger-"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget v3, LP1/e;->R:I

    .line 43
    .line 44
    add-int/lit8 v4, v3, 0x1

    .line 45
    .line 46
    sput v4, LP1/e;->R:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v1, v2, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, LP1/e;->F:Ljava/util/Timer;

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, LP1/e;->f0()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v0}, LP1/e;->o0(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, LP1/e;->M:Ljava/io/File;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, LP1/e;->M:Ljava/io/File;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-boolean v0, p0, LP1/e;->N:Z

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p0}, LP1/e;->k0()V

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p0}, LP1/e;->e0()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0, v0}, LP1/e;->n0(I)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public doStop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LP1/e;->L:Ljava/util/TimerTask;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, LP1/e;->L:Ljava/util/TimerTask;

    .line 14
    .line 15
    iget-object v1, p0, LP1/e;->H:Ljava/util/TimerTask;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 20
    .line 21
    .line 22
    :cond_1
    iput-object v0, p0, LP1/e;->H:Ljava/util/TimerTask;

    .line 23
    .line 24
    iget-object v1, p0, LP1/e;->F:Ljava/util/Timer;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-boolean v2, p0, LP1/e;->G:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iput-object v0, p0, LP1/e;->F:Ljava/util/Timer;

    .line 36
    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-super {p0}, LP1/c;->doStop()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v0
.end method

.method public e0()I
    .locals 4

    .line 1
    iget-wide v0, p0, LP1/e;->J:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    div-long/2addr v0, v2

    .line 14
    long-to-int v0, v0

    .line 15
    return v0
.end method

.method public f0()I
    .locals 4

    .line 1
    iget-wide v0, p0, LP1/e;->I:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3e8

    .line 4
    .line 5
    div-long/2addr v0, v2

    .line 6
    long-to-int v0, v0

    .line 7
    return v0
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LP1/e;->P:Z

    .line 2
    .line 3
    return v0
.end method

.method public h0(JJLjava/lang/String;)LP1/a;
    .locals 7

    .line 1
    new-instance v0, LP1/f;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-wide v2, p1

    .line 5
    move-wide v4, p3

    .line 6
    move-object v6, p5

    .line 7
    invoke-direct/range {v0 .. v6}, LP1/f;-><init>(LP1/e;JJLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public i0(Ljava/io/InputStream;LP1/f;)LP1/f;
    .locals 8

    .line 1
    new-instance v1, Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    move-object v2, p0

    .line 28
    :try_start_1
    invoke-virtual/range {v2 .. v7}, LP1/e;->h0(JJLjava/lang/String;)LP1/a;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, LP1/f;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :goto_0
    move-object p1, v0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    move-object v2, p0

    .line 39
    :goto_1
    invoke-virtual {p2, p1}, LP1/a;->B(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lez p1, :cond_2

    .line 47
    .line 48
    new-instance v3, LP1/e$c;

    .line 49
    .line 50
    invoke-direct {v3, p0, v1}, LP1/e$c;-><init>(LP1/e;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_2
    if-ge v0, p1, :cond_1

    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p2, v4, v5}, LP1/a;->y(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    move-object p1, v0

    .line 72
    :try_start_3
    invoke-static {v3}, Lorg/eclipse/jetty/util/i;->a(Ljava/io/InputStream;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    invoke-static {v3}, Lorg/eclipse/jetty/util/i;->a(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-static {v1}, Lorg/eclipse/jetty/util/i;->a(Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    return-object p2

    .line 83
    :catchall_2
    move-exception v0

    .line 84
    move-object v2, p0

    .line 85
    goto :goto_0

    .line 86
    :goto_3
    invoke-static {v1}, Lorg/eclipse/jetty/util/i;->a(Ljava/io/InputStream;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public declared-synchronized j0(Ljava/lang/String;)LP1/f;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, LP1/e;->M:Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/io/FileInputStream;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-virtual {p0, v2, v1}, LP1/e;->i0(Ljava/io/InputStream;LP1/f;)LP1/f;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p0, v3, v4}, LP1/c;->Q(LP1/a;Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, LP1/a;->h()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_3
    invoke-static {v2}, Lorg/eclipse/jetty/util/i;->a(Ljava/io/InputStream;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-object v3

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_3

    .line 42
    :catchall_1
    move-exception p1

    .line 43
    move-object v1, v2

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    .line 46
    goto :goto_1

    .line 47
    :catchall_2
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception v3

    .line 50
    move-object v2, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_0
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-static {v1}, Lorg/eclipse/jetty/util/i;->a(Ljava/io/InputStream;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :goto_1
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-static {v2}, Lorg/eclipse/jetty/util/i;->a(Ljava/io/InputStream;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, LP1/e;->g0()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v4, p0, LP1/e;->M:Ljava/io/File;

    .line 87
    .line 88
    invoke-virtual {v2, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    .line 96
    .line 97
    sget-object v0, LP1/e;->Q:LR1/c;

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "Deleting file for unrestorable session "

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {v0, p1, v3}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    sget-object v0, LP1/e;->Q:LR1/c;

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v4, "Problem restoring session "

    .line 128
    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {v0, p1, v3}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    .line 141
    .line 142
    :goto_2
    monitor-exit p0

    .line 143
    return-object v1

    .line 144
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    throw p1
.end method

.method public k0()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LP1/e;->O:Z

    .line 3
    .line 4
    iget-object v0, p0, LP1/e;->M:Ljava/io/File;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, LP1/e;->M:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, LP1/e;->Q:LR1/c;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "Unable to restore Sessions: Cannot read from Session storage directory "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, LP1/e;->M:Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-interface {v0, v2, v1}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, LP1/e;->M:Ljava/io/File;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    if-eqz v0, :cond_2

    .line 62
    .line 63
    array-length v2, v0

    .line 64
    if-ge v1, v2, :cond_2

    .line 65
    .line 66
    aget-object v2, v0, v1

    .line 67
    .line 68
    invoke-virtual {p0, v2}, LP1/e;->j0(Ljava/lang/String;)LP1/f;

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    return-void
.end method

.method public l0(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, LP1/e;->M:Ljava/io/File;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, LP1/e;->M:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    sget-object p1, LP1/e;->Q:LR1/c;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "Unable to save Sessions: Session persistence storage directory "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, LP1/e;->M:Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " is not writeable"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x0

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-interface {p1, v0, v1}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object p1, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, LP1/f;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, LP1/f;->J(Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    :goto_1
    return-void
.end method

.method public m0()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStopping()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStopped()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :try_start_0
    iget-object v2, p0, LP1/c;->l:Ljava/lang/ClassLoader;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    iget-object v4, p0, LP1/e;->E:Ljava/util/concurrent/ConcurrentMap;

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, LP1/f;

    .line 59
    .line 60
    invoke-virtual {v5}, LP1/a;->s()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    int-to-long v6, v6

    .line 65
    const-wide/16 v8, 0x3e8

    .line 66
    .line 67
    mul-long/2addr v6, v8

    .line 68
    const-wide/16 v8, 0x0

    .line 69
    .line 70
    cmp-long v10, v6, v8

    .line 71
    .line 72
    if-lez v10, :cond_3

    .line 73
    .line 74
    invoke-virtual {v5}, LP1/a;->l()J

    .line 75
    .line 76
    .line 77
    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    add-long/2addr v10, v6

    .line 79
    cmp-long v6, v10, v2

    .line 80
    .line 81
    if-gez v6, :cond_3

    .line 82
    .line 83
    :try_start_1
    invoke-virtual {v5}, LP1/a;->C()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception v5

    .line 88
    :try_start_2
    sget-object v6, LP1/e;->Q:LR1/c;

    .line 89
    .line 90
    const-string v7, "Problem scavenging sessions"

    .line 91
    .line 92
    invoke-interface {v6, v7, v5}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-wide v6, p0, LP1/e;->K:J

    .line 97
    .line 98
    cmp-long v6, v6, v8

    .line 99
    .line 100
    if-lez v6, :cond_2

    .line 101
    .line 102
    invoke-virtual {v5}, LP1/a;->l()J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    iget-wide v8, p0, LP1/e;->K:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    add-long/2addr v6, v8

    .line 109
    cmp-long v6, v6, v2

    .line 110
    .line 111
    if-gez v6, :cond_2

    .line 112
    .line 113
    :try_start_3
    invoke-virtual {v5}, LP1/f;->G()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catch_1
    move-exception v6

    .line 118
    :try_start_4
    sget-object v7, LP1/e;->Q:LR1/c;

    .line 119
    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v9, "Problem idling session "

    .line 126
    .line 127
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, LP1/a;->r()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v7, v5, v6}, LR1/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 150
    .line 151
    .line 152
    throw v2

    .line 153
    :cond_5
    :goto_3
    return-void
.end method

.method public n0(I)V
    .locals 6

    .line 1
    int-to-long v0, p1

    .line 2
    const-wide/16 v2, 0x3e8

    .line 3
    .line 4
    mul-long/2addr v0, v2

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-gez p1, :cond_0

    .line 10
    .line 11
    move-wide v0, v2

    .line 12
    :cond_0
    iput-wide v0, p0, LP1/e;->J:J

    .line 13
    .line 14
    iget-object p1, p0, LP1/e;->F:Ljava/util/Timer;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    iget-object p1, p0, LP1/e;->L:Ljava/util/TimerTask;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    move-object p1, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-wide v0, p0, LP1/e;->J:J

    .line 31
    .line 32
    cmp-long p1, v0, v2

    .line 33
    .line 34
    if-lez p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, LP1/e;->M:Ljava/io/File;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    new-instance v1, LP1/e$a;

    .line 41
    .line 42
    invoke-direct {v1, p0}, LP1/e$a;-><init>(LP1/e;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, LP1/e;->L:Ljava/util/TimerTask;

    .line 46
    .line 47
    iget-object v0, p0, LP1/e;->F:Ljava/util/Timer;

    .line 48
    .line 49
    iget-wide v2, p0, LP1/e;->J:J

    .line 50
    .line 51
    move-wide v4, v2

    .line 52
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 53
    .line 54
    .line 55
    :cond_2
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1

    .line 59
    :cond_3
    return-void
.end method

.method public o0(I)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x3c

    .line 4
    .line 5
    :cond_0
    iget-wide v0, p0, LP1/e;->I:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    const-wide/16 v4, 0x3e8

    .line 9
    .line 10
    mul-long/2addr v2, v4

    .line 11
    const-wide/32 v6, 0xea60

    .line 12
    .line 13
    .line 14
    cmp-long p1, v2, v6

    .line 15
    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    move-wide v2, v6

    .line 19
    :cond_1
    cmp-long p1, v2, v4

    .line 20
    .line 21
    if-gez p1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move-wide v4, v2

    .line 25
    :goto_0
    iput-wide v4, p0, LP1/e;->I:J

    .line 26
    .line 27
    iget-object p1, p0, LP1/e;->F:Ljava/util/Timer;

    .line 28
    .line 29
    if-eqz p1, :cond_5

    .line 30
    .line 31
    cmp-long p1, v4, v0

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, LP1/e;->H:Ljava/util/TimerTask;

    .line 36
    .line 37
    if-nez p1, :cond_5

    .line 38
    .line 39
    :cond_3
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object p1, p0, LP1/e;->H:Ljava/util/TimerTask;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p1, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_4
    :goto_1
    new-instance v1, LP1/e$b;

    .line 52
    .line 53
    invoke-direct {v1, p0}, LP1/e$b;-><init>(LP1/e;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, LP1/e;->H:Ljava/util/TimerTask;

    .line 57
    .line 58
    iget-object v0, p0, LP1/e;->F:Ljava/util/Timer;

    .line 59
    .line 60
    iget-wide v2, p0, LP1/e;->I:J

    .line 61
    .line 62
    move-wide v4, v2

    .line 63
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p1

    .line 70
    :cond_5
    return-void
.end method

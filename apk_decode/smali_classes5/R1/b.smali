.class public abstract LR1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Properties;

.field public static b:Ljava/lang/String;

.field public static c:Z

.field public static final d:Ljava/util/concurrent/ConcurrentMap;

.field public static e:LR1/c;

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LR1/b;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Properties;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LR1/b;->a:Ljava/util/Properties;

    .line 14
    .line 15
    new-instance v0, LR1/b$a;

    .line 16
    .line 17
    invoke-direct {v0}, LR1/b$a;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static a(Ljava/lang/Class;)LR1/c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, LR1/b;->b(Ljava/lang/String;)LR1/c;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static b(Ljava/lang/String;)LR1/c;
    .locals 1

    .line 1
    invoke-static {}, LR1/b;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    if-nez p0, :cond_1

    .line 10
    .line 11
    sget-object p0, LR1/b;->e:LR1/c;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object v0, LR1/b;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, LR1/c;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    sget-object v0, LR1/b;->e:LR1/c;

    .line 25
    .line 26
    invoke-interface {v0, p0}, LR1/c;->j(Ljava/lang/String;)LR1/c;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_2
    return-object v0
.end method

.method public static c()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, LR1/b;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static d()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .line 1
    sget-object v0, LR1/b;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static e()LR1/c;
    .locals 1

    .line 1
    invoke-static {}, LR1/b;->g()Z

    .line 2
    .line 3
    .line 4
    sget-object v0, LR1/b;->e:LR1/c;

    .line 5
    .line 6
    return-object v0
.end method

.method public static f(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-boolean v0, LR1/b;->c:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, LR1/b;->e:LR1/c;

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    new-instance p0, LR1/d;

    .line 15
    .line 16
    invoke-direct {p0}, LR1/d;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object p0, LR1/b;->e:LR1/c;

    .line 20
    .line 21
    const-class v0, LR1/d;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Logging to {} via {}"

    .line 32
    .line 33
    invoke-interface {p0, v1, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public static g()Z
    .locals 5

    .line 1
    sget-object v0, LR1/b;->e:LR1/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-class v0, LR1/b;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-boolean v2, LR1/b;->f:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    sget-object v2, LR1/b;->e:LR1/c;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v1, v3

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return v1

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_5

    .line 25
    :cond_2
    sput-boolean v1, LR1/b;->f:Z

    .line 26
    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    const-class v0, LR1/b;

    .line 29
    .line 30
    sget-object v2, LR1/b;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0, v2}, Lorg/eclipse/jetty/util/j;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, LR1/b;->e:LR1/c;

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, LR1/c;

    .line 58
    .line 59
    sput-object v2, LR1/b;->e:LR1/c;

    .line 60
    .line 61
    const-string v4, "Logging to {} via {}"

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v2, v4, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :goto_2
    invoke-static {v0}, LR1/b;->f(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_3
    sget-object v0, LR1/b;->e:LR1/c;

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    move v1, v3

    .line 84
    :goto_4
    return v1

    .line 85
    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw v1
.end method

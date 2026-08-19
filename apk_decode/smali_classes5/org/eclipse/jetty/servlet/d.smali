.class public Lorg/eclipse/jetty/servlet/d;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "SourceFile"

# interfaces
.implements LN1/q$a;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/d$d;,
        Lorg/eclipse/jetty/servlet/d$c;,
        Lorg/eclipse/jetty/servlet/d$b;
    }
.end annotation


# static fields
.field public static final t:LR1/c;

.field public static final u:Ljava/util/Map;


# instance fields
.field public k:I

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljavax/servlet/ServletRegistration$Dynamic;

.field public transient o:Ljavax/servlet/Servlet;

.field public transient p:Lorg/eclipse/jetty/servlet/d$b;

.field public transient q:J

.field public transient r:Z

.field public transient s:Ljavax/servlet/UnavailableException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/servlet/d;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/servlet/d;->t:LR1/c;

    .line 8
    .line 9
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 10
    .line 11
    sput-object v0, Lorg/eclipse/jetty/servlet/d;->u:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;)V
    .locals 1

    .line 4
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/d;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/d;->p0(Ljavax/servlet/Servlet;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/d;->l:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/d;->r:Z

    return-void
.end method


# virtual methods
.method public a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-class v1, Ljavax/servlet/Servlet;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljavax/servlet/UnavailableException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Servlet "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " is not a javax.servlet.Servlet"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public b0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    check-cast p1, Ljavax/servlet/Servlet;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->S()Lorg/eclipse/jetty/servlet/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/c;->l0(Ljavax/servlet/Servlet;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljavax/servlet/Servlet;->destroy()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/eclipse/jetty/servlet/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    check-cast p1, Lorg/eclipse/jetty/servlet/d;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget v2, p1, Lorg/eclipse/jetty/servlet/d;->k:I

    .line 13
    .line 14
    iget v3, p0, Lorg/eclipse/jetty/servlet/d;->k:I

    .line 15
    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    if-le v2, v3, :cond_2

    .line 20
    .line 21
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object v2, p1, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :cond_3
    if-nez v0, :cond_4

    .line 36
    .line 37
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p1, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_4
    return v0

    .line 47
    :cond_5
    return v1
.end method

.method public d0()Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->n:Ljavax/servlet/ServletRegistration$Dynamic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/eclipse/jetty/servlet/d$c;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/d$c;-><init>(Lorg/eclipse/jetty/servlet/d;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->n:Ljavax/servlet/ServletRegistration$Dynamic;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->n:Ljavax/servlet/ServletRegistration$Dynamic;

    .line 13
    .line 14
    return-object v0
.end method

.method public doStart()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/d;->r:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_2

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->a0()V
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/c;->q0()LM1/b;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lorg/eclipse/jetty/servlet/d$b;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/d$b;-><init>(Lorg/eclipse/jetty/servlet/d;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 27
    .line 28
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-class v1, Ljavax/servlet/SingleThreadModel;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lorg/eclipse/jetty/servlet/d$d;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/servlet/d$d;-><init>(Lorg/eclipse/jetty/servlet/d;Lorg/eclipse/jetty/servlet/d$a;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 47
    .line 48
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->f:Z

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/d;->l:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    return-void

    .line 58
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->i0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 64
    .line 65
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/c;->w0()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    sget-object v1, Lorg/eclipse/jetty/servlet/d;->t:LR1/c;

    .line 72
    .line 73
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    throw v0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/d;->n0(Ljavax/servlet/UnavailableException;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 83
    .line 84
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/c;->w0()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    sget-object v1, Lorg/eclipse/jetty/servlet/d;->t:LR1/c;

    .line 91
    .line 92
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5
    throw v0

    .line 97
    :catch_2
    move-exception v0

    .line 98
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/d;->n0(Ljavax/servlet/UnavailableException;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 102
    .line 103
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/c;->w0()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    sget-object v1, Lorg/eclipse/jetty/servlet/d;->t:LR1/c;

    .line 110
    .line 111
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_6
    throw v0
.end method

.method public doStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/d;->b0(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    throw v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    sget-object v1, Lorg/eclipse/jetty/servlet/d;->t:LR1/c;

    .line 13
    .line 14
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->f:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 23
    .line 24
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 25
    .line 26
    return-void
.end method

.method public declared-synchronized e0()Ljavax/servlet/Servlet;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_2

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-ltz v4, :cond_1

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget-wide v4, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 23
    .line 24
    cmp-long v0, v0, v4

    .line 25
    .line 26
    if-ltz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    iput-wide v2, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 38
    .line 39
    throw v0

    .line 40
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->i0()V

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-object v0

    .line 51
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/d;->compareTo(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public f0(LN1/k;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    iget-wide v1, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v1, v1, v3

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/d;->l:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_4

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->e0()Ljavax/servlet/Servlet;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    if-eqz v0, :cond_5

    .line 34
    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p1}, LN1/k;->y()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/d;->m:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const-string v3, "org.apache.catalina.jsp_file"

    .line 45
    .line 46
    invoke-interface {p2, v3, v2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    move-exception p3

    .line 51
    goto :goto_3

    .line 52
    :catch_0
    move-exception p3

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->U()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1, v2}, LN1/k;->E(Z)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->d0()Ljavax/servlet/ServletRegistration$Dynamic;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lorg/eclipse/jetty/servlet/d$c;

    .line 69
    .line 70
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/d$c;->a()Ljavax/servlet/MultipartConfigElement;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    const-string v3, "org.eclipse.multipartConfig"

    .line 77
    .line 78
    invoke-interface {p2, v3, v2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-interface {v0, p2, p3}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, LN1/k;->E(Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_2
    :try_start_2
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/servlet/d;->n0(Ljavax/servlet/UnavailableException;)V

    .line 89
    .line 90
    .line 91
    iget-object p3, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 92
    .line 93
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_3
    invoke-virtual {p1, v1}, LN1/k;->E(Z)V

    .line 95
    .line 96
    .line 97
    const-string p1, "javax.servlet.error.servlet_name"

    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {p2, p1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    throw p3

    .line 107
    :cond_5
    :try_start_3
    new-instance p1, Ljavax/servlet/UnavailableException;

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string p3, "Could not instantiate "

    .line 115
    .line 116
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object p3, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 120
    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p1, p2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_6
    new-instance p1, Ljavax/servlet/UnavailableException;

    .line 133
    .line 134
    const-string p2, "Servlet not initialized"

    .line 135
    .line 136
    const/4 p3, -0x1

    .line 137
    invoke-direct {p1, p2, p3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :goto_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    throw p1

    .line 143
    :cond_7
    new-instance p1, Ljavax/servlet/UnavailableException;

    .line 144
    .line 145
    const-string p2, "Servlet Not Initialized"

    .line 146
    .line 147
    invoke-direct {p1, p2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1
.end method

.method public g0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->S()Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/c;->r0()Ljavax/servlet/ServletContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/eclipse/jetty/server/handler/d$d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d$d;->c()Lorg/eclipse/jetty/server/handler/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "org.apache.catalina.jsp_classpath"

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d;->u0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/server/handler/d;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d;->t0()Ljava/lang/ClassLoader;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lorg/eclipse/jetty/util/j;->a(Ljava/lang/ClassLoader;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "com.sun.appserv.jsp.classpath"

    .line 37
    .line 38
    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jetty/servlet/Holder;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "classpath"

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/Holder;->R(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "?"

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d;->u0()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v2, Lorg/eclipse/jetty/servlet/d;->t:LR1/c;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "classpath="

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v4, 0x0

    .line 79
    new-array v4, v4, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-interface {v2, v3, v4}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/servlet/Holder;->X(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    return-void
.end method

.method public h0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->d0()Ljavax/servlet/ServletRegistration$Dynamic;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/eclipse/jetty/servlet/d$c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/d$c;->a()Ljavax/servlet/MultipartConfigElement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->S()Lorg/eclipse/jetty/servlet/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/c;->r0()Ljavax/servlet/ServletContext;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/eclipse/jetty/server/handler/d$d;

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d$d;->c()Lorg/eclipse/jetty/server/handler/d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, LN1/k$a;

    .line 28
    .line 29
    invoke-direct {v1}, LN1/k$a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/d;->o0(Ljava/util/EventListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final i0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->o0()Ljavax/servlet/Servlet;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :catch_0
    move-exception v1

    .line 16
    goto :goto_2

    .line 17
    :catch_1
    move-exception v1

    .line 18
    goto :goto_3

    .line 19
    :catch_2
    move-exception v1

    .line 20
    goto :goto_5

    .line 21
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lorg/eclipse/jetty/servlet/d$b;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lorg/eclipse/jetty/servlet/d$b;-><init>(Lorg/eclipse/jetty/servlet/d;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->k0()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->g0()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/d;->h0()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 45
    .line 46
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 47
    .line 48
    invoke-interface {v1, v2}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_1
    throw v0

    .line 53
    :goto_2
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/d;->m0(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 57
    .line 58
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 59
    .line 60
    new-instance v0, Ljavax/servlet/ServletException;

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v0, v2, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :goto_3
    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    move-object v2, v1

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_4
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/d;->m0(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 86
    .line 87
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 88
    .line 89
    throw v1

    .line 90
    :goto_5
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/d;->n0(Ljavax/servlet/UnavailableException;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 94
    .line 95
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->p:Lorg/eclipse/jetty/servlet/d$b;

    .line 96
    .line 97
    throw v1
.end method

.method public j0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/d;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/d;->l0(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method public final l0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const-string v0, "org.apache.jasper.servlet.JspServlet"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final m0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/c;->r0()Ljavax/servlet/ServletContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "unavailable"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/eclipse/jetty/servlet/d;->t:LR1/c;

    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, LR1/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    new-instance v0, Lorg/eclipse/jetty/servlet/d$a;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, -0x1

    .line 27
    invoke-direct {v0, p0, v1, v2, p1}, Lorg/eclipse/jetty/servlet/d$a;-><init>(Lorg/eclipse/jetty/servlet/d;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 31
    .line 32
    const-wide/16 v0, -0x1

    .line 33
    .line 34
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 35
    .line 36
    return-void
.end method

.method public final n0(Ljavax/servlet/UnavailableException;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/c;->r0()Ljavax/servlet/ServletContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "unavailable"

    .line 21
    .line 22
    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 26
    .line 27
    const-wide/16 v0, -0x1

    .line 28
    .line 29
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 30
    .line 31
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-lez p1, :cond_2

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/d;->s:Ljavax/servlet/UnavailableException;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    mul-int/lit16 p1, p1, 0x3e8

    .line 59
    .line 60
    int-to-long v2, p1

    .line 61
    add-long/2addr v0, v2

    .line 62
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    const-wide/16 v2, 0x1388

    .line 70
    .line 71
    add-long/2addr v0, v2

    .line 72
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/d;->q:J

    .line 73
    .line 74
    return-void
.end method

.method public o0()Ljavax/servlet/Servlet;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->S()Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/c;->r0()Ljavax/servlet/ServletContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->Q()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljavax/servlet/Servlet;

    .line 20
    .line 21
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    check-cast v0, Lorg/eclipse/jetty/servlet/b$a;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->Q()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/b$a;->g(Ljava/lang/Class;)Ljavax/servlet/Servlet;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v0

    .line 35
    :goto_0
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    instance-of v2, v1, Ljava/lang/InstantiationException;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    instance-of v2, v1, Ljava/lang/IllegalAccessException;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    check-cast v1, Ljava/lang/IllegalAccessException;

    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    throw v0

    .line 51
    :cond_2
    check-cast v1, Ljava/lang/InstantiationException;

    .line 52
    .line 53
    throw v1
.end method

.method public declared-synchronized p0(Ljavax/servlet/Servlet;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    instance-of v0, p1, Ljavax/servlet/SingleThreadModel;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->f:Z

    .line 10
    .line 11
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/d;->o:Ljavax/servlet/Servlet;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/Holder;->W(Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "-"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;->Y(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1
.end method

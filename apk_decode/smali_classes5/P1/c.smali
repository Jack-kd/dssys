.class public abstract LP1/c;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"

# interfaces
.implements LN1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP1/c$c;
    }
.end annotation


# static fields
.field public static final C:LR1/c;

.field public static final D:Ljavax/servlet/http/HttpSessionContext;


# instance fields
.field public final A:LV1/b;

.field public B:Ljavax/servlet/SessionCookieConfig;

.field public b:Ljava/util/Set;

.field public c:Z

.field public d:I

.field public e:LP1/g;

.field public f:Z

.field public g:LN1/n;

.field public h:Z

.field public i:Z

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;

.field public l:Ljava/lang/ClassLoader;

.field public m:Lorg/eclipse/jetty/server/handler/d$d;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Ljava/util/Set;

.field public y:Z

.field public final z:LV1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LP1/g;->l:LR1/c;

    .line 2
    .line 3
    sput-object v0, LP1/c;->C:LR1/c;

    .line 4
    .line 5
    new-instance v0, LP1/c$a;

    .line 6
    .line 7
    invoke-direct {v0}, LP1/c$a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, LP1/c;->D:Ljavax/servlet/http/HttpSessionContext;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [Ljavax/servlet/SessionTrackingMode;

    .line 8
    .line 9
    sget-object v2, Ljavax/servlet/SessionTrackingMode;->COOKIE:Ljavax/servlet/SessionTrackingMode;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    sget-object v2, Ljavax/servlet/SessionTrackingMode;->URL:Ljavax/servlet/SessionTrackingMode;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    aput-object v2, v1, v4

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, LP1/c;->b:Ljava/util/Set;

    .line 31
    .line 32
    iput-boolean v4, p0, LP1/c;->c:Z

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    iput v0, p0, LP1/c;->d:I

    .line 36
    .line 37
    iput-boolean v3, p0, LP1/c;->f:Z

    .line 38
    .line 39
    iput-boolean v3, p0, LP1/c;->h:Z

    .line 40
    .line 41
    iput-boolean v4, p0, LP1/c;->i:Z

    .line 42
    .line 43
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, LP1/c;->j:Ljava/util/List;

    .line 49
    .line 50
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, LP1/c;->k:Ljava/util/List;

    .line 56
    .line 57
    const-string v1, "JSESSIONID"

    .line 58
    .line 59
    iput-object v1, p0, LP1/c;->n:Ljava/lang/String;

    .line 60
    .line 61
    const-string v1, "jsessionid"

    .line 62
    .line 63
    iput-object v1, p0, LP1/c;->o:Ljava/lang/String;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v2, ";"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, LP1/c;->o:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, "="

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, LP1/c;->p:Ljava/lang/String;

    .line 90
    .line 91
    iput v0, p0, LP1/c;->s:I

    .line 92
    .line 93
    new-instance v0, LV1/a;

    .line 94
    .line 95
    invoke-direct {v0}, LV1/a;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, LP1/c;->z:LV1/a;

    .line 99
    .line 100
    new-instance v0, LV1/b;

    .line 101
    .line 102
    invoke-direct {v0}, LV1/b;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, LP1/c;->A:LV1/b;

    .line 106
    .line 107
    new-instance v0, LP1/c$b;

    .line 108
    .line 109
    invoke-direct {v0, p0}, LP1/c$b;-><init>(LP1/c;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 113
    .line 114
    iget-object v0, p0, LP1/c;->b:Ljava/util/Set;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, LP1/c;->d0(Ljava/util/Set;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LP1/c;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public E(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/f;
    .locals 10

    .line 1
    invoke-virtual {p0}, LP1/c;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-object v0, p0, LP1/c;->r:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p2, v0

    .line 13
    :goto_0
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    :goto_1
    move-object v4, p2

    .line 23
    goto :goto_3

    .line 24
    :cond_2
    :goto_2
    const-string p2, "/"

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :goto_3
    invoke-virtual {p0, p1}, LP1/c;->S(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object p1, p0, LP1/c;->w:Ljava/lang/String;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_5

    .line 36
    .line 37
    move p1, v0

    .line 38
    new-instance v0, Lorg/eclipse/jetty/http/f;

    .line 39
    .line 40
    iget-object v1, p0, LP1/c;->n:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p0, LP1/c;->q:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 45
    .line 46
    invoke-interface {v5}, Ljavax/servlet/SessionCookieConfig;->getMaxAge()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    iget-object v6, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 51
    .line 52
    invoke-interface {v6}, Ljavax/servlet/SessionCookieConfig;->isHttpOnly()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object v7, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 57
    .line 58
    invoke-interface {v7}, Ljavax/servlet/SessionCookieConfig;->isSecure()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, LP1/c;->Y()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    move v7, p1

    .line 74
    goto :goto_5

    .line 75
    :cond_4
    :goto_4
    move v7, p2

    .line 76
    :goto_5
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jetty/http/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_5
    move p1, v0

    .line 81
    new-instance v0, Lorg/eclipse/jetty/http/f;

    .line 82
    .line 83
    iget-object v1, p0, LP1/c;->n:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v3, p0, LP1/c;->q:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v5, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 88
    .line 89
    invoke-interface {v5}, Ljavax/servlet/SessionCookieConfig;->getMaxAge()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    iget-object v6, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 94
    .line 95
    invoke-interface {v6}, Ljavax/servlet/SessionCookieConfig;->isHttpOnly()Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iget-object v7, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 100
    .line 101
    invoke-interface {v7}, Ljavax/servlet/SessionCookieConfig;->isSecure()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0}, LP1/c;->Y()Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_6

    .line 112
    .line 113
    if-eqz p3, :cond_6

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_6
    move v7, p1

    .line 117
    goto :goto_7

    .line 118
    :cond_7
    :goto_6
    move v7, p2

    .line 119
    :goto_7
    iget-object v8, p0, LP1/c;->w:Ljava/lang/String;

    .line 120
    .line 121
    const/4 v9, 0x1

    .line 122
    invoke-direct/range {v0 .. v9}, Lorg/eclipse/jetty/http/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_8
    const/4 p1, 0x0

    .line 127
    return-object p1
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LP1/c;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract P(LP1/a;)V
.end method

.method public Q(LP1/a;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LP1/c;->g:LN1/n;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LP1/c;->g:LN1/n;

    .line 5
    .line 6
    invoke-interface {v1, p1}, LN1/n;->A(Ljavax/servlet/http/HttpSession;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, LP1/c;->P(LP1/a;)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, LP1/c;->z:LV1/a;

    .line 16
    .line 17
    invoke-virtual {p2}, LV1/a;->c()V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, LP1/c;->k:Ljava/util/List;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    new-instance p2, Ljavax/servlet/http/HttpSessionEvent;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, LP1/c;->k:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljavax/servlet/http/HttpSessionListener;

    .line 46
    .line 47
    invoke-interface {v0, p2}, Ljavax/servlet/http/HttpSessionListener;->sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p1
.end method

.method public R(LP1/a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LP1/c;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    new-instance v0, Ljavax/servlet/http/HttpSessionBindingEvent;

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    move-object v1, p4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, p3

    .line 16
    :goto_0
    invoke-direct {v0, p1, p2, v1}, Ljavax/servlet/http/HttpSessionBindingEvent;-><init>(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, LP1/c;->j:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Ljavax/servlet/http/HttpSessionAttributeListener;

    .line 36
    .line 37
    if-nez p3, :cond_1

    .line 38
    .line 39
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeAdded(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    if-nez p4, :cond_2

    .line 44
    .line 45
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeReplaced(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method

.method public S(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p1, LP1/c$c;

    .line 2
    .line 3
    invoke-interface {p1}, LP1/c$c;->a()LP1/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, LP1/a;->t()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public T()I
    .locals 1

    .line 1
    iget v0, p0, LP1/c;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract U(Ljava/lang/String;)LP1/a;
.end method

.method public V()LP1/g;
    .locals 1

    .line 1
    iget-object v0, p0, LP1/c;->e:LP1/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public W()LN1/n;
    .locals 1

    .line 1
    iget-object v0, p0, LP1/c;->g:LN1/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract X()V
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LP1/c;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract Z(Ljavax/servlet/http/HttpServletRequest;)LP1/a;
.end method

.method public a0(LP1/a;Z)V
    .locals 5

    .line 1
    invoke-virtual {p1}, LP1/a;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, LP1/c;->b0(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, LP1/c;->z:LV1/a;

    .line 12
    .line 13
    invoke-virtual {v0}, LV1/a;->b()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, LP1/c;->A:LV1/b;

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {p1}, LP1/a;->q()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    sub-long/2addr v1, v3

    .line 27
    long-to-double v1, v1

    .line 28
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    div-double/2addr v1, v3

    .line 34
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {v0, v1, v2}, LV1/b;->a(J)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, LP1/c;->g:LN1/n;

    .line 42
    .line 43
    invoke-interface {v0, p1}, LN1/n;->G(Ljavax/servlet/http/HttpSession;)V

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, LP1/c;->g:LN1/n;

    .line 49
    .line 50
    invoke-virtual {p1}, LP1/a;->o()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, LN1/n;->p(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    if-eqz p2, :cond_1

    .line 58
    .line 59
    iget-object p2, p0, LP1/c;->k:Ljava/util/List;

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    new-instance p2, Ljavax/servlet/http/HttpSessionEvent;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Ljavax/servlet/http/HttpSessionEvent;-><init>(Ljavax/servlet/http/HttpSession;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, LP1/c;->k:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljavax/servlet/http/HttpSessionListener;

    .line 85
    .line 86
    invoke-interface {v0, p2}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method

.method public abstract b0(Ljava/lang/String;)Z
.end method

.method public c0(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "none"

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, p1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move-object v2, v0

    .line 16
    :goto_1
    iput-object v2, p0, LP1/c;->o:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, ";"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, LP1/c;->o:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "="

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_3
    :goto_2
    iput-object v0, p0, LP1/c;->p:Ljava/lang/String;

    .line 52
    .line 53
    return-void
.end method

.method public d(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;
    .locals 2

    .line 1
    invoke-virtual {p0}, LP1/c;->W()LN1/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, LN1/n;->J(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, LP1/c;->U(Ljava/lang/String;)LP1/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, LP1/a;->t()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {v0, p1}, LP1/a;->z(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method

.method public d0(Ljava/util/Set;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, LP1/c;->x:Ljava/util/Set;

    .line 7
    .line 8
    sget-object p1, Ljavax/servlet/SessionTrackingMode;->COOKIE:Ljavax/servlet/SessionTrackingMode;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, LP1/c;->c:Z

    .line 15
    .line 16
    iget-object p1, p0, LP1/c;->x:Ljava/util/Set;

    .line 17
    .line 18
    sget-object v0, Ljavax/servlet/SessionTrackingMode;->URL:Ljavax/servlet/SessionTrackingMode;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, LP1/c;->y:Z

    .line 25
    .line 26
    return-void
.end method

.method public doStart()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/d;->w0()Lorg/eclipse/jetty/server/handler/d$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, LP1/c;->l:Ljava/lang/ClassLoader;

    .line 16
    .line 17
    iget-object v0, p0, LP1/c;->g:LN1/n;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, LP1/c;->V()LP1/g;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {v0}, LN1/m;->k0()LN1/n;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, LP1/c;->g:LN1/n;

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    new-instance v1, LP1/d;

    .line 39
    .line 40
    invoke-direct {v1}, LP1/d;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, LP1/c;->g:LN1/n;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, LN1/m;->v0(LN1/n;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1

    .line 55
    :cond_1
    :goto_2
    iget-object v0, p0, LP1/c;->g:LN1/n;

    .line 56
    .line 57
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/f;->isStarted()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, LP1/c;->g:LN1/n;

    .line 64
    .line 65
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/f;->start()V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 69
    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    const-string v1, "org.eclipse.jetty.servlet.SessionCookie"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/d$d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    iput-object v0, p0, LP1/c;->n:Ljava/lang/String;

    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 83
    .line 84
    const-string v1, "org.eclipse.jetty.servlet.SessionIdPathParameterName"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/d$d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0, v0}, LP1/c;->c0(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget v0, p0, LP1/c;->s:I

    .line 96
    .line 97
    const/4 v1, -0x1

    .line 98
    if-ne v0, v1, :cond_5

    .line 99
    .line 100
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 101
    .line 102
    const-string v1, "org.eclipse.jetty.servlet.MaxAge"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/d$d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, LP1/c;->s:I

    .line 119
    .line 120
    :cond_5
    iget-object v0, p0, LP1/c;->q:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v0, :cond_6

    .line 123
    .line 124
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 125
    .line 126
    const-string v1, "org.eclipse.jetty.servlet.SessionDomain"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/d$d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, p0, LP1/c;->q:Ljava/lang/String;

    .line 133
    .line 134
    :cond_6
    iget-object v0, p0, LP1/c;->r:Ljava/lang/String;

    .line 135
    .line 136
    if-nez v0, :cond_7

    .line 137
    .line 138
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 139
    .line 140
    const-string v1, "org.eclipse.jetty.servlet.SessionPath"

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/d$d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, LP1/c;->r:Ljava/lang/String;

    .line 147
    .line 148
    :cond_7
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 149
    .line 150
    const-string v1, "org.eclipse.jetty.servlet.CheckingRemoteSessionIdEncoding"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/d$d;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput-boolean v0, p0, LP1/c;->v:Z

    .line 163
    .line 164
    :cond_8
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/a;->doStart()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public doStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/a;->doStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LP1/c;->X()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, LP1/c;->l:Ljava/lang/ClassLoader;

    .line 9
    .line 10
    return-void
.end method

.method public e(Ljavax/servlet/http/HttpSession;)V
    .locals 0

    .line 1
    check-cast p1, LP1/c$c;

    .line 2
    .line 3
    invoke-interface {p1}, LP1/c$c;->a()LP1/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, LP1/a;->f()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public g(LP1/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, LP1/c;->e:LP1/g;

    .line 2
    .line 3
    return-void
.end method

.method public getContext()Lorg/eclipse/jetty/server/handler/d$d;
    .locals 1

    .line 1
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljavax/servlet/SessionCookieConfig;
    .locals 1

    .line 1
    iget-object v0, p0, LP1/c;->B:Ljavax/servlet/SessionCookieConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(Ljavax/servlet/http/HttpSession;)Z
    .locals 0

    .line 1
    check-cast p1, LP1/c$c;

    .line 2
    .line 3
    invoke-interface {p1}, LP1/c$c;->a()LP1/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, LP1/a;->x()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public w(Ljavax/servlet/http/HttpSession;Z)Lorg/eclipse/jetty/http/f;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, LP1/c$c;

    .line 7
    .line 8
    invoke-interface {v2}, LP1/c$c;->a()LP1/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0, v1}, LP1/a;->b(J)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, LP1/c;->C()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, LP1/a;->w()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, LP1/c;->n()Ljavax/servlet/SessionCookieConfig;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Ljavax/servlet/SessionCookieConfig;->getMaxAge()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-lez v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, LP1/c;->T()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-lez v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v2}, LP1/a;->p()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    sub-long/2addr v0, v3

    .line 51
    const-wide/16 v3, 0x3e8

    .line 52
    .line 53
    div-long/2addr v0, v3

    .line 54
    invoke-virtual {p0}, LP1/c;->T()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    int-to-long v3, v3

    .line 59
    cmp-long v0, v0, v3

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, LP1/c;->m:Lorg/eclipse/jetty/server/handler/d$d;

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    const-string v0, "/"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d$d;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, LP1/c;->E(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Lorg/eclipse/jetty/http/f;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v2}, LP1/a;->g()V

    .line 79
    .line 80
    .line 81
    const/4 p2, 0x0

    .line 82
    invoke-virtual {v2, p2}, LP1/a;->z(Z)V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_2
    const/4 p1, 0x0

    .line 87
    return-object p1
.end method

.method public x(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LP1/c;->Z(Ljavax/servlet/http/HttpServletRequest;)LP1/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p0, LP1/c;->d:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, LP1/a;->A(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, LP1/c;->Q(LP1/a;Z)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

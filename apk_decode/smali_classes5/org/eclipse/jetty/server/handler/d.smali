.class public abstract Lorg/eclipse/jetty/server/handler/d;
.super Lorg/eclipse/jetty/server/handler/i;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/b;
.implements LN1/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/handler/d$b;,
        Lorg/eclipse/jetty/server/handler/d$a;,
        Lorg/eclipse/jetty/server/handler/d$c;,
        Lorg/eclipse/jetty/server/handler/d$d;
    }
.end annotation


# static fields
.field public static final N:LR1/c;

.field public static final O:Ljava/lang/ThreadLocal;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Ljava/lang/Object;

.field public D:Ljava/lang/Object;

.field public E:Ljava/lang/Object;

.field public F:Ljava/lang/Object;

.field public G:Ljava/lang/Object;

.field public H:Ljava/util/Map;

.field public I:[Ljava/lang/String;

.field public final J:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public K:Z

.field public L:Z

.field public volatile M:I

.field public k:Lorg/eclipse/jetty/server/handler/d$d;

.field public final l:Lorg/eclipse/jetty/util/c;

.field public final m:Lorg/eclipse/jetty/util/c;

.field public final n:Ljava/util/Map;

.field public o:Ljava/lang/ClassLoader;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:LS1/e;

.field public s:Lorg/eclipse/jetty/http/q;

.field public t:[Ljava/lang/String;

.field public u:Ljava/util/Set;

.field public v:[Ljava/util/EventListener;

.field public w:LR1/c;

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/server/handler/d;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/server/handler/d;->N:LR1/c;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/handler/d$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/i;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "/"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "org.eclipse.jetty.server.Request.maxFormKeys"

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lorg/eclipse/jetty/server/handler/d;->y:I

    .line 20
    .line 21
    const-string v0, "org.eclipse.jetty.server.Request.maxFormContentSize"

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lorg/eclipse/jetty/server/handler/d;->z:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/d;->A:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/d;->B:Z

    .line 37
    .line 38
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/d;->K:Z

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lorg/eclipse/jetty/server/handler/d;->L:Z

    .line 49
    .line 50
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 51
    .line 52
    new-instance p1, Lorg/eclipse/jetty/util/c;

    .line 53
    .line 54
    invoke-direct {p1}, Lorg/eclipse/jetty/util/c;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->l:Lorg/eclipse/jetty/util/c;

    .line 58
    .line 59
    new-instance p1, Lorg/eclipse/jetty/util/c;

    .line 60
    .line 61
    invoke-direct {p1}, Lorg/eclipse/jetty/util/c;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->m:Lorg/eclipse/jetty/util/c;

    .line 65
    .line 66
    new-instance p1, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->n:Ljava/util/Map;

    .line 72
    .line 73
    new-instance p1, Lorg/eclipse/jetty/server/handler/d$b;

    .line 74
    .line 75
    invoke-direct {p1}, Lorg/eclipse/jetty/server/handler/d$b;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/d;->n0(Lorg/eclipse/jetty/server/handler/d$a;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static synthetic k0(Lorg/eclipse/jetty/server/handler/d;)Lorg/eclipse/jetty/util/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/d;->m:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l0(Lorg/eclipse/jetty/server/handler/d;)Lorg/eclipse/jetty/util/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/d;->l:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m0(Lorg/eclipse/jetty/server/handler/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static w0()Lorg/eclipse/jetty/server/handler/d$d;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/eclipse/jetty/server/handler/d$d;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public A0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->n:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public B0()Lorg/eclipse/jetty/server/handler/d$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public C0()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->t:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public D0(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->I:[Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    :goto_0
    const-string v1, "//"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Lorg/eclipse/jetty/util/o;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v0

    .line 23
    :goto_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->I:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v3, v2

    .line 28
    if-ge v1, v3, :cond_2

    .line 29
    .line 30
    add-int/lit8 v0, v1, 0x1

    .line 31
    .line 32
    aget-object v1, v2, v1

    .line 33
    .line 34
    invoke-static {p1, v1}, Lorg/eclipse/jetty/util/m;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    move v4, v1

    .line 39
    move v1, v0

    .line 40
    move v0, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_2
    return v0
.end method

.method public E0(Ljava/net/URL;)LS1/e;
    .locals 0

    .line 1
    invoke-static {p1}, LS1/e;->g(Ljava/net/URL;)LS1/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final F0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const-string v0, "."

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    return-object p1
.end method

.method public G0(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    const-string v0, "/"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "ends with /"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/component/a;->isStarting()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-class v0, Lorg/eclipse/jetty/server/handler/e;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/server/handler/b;->F(Ljava/lang/Class;)[LN1/h;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    array-length v0, p1

    .line 68
    if-gtz v0, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    aget-object p1, p1, v0

    .line 73
    .line 74
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    throw p1

    .line 79
    :cond_4
    :goto_1
    return-void
.end method

.method public H0([Ljava/util/EventListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->D:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->v:[Ljava/util/EventListener;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_4

    .line 14
    .line 15
    array-length v1, p1

    .line 16
    if-ge v0, v1, :cond_4

    .line 17
    .line 18
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->v:[Ljava/util/EventListener;

    .line 19
    .line 20
    aget-object v1, v1, v0

    .line 21
    .line 22
    instance-of v2, v1, Ljavax/servlet/ServletContextListener;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_0
    instance-of v2, v1, Ljavax/servlet/ServletContextAttributeListener;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->D:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->D:Ljava/lang/Object;

    .line 45
    .line 46
    :cond_1
    instance-of v2, v1, Ljavax/servlet/ServletRequestListener;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 57
    .line 58
    :cond_2
    instance-of v2, v1, Ljavax/servlet/ServletRequestAttributeListener;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 69
    .line 70
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    return-void
.end method

.method public I0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->H:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/a;->c()LN1/m;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, LN1/m;->h0()Lorg/eclipse/jetty/util/component/c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v6, 0x1

    .line 16
    move-object v2, p0

    .line 17
    move-object v5, p1

    .line 18
    move-object v4, p2

    .line 19
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public J0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->n:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "org.eclipse.jetty.server.context.ManagedAttributes"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v2, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->H:Ljava/util/Map;

    .line 20
    .line 21
    const-string v2, ","

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    array-length v2, v0

    .line 28
    move v3, v1

    .line 29
    :goto_0
    if-ge v3, v2, :cond_0

    .line 30
    .line 31
    aget-object v4, v0, v3

    .line 32
    .line 33
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->H:Ljava/util/Map;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/d$d;->b()Ljava/util/Enumeration;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/handler/d$d;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/server/handler/d;->r0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/i;->doStart()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    new-instance v0, Ljavax/servlet/ServletContextEvent;

    .line 78
    .line 79
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 80
    .line 81
    invoke-direct {v0, v2}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-ge v1, v2, :cond_2

    .line 91
    .line 92
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljavax/servlet/ServletContextListener;

    .line 99
    .line 100
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/jetty/server/handler/d;->p0(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    return-void
.end method

.method public a(LN1/m;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/h;->a(LN1/m;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public doStart()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jetty/server/handler/d;->M:I

    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->x0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->v0()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->x0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-static {v0}, LR1/b;->b(Ljava/lang/String;)LR1/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->w:LR1/c;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v3

    .line 49
    goto :goto_3

    .line 50
    :catchall_1
    move-exception v3

    .line 51
    move-object v2, v0

    .line 52
    goto :goto_3

    .line 53
    :catchall_2
    move-exception v3

    .line 54
    move-object v1, v0

    .line 55
    move-object v2, v1

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    move-object v1, v0

    .line 58
    move-object v2, v1

    .line 59
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/d;->s:Lorg/eclipse/jetty/http/q;

    .line 60
    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    new-instance v3, Lorg/eclipse/jetty/http/q;

    .line 64
    .line 65
    invoke-direct {v3}, Lorg/eclipse/jetty/http/q;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Lorg/eclipse/jetty/server/handler/d;->s:Lorg/eclipse/jetty/http/q;

    .line 69
    .line 70
    :cond_2
    sget-object v3, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lorg/eclipse/jetty/server/handler/d$d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->J0()V

    .line 84
    .line 85
    .line 86
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 87
    :try_start_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/d;->K:Z

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const/4 v0, 0x2

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/d;->L:Z

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const/4 v0, 0x3

    .line 100
    :goto_2
    iput v0, p0, Lorg/eclipse/jetty/server/handler/d;->M:I

    .line 101
    .line 102
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 107
    .line 108
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    return-void

    .line 114
    :catchall_3
    move-exception v0

    .line 115
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 116
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 117
    :catchall_4
    move-exception v3

    .line 118
    move-object v0, v4

    .line 119
    :goto_3
    sget-object v4, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 120
    .line 121
    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 125
    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 129
    .line 130
    .line 131
    :cond_6
    throw v3

    .line 132
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v1, "Null contextPath"

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method

.method public doStop()V
    .locals 9

    .line 1
    const-string v0, "stopped {}"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/eclipse/jetty/server/handler/d;->M:I

    .line 5
    .line 6
    sget-object v1, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lorg/eclipse/jetty/server/handler/d$d;

    .line 13
    .line 14
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 29
    .line 30
    .line 31
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :catchall_1
    move-exception v4

    .line 42
    move-object v8, v4

    .line 43
    move-object v4, v1

    .line 44
    move-object v1, v8

    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :catchall_2
    move-exception v3

    .line 48
    move-object v4, v1

    .line 49
    move-object v1, v3

    .line 50
    move-object v3, v4

    .line 51
    goto :goto_3

    .line 52
    :cond_0
    move-object v3, v1

    .line 53
    move-object v4, v3

    .line 54
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/h;->doStop()V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 58
    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    new-instance v5, Ljavax/servlet/ServletContextEvent;

    .line 62
    .line 63
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 66
    .line 67
    .line 68
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v6}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    :goto_1
    add-int/lit8 v7, v6, -0x1

    .line 75
    .line 76
    if-lez v6, :cond_1

    .line 77
    .line 78
    iget-object v6, p0, Lorg/eclipse/jetty/server/handler/d;->C:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v6, v7}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Ljavax/servlet/ServletContextListener;

    .line 85
    .line 86
    invoke-interface {v6, v5}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    .line 87
    .line 88
    .line 89
    move v6, v7

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->G:Ljava/lang/Object;

    .line 92
    .line 93
    const-class v6, Ljava/util/EventListener;

    .line 94
    .line 95
    invoke-static {v5, v6}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    check-cast v5, [Ljava/util/EventListener;

    .line 100
    .line 101
    check-cast v5, [Ljava/util/EventListener;

    .line 102
    .line 103
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/server/handler/d;->H0([Ljava/util/EventListener;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->G:Ljava/lang/Object;

    .line 107
    .line 108
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 109
    .line 110
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/handler/d$d;->b()Ljava/util/Enumeration;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p0, v6, v1}, Lorg/eclipse/jetty/server/handler/d;->r0(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_2
    sget-object v1, Lorg/eclipse/jetty/server/handler/d;->N:LR1/c;

    .line 131
    .line 132
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-interface {v1, v0, v5}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object v0, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 145
    .line 146
    if-eqz v0, :cond_3

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 149
    .line 150
    .line 151
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->m:Lorg/eclipse/jetty/util/c;

    .line 152
    .line 153
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/c;->k()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_3
    sget-object v5, Lorg/eclipse/jetty/server/handler/d;->N:LR1/c;

    .line 158
    .line 159
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-interface {v5, v0, v6}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 172
    .line 173
    if-eqz v0, :cond_4

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 176
    .line 177
    .line 178
    :cond_4
    throw v1
.end method

.method public f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, LN1/k;->f()Ljavax/servlet/DispatcherType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, LN1/k;->f0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    move v4, v3

    .line 21
    :goto_0
    if-ge v4, v2, :cond_0

    .line 22
    .line 23
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v5, v4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/util/EventListener;

    .line 30
    .line 31
    invoke-virtual {p2, v5}, LN1/k;->a(Ljava/util/EventListener;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto/16 :goto_9

    .line 39
    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-static {v2}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    new-instance v4, Ljavax/servlet/ServletRequestEvent;

    .line 52
    .line 53
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 54
    .line 55
    invoke-direct {v4, v5, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    if-ge v3, v2, :cond_1

    .line 59
    .line 60
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {v5, v3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljavax/servlet/ServletRequestListener;

    .line 67
    .line 68
    invoke-interface {v5, v4}, Ljavax/servlet/ServletRequestListener;->requestInitialized(Ljavax/servlet/ServletRequestEvent;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    sget-object v2, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/d;->D0(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    new-instance p1, Lorg/eclipse/jetty/http/HttpException;

    .line 90
    .line 91
    const/16 v0, 0x194

    .line 92
    .line 93
    invoke-direct {p1, v0}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/i;->h0()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->i0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;

    .line 108
    .line 109
    if-eqz v0, :cond_5

    .line 110
    .line 111
    iget-object v2, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 112
    .line 113
    if-ne v0, v2, :cond_5

    .line 114
    .line 115
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/h;->g:LN1/h;

    .line 120
    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    invoke-interface {v0, p1, p2, p3, p4}, LN1/h;->l(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_6
    :goto_3
    if-eqz v1, :cond_9

    .line 127
    .line 128
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 129
    .line 130
    if-eqz p1, :cond_7

    .line 131
    .line 132
    new-instance p1, Ljavax/servlet/ServletRequestEvent;

    .line 133
    .line 134
    iget-object p4, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 135
    .line 136
    invoke-direct {p1, p4, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 137
    .line 138
    .line 139
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    :goto_4
    add-int/lit8 p4, p3, -0x1

    .line 146
    .line 147
    if-lez p3, :cond_7

    .line 148
    .line 149
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 150
    .line 151
    invoke-static {p3, p4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    check-cast p3, Ljavax/servlet/ServletRequestListener;

    .line 156
    .line 157
    invoke-interface {p3, p1}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    .line 158
    .line 159
    .line 160
    move p3, p4

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 163
    .line 164
    if-eqz p1, :cond_9

    .line 165
    .line 166
    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    :goto_5
    add-int/lit8 p3, p1, -0x1

    .line 171
    .line 172
    if-lez p1, :cond_9

    .line 173
    .line 174
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-static {p1, p3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Ljava/util/EventListener;

    .line 181
    .line 182
    invoke-virtual {p2, p1}, LN1/k;->D(Ljava/util/EventListener;)V

    .line 183
    .line 184
    .line 185
    move p1, p3

    .line 186
    goto :goto_5

    .line 187
    :goto_6
    :try_start_1
    sget-object v0, Lorg/eclipse/jetty/server/handler/d;->N:LR1/c;

    .line 188
    .line 189
    invoke-interface {v0, p1}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    const/4 v0, 0x1

    .line 193
    invoke-virtual {p2, v0}, LN1/k;->M(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-interface {p4, v0, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .line 206
    .line 207
    if-eqz v1, :cond_9

    .line 208
    .line 209
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 210
    .line 211
    if-eqz p1, :cond_8

    .line 212
    .line 213
    new-instance p1, Ljavax/servlet/ServletRequestEvent;

    .line 214
    .line 215
    iget-object p4, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 216
    .line 217
    invoke-direct {p1, p4, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 218
    .line 219
    .line 220
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 221
    .line 222
    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    :goto_7
    add-int/lit8 p4, p3, -0x1

    .line 227
    .line 228
    if-lez p3, :cond_8

    .line 229
    .line 230
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-static {p3, p4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    check-cast p3, Ljavax/servlet/ServletRequestListener;

    .line 237
    .line 238
    invoke-interface {p3, p1}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    .line 239
    .line 240
    .line 241
    move p3, p4

    .line 242
    goto :goto_7

    .line 243
    :cond_8
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 244
    .line 245
    if-eqz p1, :cond_9

    .line 246
    .line 247
    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    :goto_8
    add-int/lit8 p3, p1, -0x1

    .line 252
    .line 253
    if-lez p1, :cond_9

    .line 254
    .line 255
    iget-object p1, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 256
    .line 257
    invoke-static {p1, p3}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Ljava/util/EventListener;

    .line 262
    .line 263
    invoke-virtual {p2, p1}, LN1/k;->D(Ljava/util/EventListener;)V

    .line 264
    .line 265
    .line 266
    move p1, p3

    .line 267
    goto :goto_8

    .line 268
    :cond_9
    return-void

    .line 269
    :goto_9
    if-eqz v1, :cond_b

    .line 270
    .line 271
    iget-object p4, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 272
    .line 273
    if-eqz p4, :cond_a

    .line 274
    .line 275
    new-instance p4, Ljavax/servlet/ServletRequestEvent;

    .line 276
    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 278
    .line 279
    invoke-direct {p4, v0, p3}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 280
    .line 281
    .line 282
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 283
    .line 284
    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 285
    .line 286
    .line 287
    move-result p3

    .line 288
    :goto_a
    add-int/lit8 v0, p3, -0x1

    .line 289
    .line 290
    if-lez p3, :cond_a

    .line 291
    .line 292
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->E:Ljava/lang/Object;

    .line 293
    .line 294
    invoke-static {p3, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object p3

    .line 298
    check-cast p3, Ljavax/servlet/ServletRequestListener;

    .line 299
    .line 300
    invoke-interface {p3, p4}, Ljavax/servlet/ServletRequestListener;->requestDestroyed(Ljavax/servlet/ServletRequestEvent;)V

    .line 301
    .line 302
    .line 303
    move p3, v0

    .line 304
    goto :goto_a

    .line 305
    :cond_a
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 306
    .line 307
    if-eqz p3, :cond_b

    .line 308
    .line 309
    invoke-static {p3}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 310
    .line 311
    .line 312
    move-result p3

    .line 313
    :goto_b
    add-int/lit8 p4, p3, -0x1

    .line 314
    .line 315
    if-lez p3, :cond_b

    .line 316
    .line 317
    iget-object p3, p0, Lorg/eclipse/jetty/server/handler/d;->F:Ljava/lang/Object;

    .line 318
    .line 319
    invoke-static {p3, p4}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    check-cast p3, Ljava/util/EventListener;

    .line 324
    .line 325
    invoke-virtual {p2, p3}, LN1/k;->D(Ljava/util/EventListener;)V

    .line 326
    .line 327
    .line 328
    move p3, p4

    .line 329
    goto :goto_b

    .line 330
    :cond_b
    throw p1
.end method

.method public g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    sget-object v4, Lorg/eclipse/jetty/server/handler/d;->N:LR1/c;

    .line 10
    .line 11
    invoke-interface {v4}, LR1/c;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, LN1/k;->e()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v2}, LN1/k;->q()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {v2}, LN1/k;->j()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    filled-new-array {v5, v6, v7, v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "scope {}|{}|{} @ {}"

    .line 34
    .line 35
    invoke-interface {v4, v6, v5}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v2}, LN1/k;->f()Ljavax/servlet/DispatcherType;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v2}, LN1/k;->getContext()Lorg/eclipse/jetty/server/handler/d$d;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget-object v7, v1, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    const-string v9, "/"

    .line 50
    .line 51
    if-eq v6, v7, :cond_9

    .line 52
    .line 53
    sget-object v7, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    .line 54
    .line 55
    invoke-virtual {v7, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_3

    .line 60
    .line 61
    sget-object v7, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    .line 62
    .line 63
    invoke-virtual {v7, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_3

    .line 68
    .line 69
    sget-object v7, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    .line 70
    .line 71
    invoke-virtual {v7, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    invoke-virtual {v2}, LN1/k;->b()LN1/d;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v7}, LN1/d;->m()Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move-object/from16 v7, p1

    .line 89
    .line 90
    :cond_2
    :goto_0
    move-object v11, v7

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    :goto_1
    iget-boolean v7, v1, Lorg/eclipse/jetty/server/handler/d;->A:Z

    .line 93
    .line 94
    if-eqz v7, :cond_4

    .line 95
    .line 96
    invoke-static/range {p1 .. p1}, Lorg/eclipse/jetty/util/o;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object/from16 v7, p1

    .line 102
    .line 103
    :goto_2
    invoke-virtual {v1, v7, v2, v3}, Lorg/eclipse/jetty/server/handler/d;->q0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletResponse;)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-nez v11, :cond_5

    .line 108
    .line 109
    goto/16 :goto_a

    .line 110
    .line 111
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    iget-object v12, v1, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    if-le v11, v12, :cond_6

    .line 122
    .line 123
    iget-object v11, v1, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-le v11, v8, :cond_2

    .line 130
    .line 131
    iget-object v11, v1, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    goto :goto_0

    .line 142
    :cond_6
    iget-object v7, v1, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-ne v7, v8, :cond_7

    .line 149
    .line 150
    move-object v7, v9

    .line 151
    goto :goto_0

    .line 152
    :cond_7
    move-object v7, v9

    .line 153
    const/4 v11, 0x0

    .line 154
    :goto_3
    iget-object v12, v1, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 155
    .line 156
    if-eqz v12, :cond_8

    .line 157
    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    iget-object v14, v1, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 167
    .line 168
    invoke-virtual {v12, v14}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_8
    :goto_4
    const/4 v12, 0x0

    .line 173
    const/4 v13, 0x0

    .line 174
    goto :goto_5

    .line 175
    :cond_9
    move-object/from16 v7, p1

    .line 176
    .line 177
    move-object v11, v7

    .line 178
    goto :goto_4

    .line 179
    :goto_5
    :try_start_0
    invoke-virtual {v2}, LN1/k;->e()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 183
    :try_start_1
    invoke-virtual {v2}, LN1/k;->q()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 187
    :try_start_2
    invoke-virtual {v2}, LN1/k;->j()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 191
    :try_start_3
    iget-object v8, v1, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 192
    .line 193
    invoke-virtual {v2, v8}, LN1/k;->J(Lorg/eclipse/jetty/server/handler/d$d;)V

    .line 194
    .line 195
    .line 196
    sget-object v8, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    .line 198
    move-object/from16 p1, v10

    .line 199
    .line 200
    :try_start_4
    iget-object v10, v1, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 201
    .line 202
    invoke-virtual {v8, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object v10, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    .line 206
    .line 207
    invoke-virtual {v10, v5}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-nez v5, :cond_b

    .line 212
    .line 213
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-eqz v5, :cond_b

    .line 218
    .line 219
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 222
    .line 223
    .line 224
    move-result v5

    .line 225
    const/4 v9, 0x1

    .line 226
    if-ne v5, v9, :cond_a

    .line 227
    .line 228
    const-string v5, ""

    .line 229
    .line 230
    invoke-virtual {v2, v5}, LN1/k;->K(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_6
    const/4 v5, 0x0

    .line 234
    goto :goto_8

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    move-object/from16 v3, p1

    .line 237
    .line 238
    :goto_7
    move-object v10, v14

    .line 239
    goto/16 :goto_b

    .line 240
    .line 241
    :cond_a
    iget-object v5, v1, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v2, v5}, LN1/k;->K(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_6

    .line 247
    :goto_8
    invoke-virtual {v2, v5}, LN1/k;->Z(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v11}, LN1/k;->O(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_b
    invoke-interface {v4}, LR1/c;->f()Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_c

    .line 258
    .line 259
    const-string v5, "context={}|{}|{} @ {}"

    .line 260
    .line 261
    invoke-virtual {v2}, LN1/k;->e()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-virtual {v2}, LN1/k;->q()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    invoke-virtual {v2}, LN1/k;->j()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    filled-new-array {v9, v10, v11, v1}, [Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    invoke-interface {v4, v5, v9}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_c
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/i;->h0()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_d

    .line 285
    .line 286
    invoke-virtual {v1, v7, v2, v0, v3}, Lorg/eclipse/jetty/server/handler/i;->j0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 287
    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_d
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/i;->i:Lorg/eclipse/jetty/server/handler/i;

    .line 291
    .line 292
    if-eqz v4, :cond_e

    .line 293
    .line 294
    invoke-virtual {v4, v7, v2, v0, v3}, Lorg/eclipse/jetty/server/handler/i;->g0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_e
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/i;->h:Lorg/eclipse/jetty/server/handler/i;

    .line 299
    .line 300
    if-eqz v4, :cond_f

    .line 301
    .line 302
    invoke-virtual {v4, v7, v2, v0, v3}, Lorg/eclipse/jetty/server/handler/i;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 303
    .line 304
    .line 305
    goto :goto_9

    .line 306
    :cond_f
    invoke-virtual {v1, v7, v2, v0, v3}, Lorg/eclipse/jetty/server/handler/d;->f0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    .line 308
    .line 309
    :goto_9
    iget-object v0, v1, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 310
    .line 311
    if-eq v6, v0, :cond_11

    .line 312
    .line 313
    iget-object v0, v1, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 314
    .line 315
    if-eqz v0, :cond_10

    .line 316
    .line 317
    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 318
    .line 319
    .line 320
    :cond_10
    invoke-virtual {v2, v6}, LN1/k;->J(Lorg/eclipse/jetty/server/handler/d$d;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v8, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v14}, LN1/k;->K(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v15}, LN1/k;->Z(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    move-object/from16 v3, p1

    .line 333
    .line 334
    invoke-virtual {v2, v3}, LN1/k;->O(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_11
    :goto_a
    return-void

    .line 338
    :catchall_1
    move-exception v0

    .line 339
    move-object v3, v10

    .line 340
    goto :goto_7

    .line 341
    :catchall_2
    move-exception v0

    .line 342
    const/4 v5, 0x0

    .line 343
    move-object v3, v5

    .line 344
    goto :goto_7

    .line 345
    :catchall_3
    move-exception v0

    .line 346
    const/4 v5, 0x0

    .line 347
    move-object v3, v5

    .line 348
    move-object v15, v3

    .line 349
    goto :goto_7

    .line 350
    :catchall_4
    move-exception v0

    .line 351
    const/4 v5, 0x0

    .line 352
    move-object v3, v5

    .line 353
    move-object v10, v3

    .line 354
    move-object v15, v10

    .line 355
    :goto_b
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/d;->k:Lorg/eclipse/jetty/server/handler/d$d;

    .line 356
    .line 357
    if-eq v6, v4, :cond_13

    .line 358
    .line 359
    iget-object v4, v1, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 360
    .line 361
    if-eqz v4, :cond_12

    .line 362
    .line 363
    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 364
    .line 365
    .line 366
    :cond_12
    invoke-virtual {v2, v6}, LN1/k;->J(Lorg/eclipse/jetty/server/handler/d$d;)V

    .line 367
    .line 368
    .line 369
    sget-object v4, Lorg/eclipse/jetty/server/handler/d;->O:Ljava/lang/ThreadLocal;

    .line 370
    .line 371
    invoke-virtual {v4, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v10}, LN1/k;->K(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v15}, LN1/k;->Z(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v3}, LN1/k;->O(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_13
    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->l:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/c;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public j(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/handler/d;->K:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isRunning()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/d;->K:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p1, p0, Lorg/eclipse/jetty/server/handler/d;->L:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x3

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput p1, p0, Lorg/eclipse/jetty/server/handler/d;->M:I

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->l:Lorg/eclipse/jetty/util/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/c;->b()Ljava/util/Enumeration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/server/handler/d;->r0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->l:Lorg/eclipse/jetty/util/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/c;->k()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/a;->V(Ljava/lang/Appendable;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/eclipse/jetty/server/handler/d$c;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->t0()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/server/handler/d$c;-><init>(Ljava/lang/ClassLoader;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/h;->B()[LN1/h;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/b;->X()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lorg/eclipse/jetty/server/handler/d;->n:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/d;->l:Lorg/eclipse/jetty/util/c;

    .line 36
    .line 37
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/c;->a()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, p0, Lorg/eclipse/jetty/server/handler/d;->m:Lorg/eclipse/jetty/util/c;

    .line 42
    .line 43
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/c;->a()Ljava/util/Set;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v6, 0x6

    .line 48
    new-array v6, v6, [Ljava/util/Collection;

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    aput-object v0, v6, v7

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    aput-object v1, v6, v0

    .line 55
    .line 56
    const/4 v0, 0x2

    .line 57
    aput-object v2, v6, v0

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    aput-object v3, v6, v0

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    aput-object v4, v6, v0

    .line 64
    .line 65
    const/4 v0, 0x5

    .line 66
    aput-object v5, v6, v0

    .line 67
    .line 68
    invoke-static {p1, p2, v6}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public n0(Lorg/eclipse/jetty/server/handler/d$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->J:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o0(Ljava/util/EventListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/a;->isStarting()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->G:Ljava/lang/Object;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->z0()[Ljava/util/EventListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v1, Ljava/util/EventListener;

    .line 26
    .line 27
    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, [Ljava/util/EventListener;

    .line 32
    .line 33
    check-cast p1, [Ljava/util/EventListener;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/handler/d;->H0([Ljava/util/EventListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public p0(Ljavax/servlet/ServletContextListener;Ljavax/servlet/ServletContextEvent;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q0(Ljava/lang/String;LN1/k;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, LN1/k;->f()Ljavax/servlet/DispatcherType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/eclipse/jetty/server/handler/d;->M:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_c

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_c

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x1

    .line 15
    if-eq v1, v4, :cond_b

    .line 16
    .line 17
    sget-object v1, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2}, LN1/k;->z()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->t:[Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    if-lez v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p2}, LN1/k;->p()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/handler/d;->F0(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    move v0, v2

    .line 48
    move v1, v0

    .line 49
    :goto_0
    if-nez v0, :cond_3

    .line 50
    .line 51
    iget-object v4, p0, Lorg/eclipse/jetty/server/handler/d;->t:[Ljava/lang/String;

    .line 52
    .line 53
    array-length v6, v4

    .line 54
    if-ge v1, v6, :cond_3

    .line 55
    .line 56
    aget-object v6, v4, v1

    .line 57
    .line 58
    if-nez v6, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string v0, "*."

    .line 62
    .line 63
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    const-string v0, "."

    .line 70
    .line 71
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/lit8 v10, v0, 0x1

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/lit8 v11, v0, -0x2

    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    const/4 v8, 0x2

    .line 85
    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    if-nez v0, :cond_4

    .line 98
    .line 99
    return v2

    .line 100
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->u:Ljava/util/Set;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-lez v0, :cond_6

    .line 109
    .line 110
    invoke-static {}, LN1/c;->n()LN1/c;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, LN1/c;->l()LN1/g;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, LN1/g;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->u:Ljava/util/Set;

    .line 125
    .line 126
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_6

    .line 131
    .line 132
    :cond_5
    return v2

    .line 133
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-le v0, v5, :cond_a

    .line 140
    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_7

    .line 148
    .line 149
    return v2

    .line 150
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-le v0, v1, :cond_8

    .line 161
    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    const/16 v1, 0x2f

    .line 173
    .line 174
    if-eq v0, v1, :cond_8

    .line 175
    .line 176
    return v2

    .line 177
    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/handler/d;->x:Z

    .line 178
    .line 179
    if-nez v0, :cond_a

    .line 180
    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-ne v0, p1, :cond_a

    .line 192
    .line 193
    invoke-virtual {p2, v5}, LN1/k;->M(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, LN1/k;->l()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const-string v0, "/"

    .line 201
    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, LN1/k;->m()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v0, "?"

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, LN1/k;->l()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {p2}, LN1/k;->m()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    return v2

    .line 252
    :cond_a
    return v5

    .line 253
    :cond_b
    invoke-virtual {p2, v5}, LN1/k;->M(Z)V

    .line 254
    .line 255
    .line 256
    const/16 p1, 0x1f7

    .line 257
    .line 258
    invoke-interface {p3, p1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 259
    .line 260
    .line 261
    :cond_c
    return v2
.end method

.method public r0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->H:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/d;->I0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public s0()LS1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->r:LS1/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/d;->r0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->l:Lorg/eclipse/jetty/util/c;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/util/c;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public t0()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->C0()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-lez v4, :cond_0

    .line 32
    .line 33
    const-string v4, "\\."

    .line 34
    .line 35
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    array-length v4, v2

    .line 40
    move v5, v3

    .line 41
    :goto_0
    if-ge v5, v4, :cond_0

    .line 42
    .line 43
    aget-object v6, v2, v5

    .line 44
    .line 45
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const/16 v6, 0x2e

    .line 53
    .line 54
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const/16 v2, 0x7b

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->v0()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v2, 0x2c

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/handler/d;->s0()LS1/e;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    array-length v4, v0

    .line 98
    if-lez v4, :cond_1

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    aget-object v0, v0, v3

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_1
    const/16 v0, 0x7d

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->o:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    instance-of v2, v0, Ljava/net/URLClassLoader;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_4

    .line 11
    :cond_0
    check-cast v0, Ljava/net/URLClassLoader;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    array-length v4, v0

    .line 24
    if-ge v3, v4, :cond_3

    .line 25
    .line 26
    :try_start_0
    aget-object v4, v0, v3

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/server/handler/d;->E0(Ljava/net/URL;)LS1/e;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, LS1/e;->b()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-lez v5, :cond_1

    .line 49
    .line 50
    sget-char v5, Ljava/io/File;->pathSeparatorChar:C

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v4

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :goto_2
    sget-object v5, Lorg/eclipse/jetty/server/handler/d;->N:LR1/c;

    .line 67
    .line 68
    invoke-interface {v5, v4}, LR1/c;->a(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    return-object v1

    .line 81
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0

    .line 86
    :cond_5
    :goto_4
    return-object v1
.end method

.method public v0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y0()Lorg/eclipse/jetty/server/handler/f;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()[Ljava/util/EventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d;->v:[Ljava/util/EventListener;

    .line 2
    .line 3
    return-object v0
.end method

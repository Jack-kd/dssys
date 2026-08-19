.class public abstract Lorg/eclipse/jetty/servlet/Holder;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/Holder$c;,
        Lorg/eclipse/jetty/servlet/Holder$b;,
        Lorg/eclipse/jetty/servlet/Holder$Source;
    }
.end annotation


# static fields
.field public static final j:LR1/c;


# instance fields
.field public final b:Lorg/eclipse/jetty/servlet/Holder$Source;

.field public transient c:Ljava/lang/Class;

.field public final d:Ljava/util/Map;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Lorg/eclipse/jetty/servlet/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/servlet/Holder;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/servlet/Holder;->j:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->d:Ljava/util/Map;

    .line 11
    .line 12
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->b:Lorg/eclipse/jetty/servlet/Holder$Source;

    .line 13
    .line 14
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    aget p1, v0, p1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-eq p1, v0, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    .line 28
    if-eq p1, v1, :cond_0

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->g:Z

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/Holder;->g:Z

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Q()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public R(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->d:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    return-object p1
.end method

.method public S()Lorg/eclipse/jetty/servlet/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public T()Lorg/eclipse/jetty/servlet/Holder$Source;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->b:Lorg/eclipse/jetty/servlet/Holder$Source;

    .line 2
    .line 3
    return-object v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/Holder;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public V(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 5
    .line 6
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "-"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public W(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "-"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public Z(Lorg/eclipse/jetty/servlet/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder;->i:Lorg/eclipse/jetty/servlet/c;

    .line 2
    .line 3
    return-void
.end method

.method public doStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljavax/servlet/UnavailableException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "No class for Servlet or Filter for "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    :try_start_0
    const-class v0, Lorg/eclipse/jetty/servlet/Holder;

    .line 48
    .line 49
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/j;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 56
    .line 57
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder;->j:LR1/c;

    .line 58
    .line 59
    invoke-interface {v0}, LR1/c;->f()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    const-string v1, "Holding {}"

    .line 66
    .line 67
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/Holder;->c:Ljava/lang/Class;

    .line 68
    .line 69
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v0, v1, v2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder;->j:LR1/c;

    .line 79
    .line 80
    invoke-interface {v1, v0}, LR1/c;->e(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Ljavax/servlet/UnavailableException;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v1, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v1

    .line 93
    :cond_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "=="

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/Holder;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, " - "

    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/a;->getState(Lorg/eclipse/jetty/util/component/f;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "\n"

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->d:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x1

    .line 45
    new-array v1, v1, [Ljava/util/Collection;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    aput-object v0, v1, v2

    .line 49
    .line 50
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

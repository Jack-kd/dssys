.class public Lorg/eclipse/jetty/server/handler/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/handler/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/eclipse/jetty/server/handler/d$c;->b:Ljava/lang/ClassLoader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public m(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$c;->b:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "\n"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/eclipse/jetty/server/handler/d$c;->b:Ljava/lang/ClassLoader;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    instance-of v1, v0, Lorg/eclipse/jetty/util/component/e;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    new-instance v1, Lorg/eclipse/jetty/server/handler/d$c;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lorg/eclipse/jetty/server/handler/d$c;-><init>(Ljava/lang/ClassLoader;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/handler/d$c;->b:Ljava/lang/ClassLoader;

    .line 37
    .line 38
    instance-of v2, v1, Ljava/net/URLClassLoader;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    check-cast v1, Ljava/net/URLClassLoader;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lorg/eclipse/jetty/util/n;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/4 v2, 0x2

    .line 59
    new-array v2, v2, [Ljava/util/Collection;

    .line 60
    .line 61
    aput-object v1, v2, v4

    .line 62
    .line 63
    aput-object v0, v2, v3

    .line 64
    .line 65
    invoke-static {p1, p2, v2}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-array v1, v3, [Ljava/util/Collection;

    .line 74
    .line 75
    aput-object v0, v1, v4

    .line 76
    .line 77
    invoke-static {p1, p2, v1}, Lorg/eclipse/jetty/util/component/b;->S(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.class public Lorg/eclipse/jetty/servlet/b$a;
.super Lorg/eclipse/jetty/server/handler/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lorg/eclipse/jetty/servlet/b;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/b$a;->e:Lorg/eclipse/jetty/servlet/b;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/d$d;-><init>(Lorg/eclipse/jetty/server/handler/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljavax/servlet/Servlet;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/b$a;->e:Lorg/eclipse/jetty/servlet/b;

    .line 8
    .line 9
    iget-object v0, v0, Lorg/eclipse/jetty/servlet/b;->P:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/b$a;->e:Lorg/eclipse/jetty/servlet/b;

    .line 21
    .line 22
    iget-object p1, p1, Lorg/eclipse/jetty/servlet/b;->P:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    throw p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_1
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :goto_0
    new-instance v0, Ljavax/servlet/ServletException;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :goto_1
    new-instance v0, Ljavax/servlet/ServletException;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

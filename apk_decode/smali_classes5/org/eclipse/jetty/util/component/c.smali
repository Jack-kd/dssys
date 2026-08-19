.class public Lorg/eclipse/jetty/util/component/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/component/c$b;
    }
.end annotation


# static fields
.field public static final b:LR1/c;


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/util/component/c;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/util/component/c;->b:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lorg/eclipse/jetty/util/component/c;->b:LR1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LR1/c;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Container "

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " + "

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, " as "

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-array v3, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-interface {v0, v1, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v3, Lorg/eclipse/jetty/util/component/c$b;

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    move-object v4, p0

    .line 56
    move-object v5, p1

    .line 57
    move-object v6, p2

    .line 58
    move-object v7, p3

    .line 59
    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jetty/util/component/c$b;-><init>(Lorg/eclipse/jetty/util/component/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/eclipse/jetty/util/component/c$a;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v4, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    .line 64
    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-gtz p1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, v4, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    .line 73
    invoke-static {p1, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    throw p1

    .line 82
    :cond_2
    move-object v4, p0

    .line 83
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lorg/eclipse/jetty/util/component/c;->b:LR1/c;

    .line 2
    .line 3
    invoke-interface {v0}, LR1/c;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Container "

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, " - "

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, " as "

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-array v3, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-interface {v0, v1, v3}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    new-instance v3, Lorg/eclipse/jetty/util/component/c$b;

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    move-object v4, p0

    .line 56
    move-object v5, p1

    .line 57
    move-object v6, p2

    .line 58
    move-object v7, p3

    .line 59
    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jetty/util/component/c$b;-><init>(Lorg/eclipse/jetty/util/component/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lorg/eclipse/jetty/util/component/c$a;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, v4, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    .line 64
    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-gtz p1, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, v4, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    .line 73
    invoke-static {p1, v2}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    throw p1

    .line 82
    :cond_2
    move-object v4, p0

    .line 83
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lorg/eclipse/jetty/util/component/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lt/f;->a(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jetty/util/component/c;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/component/c;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jetty/util/component/c;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/component/c;->d(Ljava/lang/Object;)V

    :cond_0
    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p5, :cond_1

    .line 9
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/component/c;->b(Ljava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/component/c;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/c;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 12
    array-length v2, p3

    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    array-length v3, p3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 14
    array-length v5, p2

    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-lez v5, :cond_1

    .line 15
    aget-object v5, p3, v4

    if-eqz v5, :cond_0

    aget-object v7, p2, v6

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 16
    aput-object v1, p2, v6

    move v3, v0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 17
    aget-object v3, p3, v4

    aput-object v3, v2, v4

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move-object v1, v2

    :cond_4
    if-eqz p2, :cond_6

    .line 18
    array-length p3, p2

    :goto_2
    add-int/lit8 v2, p3, -0x1

    if-lez p3, :cond_6

    .line 19
    aget-object p3, p2, v2

    if-eqz p3, :cond_5

    .line 20
    invoke-virtual {p0, p1, p3, p4}, Lorg/eclipse/jetty/util/component/c;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    .line 21
    aget-object p3, p2, v2

    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/util/component/c;->d(Ljava/lang/Object;)V

    :cond_5
    move p3, v2

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_9

    .line 22
    :goto_3
    array-length p2, v1

    if-ge v0, p2, :cond_9

    .line 23
    aget-object p2, v1, v0

    if-eqz p2, :cond_8

    if-eqz p5, :cond_7

    .line 24
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/util/component/c;->b(Ljava/lang/Object;)V

    .line 25
    :cond_7
    aget-object p2, v1, v0

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jetty/util/component/c;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

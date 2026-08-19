.class public abstract Lorg/eclipse/jetty/io/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffers;


# instance fields
.field public final a:Lorg/eclipse/jetty/io/Buffers$Type;

.field public final b:I

.field public final c:Lorg/eclipse/jetty/io/Buffers$Type;

.field public final d:I

.field public final e:Lorg/eclipse/jetty/io/Buffers$Type;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/eclipse/jetty/io/a;->a:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 5
    .line 6
    iput p2, p0, Lorg/eclipse/jetty/io/a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/eclipse/jetty/io/a;->c:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 9
    .line 10
    iput p4, p0, Lorg/eclipse/jetty/io/a;->d:I

    .line 11
    .line 12
    iput-object p5, p0, Lorg/eclipse/jetty/io/a;->e:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final e(LL1/d;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, LL1/d;->w0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/eclipse/jetty/io/a;->d:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    sget-object v0, Lorg/eclipse/jetty/io/a$a;->a:[I

    .line 11
    .line 12
    iget-object v1, p0, Lorg/eclipse/jetty/io/a;->c:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aget v0, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of p1, p1, Lorg/eclipse/jetty/io/nio/d;

    .line 31
    .line 32
    return p1

    .line 33
    :cond_1
    instance-of p1, p1, Lorg/eclipse/jetty/io/nio/c;

    .line 34
    .line 35
    return p1

    .line 36
    :cond_2
    instance-of v0, p1, LL1/h;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    instance-of p1, p1, Lorg/eclipse/jetty/io/nio/d;

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    return v1

    .line 45
    :cond_3
    :goto_0
    return v2
.end method

.method public final f(LL1/d;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, LL1/d;->w0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/eclipse/jetty/io/a;->b:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    sget-object v0, Lorg/eclipse/jetty/io/a$a;->a:[I

    .line 11
    .line 12
    iget-object v1, p0, Lorg/eclipse/jetty/io/a;->a:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aget v0, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of p1, p1, Lorg/eclipse/jetty/io/nio/d;

    .line 31
    .line 32
    return p1

    .line 33
    :cond_1
    instance-of p1, p1, Lorg/eclipse/jetty/io/nio/c;

    .line 34
    .line 35
    return p1

    .line 36
    :cond_2
    instance-of v0, p1, LL1/h;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    instance-of p1, p1, Lorg/eclipse/jetty/io/nio/d;

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    return v1

    .line 45
    :cond_3
    :goto_0
    return v2
.end method

.method public final g()LL1/d;
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/a$a;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/io/a;->c:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lorg/eclipse/jetty/io/nio/d;

    .line 21
    .line 22
    iget v1, p0, Lorg/eclipse/jetty/io/a;->d:I

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/d;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/c;

    .line 35
    .line 36
    iget v1, p0, Lorg/eclipse/jetty/io/a;->d:I

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/c;-><init>(I)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    new-instance v0, LL1/h;

    .line 43
    .line 44
    iget v1, p0, Lorg/eclipse/jetty/io/a;->d:I

    .line 45
    .line 46
    invoke-direct {v0, v1}, LL1/h;-><init>(I)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public final h(I)LL1/d;
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/a$a;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/io/a;->e:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lorg/eclipse/jetty/io/nio/d;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/d;-><init>(I)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/c;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Lorg/eclipse/jetty/io/nio/c;-><init>(I)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    new-instance v0, LL1/h;

    .line 39
    .line 40
    invoke-direct {v0, p1}, LL1/h;-><init>(I)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public final i()LL1/d;
    .locals 2

    .line 1
    sget-object v0, Lorg/eclipse/jetty/io/a$a;->a:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/eclipse/jetty/io/a;->a:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lorg/eclipse/jetty/io/nio/d;

    .line 21
    .line 22
    iget v1, p0, Lorg/eclipse/jetty/io/a;->b:I

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/d;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/c;

    .line 35
    .line 36
    iget v1, p0, Lorg/eclipse/jetty/io/a;->b:I

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/nio/c;-><init>(I)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    new-instance v0, LL1/h;

    .line 43
    .line 44
    iget v1, p0, Lorg/eclipse/jetty/io/a;->b:I

    .line 45
    .line 46
    invoke-direct {v0, v1}, LL1/h;-><init>(I)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

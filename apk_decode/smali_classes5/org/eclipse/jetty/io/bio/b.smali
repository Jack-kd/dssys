.class public abstract Lorg/eclipse/jetty/io/bio/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/k;


# instance fields
.field public b:Ljava/io/InputStream;

.field public c:Ljava/io/OutputStream;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/b;->b:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/eclipse/jetty/io/bio/b;->c:Ljava/io/OutputStream;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jetty/io/bio/b;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public f(J)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->c:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public g(LL1/d;LL1/d;LL1/d;)I
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, LL1/d;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/bio/b;->i(LL1/d;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :cond_1
    if-eqz p2, :cond_4

    .line 18
    .line 19
    invoke-interface {p2}, LL1/d;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/bio/b;->i(LL1/d;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-gez p2, :cond_3

    .line 30
    .line 31
    if-lez p1, :cond_2

    .line 32
    .line 33
    return p1

    .line 34
    :cond_2
    return p2

    .line 35
    :cond_3
    add-int/2addr p1, p2

    .line 36
    if-ge p2, v0, :cond_4

    .line 37
    .line 38
    return p1

    .line 39
    :cond_4
    if-eqz p3, :cond_7

    .line 40
    .line 41
    invoke-interface {p3}, LL1/d;->length()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-lez p2, :cond_7

    .line 46
    .line 47
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/bio/b;->i(LL1/d;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-gez p2, :cond_6

    .line 52
    .line 53
    if-lez p1, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    return p2

    .line 57
    :cond_6
    add-int/2addr p1, p2

    .line 58
    :cond_7
    :goto_0
    return p1
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->e:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->f:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->b:Ljava/io/InputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public i(LL1/d;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->c:Ljava/io/OutputStream;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_1
    invoke-interface {p1}, LL1/d;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/b;->c:Ljava/io/OutputStream;

    .line 20
    .line 21
    invoke-interface {p1, v1}, LL1/d;->writeTo(Ljava/io/OutputStream;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-interface {p1}, LL1/d;->s0()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    invoke-interface {p1}, LL1/d;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_3
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->b:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->f:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->e:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->c:Ljava/io/OutputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/eclipse/jetty/io/bio/b;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public t(LL1/d;)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/b;->e:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->b:Ljava/io/InputStream;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    invoke-interface {p1}, LL1/d;->f0()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {p1}, LL1/d;->B0()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    return v2

    .line 26
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 27
    .line 28
    const-string v0, "FULL"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_3
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/b;->b:Ljava/io/InputStream;

    .line 35
    .line 36
    invoke-interface {p1, v2, v0}, LL1/d;->e0(Ljava/io/InputStream;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-gez p1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->h()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :cond_4
    return p1

    .line 46
    :catch_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->u()V

    .line 47
    .line 48
    .line 49
    return v1
.end method

.method public abstract u()V
.end method

.method public final v()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

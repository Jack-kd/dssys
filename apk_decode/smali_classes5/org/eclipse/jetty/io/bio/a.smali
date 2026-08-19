.class public Lorg/eclipse/jetty/io/bio/a;
.super Lorg/eclipse/jetty/io/bio/b;
.source "SourceFile"


# static fields
.field public static final j:LR1/c;


# instance fields
.field public final g:Ljava/net/Socket;

.field public final h:Ljava/net/InetSocketAddress;

.field public final i:Ljava/net/InetSocketAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/eclipse/jetty/io/bio/a;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/jetty/io/bio/a;->j:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/bio/b;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 3
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 4
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->i:Ljava/net/InetSocketAddress;

    .line 5
    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/b;->l(I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/bio/b;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 7
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 8
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 9
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->i:Ljava/net/InetSocketAddress;

    if-lez p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 11
    invoke-super {p0, p2}, Lorg/eclipse/jetty/io/bio/b;->l(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->b:Ljava/io/InputStream;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/eclipse/jetty/io/bio/b;->c:Ljava/io/OutputStream;

    .line 10
    .line 11
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    const-string v0, "0.0.0.0"

    .line 36
    .line 37
    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/b;->h()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/a;->w()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/b;->isOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/b;->j()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/a;->x()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/b;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    move v1, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/io/bio/b;->l(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    const-string v0, "0.0.0.0"

    .line 36
    .line 37
    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/b;->o()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lorg/eclipse/jetty/io/bio/b;->s()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/a;->h:Ljava/net/InetSocketAddress;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " <--> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/a;->i:Ljava/net/InetSocketAddress;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public u()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/a;->s()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/a;->h()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :goto_0
    sget-object v1, Lorg/eclipse/jetty/io/bio/a;->j:LR1/c;

    .line 15
    .line 16
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/a;->g:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

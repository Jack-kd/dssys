.class public LS1/f;
.super LS1/e;
.source "SourceFile"


# static fields
.field public static final h:LR1/c;


# instance fields
.field public c:Ljava/net/URL;

.field public d:Ljava/lang/String;

.field public e:Ljava/net/URLConnection;

.field public f:Ljava/io/InputStream;

.field public transient g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LS1/f;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LS1/f;->h:LR1/c;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LS1/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LS1/f;->f:Ljava/io/InputStream;

    .line 3
    sget-boolean v0, LS1/e;->b:Z

    iput-boolean v0, p0, LS1/f;->g:Z

    .line 4
    iput-object p1, p0, LS1/f;->c:Ljava/net/URL;

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LS1/f;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, LS1/f;->e:Ljava/net/URLConnection;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, LS1/f;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 8
    iput-boolean p3, p0, LS1/f;->g:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, LS1/f;->k()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, LS1/f;->f:Ljava/io/InputStream;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, LS1/f;->f:Ljava/io/InputStream;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit p0

    .line 24
    goto :goto_2

    .line 25
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, LS1/f;->h:LR1/c;

    .line 29
    .line 30
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :goto_2
    iget-object v0, p0, LS1/f;->f:Ljava/io/InputStream;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_3
    return v0
.end method

.method public b()Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p0}, LS1/f;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Ljava/io/FilePermission;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/security/Permission;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    iget-object v1, p0, LS1/f;->c:Ljava/net/URL;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v1, LS1/f;->h:LR1/c;

    .line 41
    .line 42
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    return-object v0
.end method

.method public declared-synchronized c()Ljava/io/InputStream;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, LS1/f;->k()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_1
    iget-object v1, p0, LS1/f;->f:Ljava/io/InputStream;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, LS1/f;->f:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    :try_start_2
    iput-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :catchall_1
    move-exception v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_3
    iget-object v1, p0, LS1/f;->e:Ljava/net/URLConnection;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :try_start_4
    iput-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-object v1

    .line 33
    :goto_0
    :try_start_5
    iput-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;

    .line 34
    .line 35
    throw v1

    .line 36
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 37
    .line 38
    const-string v1, "Invalid resource"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    throw v0
.end method

.method public d()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LS1/f;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    return-wide v0
.end method

.method public delete()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/SecurityException;

    .line 2
    .line 3
    const-string v1, "Delete not supported"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, LS1/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LS1/f;->d:Ljava/lang/String;

    .line 6
    .line 7
    check-cast p1, LS1/f;

    .line 8
    .line 9
    iget-object p1, p1, LS1/f;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, LS1/f;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public declared-synchronized i()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LS1/f;->f:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    :try_start_2
    sget-object v2, LS1/f;->h:LR1/c;

    .line 15
    .line 16
    invoke-interface {v2, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iput-object v1, p0, LS1/f;->f:Ljava/io/InputStream;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iput-object v1, p0, LS1/f;->e:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    iget-object v0, p0, LS1/f;->c:Ljava/net/URL;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;

    .line 13
    .line 14
    iget-boolean v1, p0, LS1/f;->g:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    sget-object v1, LS1/f;->h:LR1/c;

    .line 24
    .line 25
    invoke-interface {v1, v0}, LR1/c;->h(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, LS1/f;->e:Ljava/net/URLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_1
    monitor-exit p0

    .line 36
    return v0

    .line 37
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    throw v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LS1/f;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LS1/f;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

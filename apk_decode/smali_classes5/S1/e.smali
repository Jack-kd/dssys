.class public abstract LS1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LR1/c;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LS1/e;

    .line 2
    .line 3
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LS1/e;->a:LR1/c;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, LS1/e;->b:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Ljava/lang/String;)LS1/e;
    .locals 1

    .line 1
    sget-boolean v0, LS1/e;->b:Z

    .line 2
    .line 3
    invoke-static {p0, v0}, LS1/e;->f(Ljava/lang/String;Z)LS1/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static f(Ljava/lang/String;Z)LS1/e;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, LS1/e;->g(Ljava/net/URL;)LS1/e;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "ftp:"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "file:"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "jar:"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    :try_start_1
    const-string v1, "./"

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, LS1/e;->j(Ljava/io/File;)Ljava/net/URL;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 70
    .line 71
    .line 72
    new-instance p1, LS1/b;

    .line 73
    .line 74
    invoke-direct {p1, v1, v2, p0}, LS1/b;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    return-object p1

    .line 78
    :goto_1
    sget-object p1, LS1/e;->a:LR1/c;

    .line 79
    .line 80
    const-string v1, "EXCEPTION "

    .line 81
    .line 82
    invoke-interface {p1, v1, p0}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_1
    sget-object p1, LS1/e;->a:LR1/c;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "Bad Resource: "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/4 v1, 0x0

    .line 106
    new-array v1, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-interface {p1, p0, v1}, LR1/c;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public static g(Ljava/net/URL;)LS1/e;
    .locals 1

    .line 1
    sget-boolean v0, LS1/e;->b:Z

    .line 2
    .line 3
    invoke-static {p0, v0}, LS1/e;->h(Ljava/net/URL;Z)LS1/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static h(Ljava/net/URL;Z)LS1/e;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "file:"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    :try_start_0
    new-instance p1, LS1/b;

    .line 18
    .line 19
    invoke-direct {p1, p0}, LS1/b;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    sget-object v0, LS1/e;->a:LR1/c;

    .line 25
    .line 26
    const-string v1, "EXCEPTION "

    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, LR1/c;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, LS1/a;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p0, p1}, LS1/a;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    const-string v2, "jar:file:"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    new-instance v0, LS1/c;

    .line 50
    .line 51
    invoke-direct {v0, p0, p1}, LS1/c;-><init>(Ljava/net/URL;Z)V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    const-string v2, "jar:"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    new-instance v0, LS1/d;

    .line 64
    .line 65
    invoke-direct {v0, p0, p1}, LS1/d;-><init>(Ljava/net/URL;Z)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_3
    new-instance v1, LS1/f;

    .line 70
    .line 71
    invoke-direct {v1, p0, v0, p1}, LS1/f;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method

.method public static j(Ljava/io/File;)Ljava/net/URL;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Ljava/io/File;
.end method

.method public abstract c()Ljava/io/InputStream;
.end method

.method public abstract d()J
.end method

.method public abstract delete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, LS1/e;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract i()V
.end method

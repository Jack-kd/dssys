.class public LU1/b;
.super Lorg/eclipse/jetty/util/component/a;
.source "SourceFile"


# static fields
.field public static final L:[Ljavax/net/ssl/TrustManager;

.field public static final M:LR1/c;

.field public static final N:Ljava/lang/String;

.field public static final O:Ljava/lang/String;

.field public static final P:Ljava/lang/String;


# instance fields
.field public A:Z

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public F:Ljava/lang/String;

.field public G:Ljava/security/KeyStore;

.field public H:Ljava/security/KeyStore;

.field public I:Z

.field public J:Ljavax/net/ssl/SSLContext;

.field public K:Z

.field public final b:Ljava/util/Set;

.field public c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public e:Ljava/util/Set;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/io/InputStream;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/io/InputStream;

.field public o:Z

.field public p:Z

.field public q:Z

.field public transient r:Lorg/eclipse/jetty/util/security/Password;

.field public transient s:Lorg/eclipse/jetty/util/security/Password;

.field public transient t:Lorg/eclipse/jetty/util/security/Password;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LU1/b$a;

    .line 2
    .line 3
    invoke-direct {v0}, LU1/b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    sput-object v1, LU1/b;->L:[Ljavax/net/ssl/TrustManager;

    .line 13
    .line 14
    const-class v0, LU1/b;

    .line 15
    .line 16
    invoke-static {v0}, LR1/b;->a(Ljava/lang/Class;)LR1/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, LU1/b;->M:LR1/c;

    .line 21
    .line 22
    const-string v0, "ssl.KeyManagerFactory.algorithm"

    .line 23
    .line 24
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "SunX509"

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    move-object v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    sput-object v0, LU1/b;->N:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    .line 41
    .line 42
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_1
    sput-object v2, LU1/b;->O:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "user.home"

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ".keystore"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, LU1/b;->P:Ljava/lang/String;

    .line 84
    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LU1/b;->b:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LU1/b;->c:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LU1/b;->d:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LU1/b;->e:Ljava/util/Set;

    .line 31
    .line 32
    const-string v0, "JKS"

    .line 33
    .line 34
    iput-object v0, p0, LU1/b;->h:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, p0, LU1/b;->m:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, LU1/b;->o:Z

    .line 40
    .line 41
    iput-boolean v0, p0, LU1/b;->p:Z

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, LU1/b;->q:Z

    .line 45
    .line 46
    const-string v2, "TLS"

    .line 47
    .line 48
    iput-object v2, p0, LU1/b;->v:Ljava/lang/String;

    .line 49
    .line 50
    sget-object v2, LU1/b;->N:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, p0, LU1/b;->x:Ljava/lang/String;

    .line 53
    .line 54
    sget-object v2, LU1/b;->O:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v2, p0, LU1/b;->y:Ljava/lang/String;

    .line 57
    .line 58
    const/4 v2, -0x1

    .line 59
    iput v2, p0, LU1/b;->B:I

    .line 60
    .line 61
    iput-boolean v0, p0, LU1/b;->D:Z

    .line 62
    .line 63
    iput-boolean v0, p0, LU1/b;->E:Z

    .line 64
    .line 65
    iput-boolean v1, p0, LU1/b;->I:Z

    .line 66
    .line 67
    iput-boolean v1, p0, LU1/b;->K:Z

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public P()V
    .locals 3

    .line 1
    iget-object v0, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, LU1/b;->G:Ljava/security/KeyStore;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 11
    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, LU1/b;->f:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "SSL doesn\'t have a valid keystore"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_2
    :goto_0
    iget-object v1, p0, LU1/b;->H:Ljava/security/KeyStore;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, LU1/b;->n:Ljava/io/InputStream;

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iget-object v1, p0, LU1/b;->k:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    iput-object v0, p0, LU1/b;->H:Ljava/security/KeyStore;

    .line 40
    .line 41
    iget-object v0, p0, LU1/b;->f:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, LU1/b;->k:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 46
    .line 47
    iput-object v0, p0, LU1/b;->n:Ljava/io/InputStream;

    .line 48
    .line 49
    iget-object v0, p0, LU1/b;->h:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, LU1/b;->m:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, p0, LU1/b;->g:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, LU1/b;->l:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v0, p0, LU1/b;->r:Lorg/eclipse/jetty/util/security/Password;

    .line 58
    .line 59
    iput-object v0, p0, LU1/b;->t:Lorg/eclipse/jetty/util/security/Password;

    .line 60
    .line 61
    iget-object v0, p0, LU1/b;->x:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v0, p0, LU1/b;->y:Ljava/lang/String;

    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v1, p0, LU1/b;->n:Ljava/io/InputStream;

    .line 70
    .line 71
    if-ne v0, v1, :cond_4

    .line 72
    .line 73
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 79
    .line 80
    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/i;->c(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 98
    .line 99
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, LU1/b;->n:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v1

    .line 118
    :cond_4
    :goto_1
    return-void
.end method

.method public Q(Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LU1/b;->V()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, LU1/b;->V()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, LU1/b;->T()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, LU1/b;->T()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, v0, v1}, LU1/b;->d0([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v0, v1}, LU1/b;->e0([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public R(Ljava/security/KeyStore;)[Ljavax/net/ssl/KeyManager;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, LU1/b;->x:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, LU1/b;->s:Lorg/eclipse/jetty/util/security/Password;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, LU1/b;->r:Lorg/eclipse/jetty/util/security/Password;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-virtual {v1, p1, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, LU1/b;->j:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_1
    array-length v1, p1

    .line 40
    if-ge v0, v1, :cond_2

    .line 41
    .line 42
    aget-object v1, p1, v0

    .line 43
    .line 44
    instance-of v1, v1, Ljavax/net/ssl/X509KeyManager;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    new-instance v1, LU1/a;

    .line 49
    .line 50
    iget-object v2, p0, LU1/b;->j:Ljava/lang/String;

    .line 51
    .line 52
    aget-object v3, p1, v0

    .line 53
    .line 54
    check-cast v3, Ljavax/net/ssl/X509KeyManager;

    .line 55
    .line 56
    invoke-direct {v1, v2, v3}, LU1/a;-><init>(Ljava/lang/String;Ljavax/net/ssl/X509KeyManager;)V

    .line 57
    .line 58
    .line 59
    aput-object v1, p1, v0

    .line 60
    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return-object p1

    .line 65
    :cond_3
    return-object v0
.end method

.method public S(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, LT1/a;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LU1/b;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public U(Ljava/security/KeyStore;Ljava/util/Collection;)[Ljavax/net/ssl/TrustManager;
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-boolean v0, p0, LU1/b;->A:Z

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, LU1/b;->y:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "PKIX"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    new-instance v0, Ljava/security/cert/PKIXBuilderParameters;

    .line 18
    .line 19
    new-instance v1, Ljava/security/cert/X509CertSelector;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    .line 25
    .line 26
    .line 27
    iget p1, p0, LU1/b;->B:I

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/security/cert/PKIXBuilderParameters;->setMaxPathLength(I)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {v0, p1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 34
    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    new-instance p1, Ljava/security/cert/CollectionCertStoreParameters;

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "Collection"

    .line 50
    .line 51
    invoke-static {p2, p1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-boolean p1, p0, LU1/b;->D:Z

    .line 59
    .line 60
    const-string p2, "true"

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    const-string p1, "com.sun.security.enableCRLDP"

    .line 65
    .line 66
    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-boolean p1, p0, LU1/b;->E:Z

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    const-string p1, "ocsp.enable"

    .line 74
    .line 75
    invoke-static {p1, p2}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, LU1/b;->F:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    const-string p2, "ocsp.responderURL"

    .line 83
    .line 84
    invoke-static {p2, p1}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, LU1/b;->y:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance p2, Ljavax/net/ssl/CertPathTrustManagerParameters;

    .line 94
    .line 95
    invoke-direct {p2, v0}, Ljavax/net/ssl/CertPathTrustManagerParameters;-><init>(Ljava/security/cert/CertPathParameters;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    :cond_3
    iget-object p2, p0, LU1/b;->y:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {p2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :cond_4
    const/4 p1, 0x0

    .line 121
    return-object p1
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LU1/b;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public W()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LU1/b;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public X(Ljava/lang/String;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p1}, LT1/a;->b(Ljava/lang/String;)Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Y()Ljava/security/KeyStore;
    .locals 7

    .line 1
    iget-object v0, p0, LU1/b;->G:Ljava/security/KeyStore;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v2, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 7
    .line 8
    iget-object v3, p0, LU1/b;->f:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, LU1/b;->h:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v5, p0, LU1/b;->g:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, LU1/b;->r:Lorg/eclipse/jetty/util/security/Password;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    move-object v1, p0

    .line 20
    move-object v6, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    invoke-virtual/range {v1 .. v6}, LU1/b;->S(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public Z()Ljava/security/KeyStore;
    .locals 7

    .line 1
    iget-object v0, p0, LU1/b;->H:Ljava/security/KeyStore;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v2, p0, LU1/b;->n:Ljava/io/InputStream;

    .line 7
    .line 8
    iget-object v3, p0, LU1/b;->k:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, LU1/b;->m:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v5, p0, LU1/b;->l:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p0, LU1/b;->t:Lorg/eclipse/jetty/util/security/Password;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    move-object v1, p0

    .line 20
    move-object v6, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    invoke-virtual/range {v1 .. v6}, LU1/b;->S(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public a0()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 1
    iget-object v0, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, LU1/b;->Q(Ljavax/net/ssl/SSLEngine;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public b0(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 1
    invoke-virtual {p0}, LU1/b;->W()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, LU1/b;->Q(Ljavax/net/ssl/SSLEngine;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public c0()Ljavax/net/ssl/SSLSocket;
    .locals 3

    .line 1
    iget-object v0, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 12
    .line 13
    invoke-virtual {p0}, LU1/b;->V()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, LU1/b;->V()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, LU1/b;->T()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, LU1/b;->T()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0, v1, v2}, LU1/b;->d0([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p0, v1, v2}, LU1/b;->e0([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method public d0([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LU1/b;->e:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, LU1/b;->e:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, LU1/b;->d:Ljava/util/Set;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    new-array p1, p1, [Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, [Ljava/lang/String;

    .line 71
    .line 72
    return-object p1
.end method

.method public doStart()V
    .locals 8

    .line 1
    iget-object v0, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, LU1/b;->G:Ljava/security/KeyStore;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, LU1/b;->i:Ljava/io/InputStream;

    .line 12
    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, LU1/b;->f:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, LU1/b;->H:Ljava/security/KeyStore;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, LU1/b;->n:Ljava/io/InputStream;

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, LU1/b;->k:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget-boolean v0, p0, LU1/b;->K:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    sget-object v0, LU1/b;->M:LR1/c;

    .line 36
    .line 37
    const-string v3, "No keystore or trust store configured.  ACCEPTING UNTRUSTED CERTIFICATES!!!!!"

    .line 38
    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-interface {v0, v3, v1}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, LU1/b;->L:[Ljavax/net/ssl/TrustManager;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, v2

    .line 48
    :goto_0
    iget-object v1, p0, LU1/b;->w:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_1
    iget-object v3, p0, LU1/b;->u:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    iget-object v3, p0, LU1/b;->v:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iget-object v4, p0, LU1/b;->v:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v4, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :goto_2
    iput-object v3, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 76
    .line 77
    invoke-virtual {v3, v2, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-virtual {p0}, LU1/b;->P()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, LU1/b;->Y()Ljava/security/KeyStore;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0}, LU1/b;->Z()Ljava/security/KeyStore;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, p0, LU1/b;->C:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p0, v4}, LU1/b;->X(Ljava/lang/String;)Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-boolean v5, p0, LU1/b;->z:Z

    .line 99
    .line 100
    if-eqz v5, :cond_9

    .line 101
    .line 102
    if-eqz v0, :cond_9

    .line 103
    .line 104
    iget-object v5, p0, LU1/b;->j:Ljava/lang/String;

    .line 105
    .line 106
    if-nez v5, :cond_5

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    const/4 v7, 0x1

    .line 121
    if-ne v6, v7, :cond_4

    .line 122
    .line 123
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    move-object v1, v2

    .line 131
    :goto_3
    iput-object v1, p0, LU1/b;->j:Ljava/lang/String;

    .line 132
    .line 133
    :cond_5
    iget-object v1, p0, LU1/b;->j:Ljava/lang/String;

    .line 134
    .line 135
    if-nez v1, :cond_6

    .line 136
    .line 137
    move-object v1, v2

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :goto_4
    if-nez v1, :cond_8

    .line 144
    .line 145
    new-instance v0, Ljava/lang/Exception;

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v2, "No certificate found in the keystore"

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, LU1/b;->j:Ljava/lang/String;

    .line 158
    .line 159
    if-nez v2, :cond_7

    .line 160
    .line 161
    const-string v2, ""

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v3, " for alias "

    .line 170
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v3, p0, LU1/b;->j:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0

    .line 194
    :cond_8
    new-instance v5, LT1/b;

    .line 195
    .line 196
    invoke-direct {v5, v3, v4}, LT1/b;-><init>(Ljava/security/KeyStore;Ljava/util/Collection;)V

    .line 197
    .line 198
    .line 199
    iget v6, p0, LU1/b;->B:I

    .line 200
    .line 201
    invoke-virtual {v5, v6}, LT1/b;->c(I)V

    .line 202
    .line 203
    .line 204
    iget-boolean v6, p0, LU1/b;->D:Z

    .line 205
    .line 206
    invoke-virtual {v5, v6}, LT1/b;->a(Z)V

    .line 207
    .line 208
    .line 209
    iget-boolean v6, p0, LU1/b;->E:Z

    .line 210
    .line 211
    invoke-virtual {v5, v6}, LT1/b;->b(Z)V

    .line 212
    .line 213
    .line 214
    iget-object v6, p0, LU1/b;->F:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v5, v6}, LT1/b;->d(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v0, v1}, LT1/b;->e(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V

    .line 220
    .line 221
    .line 222
    :cond_9
    invoke-virtual {p0, v0}, LU1/b;->R(Ljava/security/KeyStore;)[Ljavax/net/ssl/KeyManager;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p0, v3, v4}, LU1/b;->U(Ljava/security/KeyStore;Ljava/util/Collection;)[Ljavax/net/ssl/TrustManager;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iget-object v3, p0, LU1/b;->w:Ljava/lang/String;

    .line 231
    .line 232
    if-nez v3, :cond_a

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_a
    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    :goto_6
    iget-object v3, p0, LU1/b;->u:Ljava/lang/String;

    .line 240
    .line 241
    if-nez v3, :cond_b

    .line 242
    .line 243
    iget-object v3, p0, LU1/b;->v:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    goto :goto_7

    .line 250
    :cond_b
    iget-object v4, p0, LU1/b;->v:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {v4, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    :goto_7
    iput-object v3, p0, LU1/b;->J:Ljavax/net/ssl/SSLContext;

    .line 257
    .line 258
    invoke-virtual {v3, v0, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, LU1/b;->a0()Ljavax/net/ssl/SSLEngine;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sget-object v1, LU1/b;->M:LR1/c;

    .line 266
    .line 267
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedProtocols()[Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    const-string v3, "Enabled Protocols {} of {}"

    .line 288
    .line 289
    invoke-interface {v1, v3, v2}, LR1/c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v1}, LR1/c;->f()Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_c

    .line 297
    .line 298
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSupportedCipherSuites()[Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v2, "Enabled Ciphers   {} of {}"

    .line 319
    .line 320
    invoke-interface {v1, v2, v0}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_c
    return-void
.end method

.method public e0([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LU1/b;->c:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, LU1/b;->c:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, LU1/b;->b:Ljava/util/Set;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    new-array p1, p1, [Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, [Ljava/lang/String;

    .line 71
    .line 72
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, LU1/b;->f:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, LU1/b;->k:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "%s@%x(%s,%s)"

    .line 26
    .line 27
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

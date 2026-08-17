.class public Lcom/fl/saas/E;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fl/saas/E$d;,
        Lcom/fl/saas/E$c;,
        Lcom/fl/saas/E$e;
    }
.end annotation


# static fields
.field public static s:Ljava/lang/String; = "YDActionStartDownloadCheckUrl"

.field public static t:Ljava/lang/String; = "YDActionPauseDownloadCheckUrl"

.field public static u:Ljava/lang/String; = "YDActionCancelDownloadCheckUrl"

.field public static v:Ljava/lang/String; = "YDActionErrorDownloadCheckUrl"

.field public static w:Ljava/lang/String; = "YDActionCancelLastDownloadCheckUrl"

.field public static x:Ljava/lang/String; = "YDActionUpdateProgress"

.field public static y:Ljava/lang/String; = "YDActionDownloadSuccess"

.field private static z:Lcom/fl/saas/F;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private d:J

.field private e:Ljava/io/File;

.field private f:Ljava/lang/String;

.field private g:Ljava/io/File;

.field private h:Ljava/io/RandomAccessFile;

.field private i:Lcom/fl/saas/E$e;

.field private j:Landroid/content/Context;

.field private k:Lcom/fl/saas/j;

.field private l:Z

.field private m:Lcom/fl/saas/E$d;

.field private n:Lcom/fl/saas/w;

.field private o:Lcom/fl/saas/E$c;

.field private final p:Ljava/util/concurrent/atomic/AtomicInteger;

.field private q:Landroid/os/Handler;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fl/saas/F;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fl/saas/F;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fl/saas/E;->z:Lcom/fl/saas/F;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/E$d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/fl/saas/E;->c:J

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/fl/saas/E;->l:Z

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/fl/saas/E;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/fl/saas/E;->r:Z

    .line 22
    .line 23
    iput-object p1, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/fl/saas/E;->k:Lcom/fl/saas/j;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/fl/saas/E;->m:Lcom/fl/saas/E$d;

    .line 28
    .line 29
    iget-object p1, p2, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p2, Lcom/fl/saas/j;->z0:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p2, Lcom/fl/saas/j;->x0:Ljava/lang/String;

    .line 41
    .line 42
    :goto_0
    iput-object p1, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p1, p2, Lcom/fl/saas/j;->A0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const-string p3, ".apk"

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v1, p2, Lcom/fl/saas/j;->A0:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p2, p2, Lcom/fl/saas/j;->E0:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const-string v0, "."

    .line 79
    .line 80
    const-string v1, ""

    .line 81
    .line 82
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_1
    iput-object p1, p0, Lcom/fl/saas/E;->f:Ljava/lang/String;

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    iget-object p1, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    .line 108
    .line 109
    const-string p2, "/"

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    add-int/2addr p2, v0

    .line 116
    iget-object p3, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result p3

    .line 122
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const-string p1, "temp.apk"

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :goto_2
    new-instance p1, Lcom/fl/saas/E$a;

    .line 131
    .line 132
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-direct {p1, p0, p2}, Lcom/fl/saas/E$a;-><init>(Lcom/fl/saas/E;Landroid/os/Looper;)V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lcom/fl/saas/E;->q:Landroid/os/Handler;

    .line 140
    .line 141
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/E;)Lcom/fl/saas/E$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/E;->m:Lcom/fl/saas/E$d;

    return-object p0
.end method

.method public static synthetic b(Lcom/fl/saas/E;)Lcom/fl/saas/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/E;->n:Lcom/fl/saas/w;

    return-object p0
.end method

.method public static synthetic c(Lcom/fl/saas/E;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fl/saas/E;->q:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x3ea

    .line 11
    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    .line 15
    .line 16
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/fl/saas/E;->q:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/fl/saas/E;->k:Lcom/fl/saas/j;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v1, Lcom/fl/saas/E;->z:Lcom/fl/saas/F;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/fl/saas/F;->a(Lcom/fl/saas/j;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lcom/fl/saas/t;->a()Lcom/fl/saas/t;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/fl/saas/E;->k:Lcom/fl/saas/j;

    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/fl/saas/t;->a(Lcom/fl/saas/j;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/fl/saas/E;->k:Lcom/fl/saas/j;

    .line 49
    .line 50
    invoke-static {v0, v1, v2}, Lcom/fl/saas/l;->a(Landroid/content/Context;Ljava/io/File;Lcom/fl/saas/j;)V

    .line 51
    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/fl/saas/E;->l:Z

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    sget-object v0, Lcom/fl/saas/E;->z:Lcom/fl/saas/F;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    sget-boolean v0, Lcom/fl/saas/adx/util/DeviceUtil;->enableCollectAppInstallStatus:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    sget-object v0, Lcom/fl/saas/E;->z:Lcom/fl/saas/F;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/fl/saas/F;->a(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/fl/saas/E;->l:Z

    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/fl/saas/E;->b()V

    .line 80
    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;J)Ljava/net/HttpURLConnection;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fl/saas/Y;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/fl/saas/G;

    const-string p2, "url is fail"

    invoke-direct {p1, v0, p2}, Lcom/fl/saas/G;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v2, "https"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Lcom/fl/saas/E;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    :cond_3
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x133

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    return-object p1

    :cond_5
    :pswitch_0
    iget-object v1, p0, Lcom/fl/saas/E;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    const-string v2, "redirects too many times"

    if-ltz v1, :cond_7

    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/fl/saas/c;->c()Lcom/fl/saas/c;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/fl/saas/Y;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fl/saas/E;->a(Landroid/net/Uri;J)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lcom/fl/saas/G;

    invoke-direct {p1, v0, v2}, Lcom/fl/saas/G;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/fl/saas/G;

    invoke-direct {p1, v0, v2}, Lcom/fl/saas/G;-><init>(ILjava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a()Ljavax/net/ssl/SSLContext;
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v2, Lcom/fl/saas/E$b;

    invoke-direct {v2, p0}, Lcom/fl/saas/E$b;-><init>(Lcom/fl/saas/E;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v3, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    iget-object v0, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    move-result-object v0

    iget-object v2, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    invoke-virtual {v0, v2}, Lcom/fl/saas/d1;->c(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/E;->n:Lcom/fl/saas/w;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fl/saas/w;->a()V

    iput-object v1, p0, Lcom/fl/saas/E;->n:Lcom/fl/saas/w;

    :cond_1
    iget-object v0, p0, Lcom/fl/saas/E;->o:Lcom/fl/saas/E$c;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/fl/saas/E;->o:Lcom/fl/saas/E$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/fl/saas/E;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/fl/saas/E;->n:Lcom/fl/saas/w;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fl/saas/w;

    iget-object v2, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/fl/saas/E;->k:Lcom/fl/saas/j;

    iget-object v4, v4, Lcom/fl/saas/j;->C0:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/fl/saas/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fl/saas/E;->n:Lcom/fl/saas/w;

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    goto/16 :goto_8

    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/fl/saas/E;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    const-string v4, "rwd"

    if-gez v3, :cond_7

    :try_start_1
    iget-object v1, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/fl/saas/E;->e:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fl/saas/E;->e:Ljava/io/File;

    iget-object v3, p0, Lcom/fl/saas/E;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "temp.apk"

    iget-object v2, p0, Lcom/fl/saas/E;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/fl/saas/E;->c:J

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/fl/saas/E;->c:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/fl/saas/E;->a(Landroid/net/Uri;J)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Lcom/fl/saas/E;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/fl/saas/E;->c:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fl/saas/E;->d:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/fl/saas/E;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v1, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_11

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    iput-object v0, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v0

    goto/16 :goto_8

    :cond_3
    :try_start_4
    new-instance v2, Lcom/fl/saas/E$c;

    invoke-direct {v2, p0}, Lcom/fl/saas/E$c;-><init>(Lcom/fl/saas/E;)V

    iput-object v2, p0, Lcom/fl/saas/E;->o:Lcom/fl/saas/E$c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    sget-object v3, Lcom/fl/saas/E;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/fl/saas/E;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/fl/saas/E;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/fl/saas/E;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/fl/saas/E;->o:Lcom/fl/saas/E$c;

    const/4 v5, 0x2

    invoke-static {v3, v4, v2, v5}, Lcom/beizi/fusion/asnp/adn/ad/download/service/b;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_4

    :catchall_2
    move-exception v2

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/fl/saas/E;->j:Landroid/content/Context;

    iget-object v4, p0, Lcom/fl/saas/E;->o:Lcom/fl/saas/E$c;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :goto_3
    :try_start_6
    invoke-static {v2}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/fl/saas/E;->m:Lcom/fl/saas/E$d;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/fl/saas/E$d;->onError()V

    :cond_5
    iget-object v2, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {p0}, Lcom/fl/saas/E;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :cond_7
    :try_start_7
    iget-wide v5, p0, Lcom/fl/saas/E;->d:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/fl/saas/E;->d()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v1, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_11

    goto :goto_2

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/fl/saas/E;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/fl/saas/E;->c:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/fl/saas/E;->a(Landroid/net/Uri;J)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Lcom/fl/saas/E;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    iget-object v2, p0, Lcom/fl/saas/E;->n:Lcom/fl/saas/w;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fl/saas/w;->a(Z)V

    :goto_4
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/16 v3, 0x400

    :try_start_a
    new-array v3, v3, [B

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move v7, v4

    :goto_5
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    iget-boolean v9, p0, Lcom/fl/saas/E;->b:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    invoke-virtual {v9, v3, v4, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v9, p0, Lcom/fl/saas/E;->c:J

    int-to-long v11, v8

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/fl/saas/E;->c:J

    const-wide/16 v11, 0x64

    mul-long/2addr v9, v11

    iget-wide v11, p0, Lcom/fl/saas/E;->d:J

    div-long/2addr v9, v11

    long-to-int v8, v9

    if-ne v8, v7, :cond_9

    iget-boolean v7, p0, Lcom/fl/saas/E;->r:Z

    if-eqz v7, :cond_a

    goto :goto_6

    :catchall_3
    move-exception v3

    move-object v13, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v13

    goto/16 :goto_8

    :cond_9
    :goto_6
    iput-boolean v4, p0, Lcom/fl/saas/E;->r:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x3e8

    cmp-long v7, v9, v11

    if-lez v7, :cond_a

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#.00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/fl/saas/E;->d:J

    long-to-double v6, v6

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v9

    div-double/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    iget-wide v11, p0, Lcom/fl/saas/E;->c:J

    long-to-double v11, v11

    div-double/2addr v11, v9

    div-double/2addr v11, v9

    invoke-virtual {v5, v11, v12}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v7, p0, Lcom/fl/saas/E;->q:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/16 v11, 0x3e9

    iput v11, v7, Landroid/os/Message;->what:I

    iput v8, v7, Landroid/os/Message;->arg1:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MB/"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "MB"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fl/saas/E;->q:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-wide v5, v9

    :cond_a
    move v7, v8

    goto/16 :goto_5

    :cond_b
    iget-wide v3, p0, Lcom/fl/saas/E;->c:J

    iget-wide v5, p0, Lcom/fl/saas/E;->d:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_c

    invoke-direct {p0}, Lcom/fl/saas/E;->d()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_11

    :goto_7
    :try_start_c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_a

    :goto_8
    :try_start_d
    invoke-static {v1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/fl/saas/E;->m:Lcom/fl/saas/E$d;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/fl/saas/E$d;->onError()V

    goto :goto_9

    :catchall_4
    move-exception v1

    goto :goto_b

    :cond_d
    :goto_9
    iget-object v1, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/fl/saas/E;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_e
    invoke-virtual {p0}, Lcom/fl/saas/E;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    if-eqz v3, :cond_10

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    :catch_1
    :cond_10
    iget-object v1, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_11

    goto :goto_7

    :goto_a
    :try_start_f
    iput-object v0, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    :catch_2
    :cond_11
    return-void

    :goto_b
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v3, :cond_13

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    :catch_3
    :cond_13
    iget-object v2, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_14

    :try_start_11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    iput-object v0, p0, Lcom/fl/saas/E;->h:Ljava/io/RandomAccessFile;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    :catch_4
    :cond_14
    throw v1
.end method

.method public e()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/fl/saas/d1;->c(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/fl/saas/E;->n:Lcom/fl/saas/w;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/fl/saas/w;->a(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/fl/saas/E;->b:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/fl/saas/E;->r:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/fl/saas/E$e;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/fl/saas/E$e;-><init>(Lcom/fl/saas/E;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/fl/saas/d1;->a()Lcom/fl/saas/d1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/fl/saas/E;->i:Lcom/fl/saas/E$e;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/fl/saas/d1;->b(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.class public Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x0

.field public static C:I = 0x0

.field public static b:Ljava/lang/Object; = null

.field public static c:Landroid/content/Context; = null

.field public static d:Z = false

.field public static e:Lb2/c;

.field public static f:Lb2/c;

.field public static g:Lb2/c;

.field public static h:Landroid/os/HandlerThread;

.field public static i:Landroid/os/Handler;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static volatile p:Lb2/b;

.field public static volatile q:Lb2/a;

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb2/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lb2/b;->d()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lb2/a;

    .line 8
    .line 9
    sget-object v1, Lb2/b;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lb2/a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lb2/b;->q:Lb2/a;

    .line 15
    .line 16
    sget-object v0, Lb2/b;->c:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lb2/b;->t(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lb2/b;->a:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic A(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lb2/b;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic C(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->w:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic D(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lb2/b;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic E(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->x:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic F(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->y:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic G(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->z:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic H(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->A:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic I(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->B:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic J()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->r:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic K(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->C:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic L()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic M()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic N()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic O()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic P()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic Q()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic R()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic S()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic T()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic U()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->C:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic V()I
    .locals 1

    .line 1
    sget v0, Lb2/b;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic W()Lb2/a;
    .locals 1

    .line 1
    sget-object v0, Lb2/b;->q:Lb2/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic X()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb2/b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic Y()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb2/b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb2/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lb2/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public static d()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "SqlWorkThread"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lb2/b;->h:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lb2/b$b;

    .line 14
    .line 15
    sget-object v1, Lb2/b;->h:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lb2/b$b;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lb2/b;->i:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method public static e()V
    .locals 3

    .line 1
    const-string v0, "persist.sys.identifierid.supported"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lb2/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "1"

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "persist.sys.identifierid"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lb2/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    sput-boolean v0, Lb2/b;->d:Z

    .line 34
    .line 35
    return-void
.end method

.method public static synthetic f(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->r:I

    .line 2
    .line 3
    return p0
.end method

.method public static g(Landroid/content/Context;)Lb2/b;
    .locals 1

    .line 1
    sget-object v0, Lb2/b;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object p0, v0

    .line 17
    :goto_0
    sput-object p0, Lb2/b;->c:Landroid/content/Context;

    .line 18
    .line 19
    :cond_2
    sget-object p0, Lb2/b;->p:Lb2/b;

    .line 20
    .line 21
    if-nez p0, :cond_4

    .line 22
    .line 23
    const-class p0, Lb2/b;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lb2/b;->p:Lb2/b;

    .line 27
    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    new-instance v0, Lb2/b;

    .line 31
    .line 32
    invoke-direct {v0}, Lb2/b;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lb2/b;->p:Lb2/b;

    .line 36
    .line 37
    sget-object v0, Lb2/b;->p:Lb2/b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lb2/b;->c()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :goto_1
    monitor-exit p0

    .line 46
    goto :goto_3

    .line 47
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v0

    .line 49
    :cond_4
    :goto_3
    sget-object p0, Lb2/b;->p:Lb2/b;

    .line 50
    .line 51
    return-object p0
.end method

.method public static synthetic i(Lb2/b;IIII)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lb2/b;->h(IIII)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lb2/b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "get"

    .line 10
    .line 11
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "0"

    .line 20
    .line 21
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    :try_start_1
    const-string v0, "VMS_SDK_Client"

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "getProperty: invoke is error"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :catchall_0
    return-object p1
.end method

.method public static declared-synchronized m(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lb2/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    :try_start_0
    sget-object p1, Lb2/b;->g:Lb2/c;

    .line 16
    .line 17
    if-nez p1, :cond_3

    .line 18
    .line 19
    new-instance p1, Lb2/c;

    .line 20
    .line 21
    sget-object v3, Lb2/b;->p:Lb2/b;

    .line 22
    .line 23
    invoke-direct {p1, v3, v2, p2}, Lb2/c;-><init>(Lb2/b;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object p1, Lb2/b;->g:Lb2/c;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "content://com.vivo.vms.IdProvider/IdentifierId/"

    .line 38
    .line 39
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object p2, Lb2/b;->g:Lb2/c;

    .line 58
    .line 59
    invoke-virtual {p1, p0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    sget-object p1, Lb2/b;->f:Lb2/c;

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    new-instance p1, Lb2/c;

    .line 70
    .line 71
    sget-object v3, Lb2/b;->p:Lb2/b;

    .line 72
    .line 73
    invoke-direct {p1, v3, v2, p2}, Lb2/c;-><init>(Lb2/b;ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object p1, Lb2/b;->f:Lb2/c;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget-object p2, Lb2/b;->f:Lb2/c;

    .line 104
    .line 105
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sget-object p1, Lb2/b;->e:Lb2/c;

    .line 110
    .line 111
    if-nez p1, :cond_3

    .line 112
    .line 113
    new-instance p1, Lb2/c;

    .line 114
    .line 115
    sget-object p2, Lb2/b;->p:Lb2/b;

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    invoke-direct {p1, p2, v1, v3}, Lb2/c;-><init>(Lb2/b;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object p1, Lb2/b;->e:Lb2/c;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 128
    .line 129
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget-object p2, Lb2/b;->e:Lb2/c;

    .line 134
    .line 135
    invoke-virtual {p0, p1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_0
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    throw p0
.end method

.method public static n()Z
    .locals 1

    .line 1
    sget-boolean v0, Lb2/b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lb2/b;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-boolean v0, Lb2/b;->d:Z

    .line 9
    .line 10
    return v0
.end method

.method public static synthetic o(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->s:I

    .line 2
    .line 3
    return p0
.end method

.method public static p(Landroid/content/Context;)Lb2/b;
    .locals 1

    .line 1
    invoke-static {}, Lb2/b;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Lb2/b;->g(Landroid/content/Context;)Lb2/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic q(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lb2/b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lb2/b;->w(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public static t(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "com.vivo.vms"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    return v0
.end method

.method public static synthetic v(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lb2/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static w(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    if-eq p0, v0, :cond_5

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_3

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget p0, Lb2/b;->C:I

    .line 16
    .line 17
    add-int/2addr p0, v0

    .line 18
    sput p0, Lb2/b;->C:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget p0, Lb2/b;->B:I

    .line 22
    .line 23
    add-int/2addr p0, v0

    .line 24
    sput p0, Lb2/b;->B:I

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    if-nez p1, :cond_1

    .line 28
    .line 29
    sget p0, Lb2/b;->A:I

    .line 30
    .line 31
    add-int/2addr p0, v0

    .line 32
    sput p0, Lb2/b;->A:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget p0, Lb2/b;->z:I

    .line 36
    .line 37
    add-int/2addr p0, v0

    .line 38
    sput p0, Lb2/b;->z:I

    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_2
    if-nez p1, :cond_2

    .line 42
    .line 43
    sget p0, Lb2/b;->y:I

    .line 44
    .line 45
    add-int/2addr p0, v0

    .line 46
    sput p0, Lb2/b;->y:I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    sget p0, Lb2/b;->x:I

    .line 50
    .line 51
    add-int/2addr p0, v0

    .line 52
    sput p0, Lb2/b;->x:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    if-nez p1, :cond_4

    .line 56
    .line 57
    sget p0, Lb2/b;->w:I

    .line 58
    .line 59
    add-int/2addr p0, v0

    .line 60
    sput p0, Lb2/b;->w:I

    .line 61
    .line 62
    return-void

    .line 63
    :cond_4
    sget p0, Lb2/b;->v:I

    .line 64
    .line 65
    add-int/2addr p0, v0

    .line 66
    sput p0, Lb2/b;->v:I

    .line 67
    .line 68
    return-void

    .line 69
    :cond_5
    if-nez p1, :cond_6

    .line 70
    .line 71
    sget p0, Lb2/b;->u:I

    .line 72
    .line 73
    add-int/2addr p0, v0

    .line 74
    sput p0, Lb2/b;->u:I

    .line 75
    .line 76
    return-void

    .line 77
    :cond_6
    sget p0, Lb2/b;->t:I

    .line 78
    .line 79
    add-int/2addr p0, v0

    .line 80
    sput p0, Lb2/b;->t:I

    .line 81
    .line 82
    return-void

    .line 83
    :cond_7
    if-nez p1, :cond_8

    .line 84
    .line 85
    sget p0, Lb2/b;->s:I

    .line 86
    .line 87
    add-int/2addr p0, v0

    .line 88
    sput p0, Lb2/b;->s:I

    .line 89
    .line 90
    return-void

    .line 91
    :cond_8
    sget p0, Lb2/b;->r:I

    .line 92
    .line 93
    add-int/2addr p0, v0

    .line 94
    sput p0, Lb2/b;->r:I

    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic x(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->u:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lb2/b;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(I)I
    .locals 0

    .line 1
    sput p0, Lb2/b;->v:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final B(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lb2/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lb2/b;->l(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    sget-object p1, Lb2/b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    const-wide/16 v1, 0x7d0

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    :try_start_2
    const-string p1, "VMS_SDK_Client"

    .line 21
    .line 22
    const-string p2, "queryId: lock error"

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw p1
.end method

.method public final c()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lb2/b$a;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Lb2/b$a;-><init>(Lb2/b;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v5, 0x258

    .line 12
    .line 13
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    const-wide/16 v3, 0x258

    .line 16
    .line 17
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final h(IIII)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 7
    .line 8
    .line 9
    const-string p1, ","

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string p2, ";"

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public l(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lb2/b;->i:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xb

    .line 8
    .line 9
    iput v1, v0, Landroid/os/Message;->what:I

    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    if-eq p1, v2, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x6

    .line 28
    if-ne p1, v2, :cond_1

    .line 29
    .line 30
    :cond_0
    const-string p1, "appid"

    .line 31
    .line 32
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lb2/b;->i:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lb2/b;->j:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1, v0}, Lb2/b;->w(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lb2/b;->j:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Lb2/b;->B(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v2, Lb2/b;->e:Lb2/c;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lb2/b;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Lb2/b;->m(Landroid/content/Context;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object v0, Lb2/b;->j:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v0}, Lb2/b;->w(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lb2/b;->j:Ljava/lang/String;

    .line 31
    .line 32
    return-object v0
.end method

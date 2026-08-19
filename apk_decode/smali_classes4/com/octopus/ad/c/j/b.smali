.class public Lcom/octopus/ad/c/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:I = 0x0

.field private static D:I = 0x0

.field private static E:I = 0x0

.field private static F:I = 0x0

.field private static a:Landroid/content/Context; = null

.field private static c:Ljava/lang/Object; = null

.field private static d:Z = false

.field private static e:I = 0xd

.field private static f:Lcom/octopus/ad/c/j/c;

.field private static g:Lcom/octopus/ad/c/j/c;

.field private static h:Lcom/octopus/ad/c/j/c;

.field private static i:Lcom/octopus/ad/c/j/c;

.field private static j:Landroid/os/HandlerThread;

.field private static k:Landroid/os/Handler;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static volatile s:Lcom/octopus/ad/c/j/b;

.field private static volatile t:Lcom/octopus/ad/c/j/a;

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# instance fields
.field private final b:I


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
    sput-object v0, Lcom/octopus/ad/c/j/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/octopus/ad/c/j/b;->u()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/octopus/ad/c/j/a;

    .line 8
    .line 9
    sget-object v1, Lcom/octopus/ad/c/j/b;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/octopus/ad/c/j/a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/octopus/ad/c/j/b;->t:Lcom/octopus/ad/c/j/a;

    .line 15
    .line 16
    sget-object v0, Lcom/octopus/ad/c/j/b;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/octopus/ad/c/j/b;->c(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/octopus/ad/c/j/b;->b:I

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic a(I)I
    .locals 0

    .line 1
    sput p0, Lcom/octopus/ad/c/j/b;->u:I

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/octopus/ad/c/j/b;
    .locals 1

    .line 4
    sget-object v0, Lcom/octopus/ad/c/j/b;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 6
    :goto_0
    sput-object p0, Lcom/octopus/ad/c/j/b;->a:Landroid/content/Context;

    .line 7
    :cond_2
    sget-object p0, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    if-nez p0, :cond_4

    .line 8
    const-class p0, Lcom/octopus/ad/c/j/b;

    monitor-enter p0

    .line 9
    :try_start_0
    sget-object v0, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/octopus/ad/c/j/b;

    invoke-direct {v0}, Lcom/octopus/ad/c/j/b;-><init>()V

    sput-object v0, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    .line 11
    sget-object v0, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    invoke-direct {v0}, Lcom/octopus/ad/c/j/b;->t()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13
    :cond_4
    :goto_3
    sget-object p0, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/octopus/ad/c/j/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 41
    const-class v0, Ljava/lang/String;

    .line 42
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    const-string v2, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "0"

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    :try_start_1
    const-string v0, "VMS_SDK_Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProperty: invoke is error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-eq p0, v0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    if-nez p1, :cond_0

    .line 17
    sget p0, Lcom/octopus/ad/c/j/b;->F:I

    add-int/2addr p0, v0

    .line 18
    sput p0, Lcom/octopus/ad/c/j/b;->F:I

    return-void

    .line 19
    :cond_0
    sget p0, Lcom/octopus/ad/c/j/b;->E:I

    add-int/2addr p0, v0

    .line 20
    sput p0, Lcom/octopus/ad/c/j/b;->E:I

    return-void

    :pswitch_1
    if-nez p1, :cond_1

    .line 21
    sget p0, Lcom/octopus/ad/c/j/b;->D:I

    add-int/2addr p0, v0

    .line 22
    sput p0, Lcom/octopus/ad/c/j/b;->D:I

    return-void

    .line 23
    :cond_1
    sget p0, Lcom/octopus/ad/c/j/b;->C:I

    add-int/2addr p0, v0

    .line 24
    sput p0, Lcom/octopus/ad/c/j/b;->C:I

    return-void

    :pswitch_2
    if-nez p1, :cond_2

    .line 25
    sget p0, Lcom/octopus/ad/c/j/b;->B:I

    add-int/2addr p0, v0

    .line 26
    sput p0, Lcom/octopus/ad/c/j/b;->B:I

    return-void

    .line 27
    :cond_2
    sget p0, Lcom/octopus/ad/c/j/b;->A:I

    add-int/2addr p0, v0

    .line 28
    sput p0, Lcom/octopus/ad/c/j/b;->A:I

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 29
    sget p0, Lcom/octopus/ad/c/j/b;->z:I

    add-int/2addr p0, v0

    .line 30
    sput p0, Lcom/octopus/ad/c/j/b;->z:I

    return-void

    .line 31
    :cond_4
    sget p0, Lcom/octopus/ad/c/j/b;->y:I

    add-int/2addr p0, v0

    .line 32
    sput p0, Lcom/octopus/ad/c/j/b;->y:I

    return-void

    :cond_5
    if-nez p1, :cond_6

    .line 33
    sget p0, Lcom/octopus/ad/c/j/b;->x:I

    add-int/2addr p0, v0

    .line 34
    sput p0, Lcom/octopus/ad/c/j/b;->x:I

    return-void

    .line 35
    :cond_6
    sget p0, Lcom/octopus/ad/c/j/b;->w:I

    add-int/2addr p0, v0

    .line 36
    sput p0, Lcom/octopus/ad/c/j/b;->w:I

    return-void

    :cond_7
    if-nez p1, :cond_8

    .line 37
    sget p0, Lcom/octopus/ad/c/j/b;->v:I

    add-int/2addr p0, v0

    .line 38
    sput p0, Lcom/octopus/ad/c/j/b;->v:I

    return-void

    .line 39
    :cond_8
    sget p0, Lcom/octopus/ad/c/j/b;->u:I

    add-int/2addr p0, v0

    .line 40
    sput p0, Lcom/octopus/ad/c/j/b;->u:I

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const-class v0, Lcom/octopus/ad/c/j/b;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 45
    monitor-exit v0

    return-void

    .line 46
    :cond_0
    :try_start_0
    sget-object p1, Lcom/octopus/ad/c/j/b;->h:Lcom/octopus/ad/c/j/c;

    if-nez p1, :cond_1

    .line 47
    new-instance p1, Lcom/octopus/ad/c/j/c;

    sget-object v3, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    invoke-direct {p1, v3, v2, p2}, Lcom/octopus/ad/c/j/c;-><init>(Lcom/octopus/ad/c/j/b;ILjava/lang/String;)V

    sput-object p1, Lcom/octopus/ad/c/j/b;->h:Lcom/octopus/ad/c/j/c;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.vivo.vms.IdProvider/IdentifierId/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sget-object p2, Lcom/octopus/ad/c/j/b;->h:Lcom/octopus/ad/c/j/c;

    invoke-virtual {p1, p0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 50
    :cond_1
    monitor-exit v0

    return-void

    .line 51
    :cond_2
    :try_start_1
    sget-object p1, Lcom/octopus/ad/c/j/b;->g:Lcom/octopus/ad/c/j/c;

    if-nez p1, :cond_3

    .line 52
    new-instance p1, Lcom/octopus/ad/c/j/c;

    sget-object v3, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    invoke-direct {p1, v3, v2, p2}, Lcom/octopus/ad/c/j/c;-><init>(Lcom/octopus/ad/c/j/b;ILjava/lang/String;)V

    sput-object p1, Lcom/octopus/ad/c/j/b;->g:Lcom/octopus/ad/c/j/c;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lcom/octopus/ad/c/j/b;->g:Lcom/octopus/ad/c/j/c;

    invoke-virtual {p0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    .line 55
    :cond_3
    monitor-exit v0

    return-void

    .line 56
    :cond_4
    :try_start_2
    sget-object p1, Lcom/octopus/ad/c/j/b;->f:Lcom/octopus/ad/c/j/c;

    if-nez p1, :cond_5

    .line 57
    new-instance p1, Lcom/octopus/ad/c/j/c;

    sget-object p2, Lcom/octopus/ad/c/j/b;->s:Lcom/octopus/ad/c/j/b;

    const/4 v3, 0x0

    invoke-direct {p1, p2, v1, v3}, Lcom/octopus/ad/c/j/c;-><init>(Lcom/octopus/ad/c/j/b;ILjava/lang/String;)V

    sput-object p1, Lcom/octopus/ad/c/j/b;->f:Lcom/octopus/ad/c/j/c;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lcom/octopus/ad/c/j/b;->f:Lcom/octopus/ad/c/j/c;

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    .line 60
    :cond_5
    monitor-exit v0

    return-void

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static a()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/octopus/ad/c/j/b;->d:Z

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/octopus/ad/c/j/b;->v()V

    .line 16
    :cond_0
    sget-boolean v0, Lcom/octopus/ad/c/j/b;->d:Z

    return v0
.end method

.method public static synthetic b(I)I
    .locals 0

    .line 1
    sput p0, Lcom/octopus/ad/c/j/b;->v:I

    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/octopus/ad/c/j/b;
    .locals 1

    .line 3
    invoke-static {}, Lcom/octopus/ad/c/j/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/c/j/b;->a(Landroid/content/Context;)Lcom/octopus/ad/c/j/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/octopus/ad/c/j/b;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->u:I

    return v0
.end method

.method public static synthetic c(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->w:I

    return p0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.vivo.vms"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/octopus/ad/c/j/b;->n:Ljava/lang/String;

    return-object p0
.end method

.method private c(ILjava/lang/String;)V
    .locals 5

    .line 6
    sget-object v0, Lcom/octopus/ad/c/j/b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/c/j/b;->b(ILjava/lang/String;)V

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x7d0

    .line 9
    :try_start_1
    sget-object v3, Lcom/octopus/ad/c/j/b;->c:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 10
    :catch_0
    :try_start_2
    const-string v3, "VMS_SDK_Client"

    const-string v4, "queryId: lock error"

    invoke-static {v3, v4}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    cmp-long p1, v3, v1

    if-ltz p1, :cond_0

    .line 12
    const-string p1, "VMS_SDK_Client"

    const-string p2, "query timeout"

    invoke-static {p1, p2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->v:I

    return v0
.end method

.method public static synthetic d(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->x:I

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/octopus/ad/c/j/b;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->A:I

    return v0
.end method

.method public static synthetic e(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->y:I

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/octopus/ad/c/j/b;->p:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->D:I

    return v0
.end method

.method public static synthetic f(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->z:I

    return p0
.end method

.method public static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/octopus/ad/c/j/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->w:I

    return v0
.end method

.method public static synthetic g(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->A:I

    return p0
.end method

.method public static synthetic h()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->x:I

    return v0
.end method

.method public static synthetic h(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->B:I

    return p0
.end method

.method public static synthetic i()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->C:I

    return v0
.end method

.method public static synthetic i(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->C:I

    return p0
.end method

.method public static synthetic j()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->y:I

    return v0
.end method

.method public static synthetic j(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->D:I

    return p0
.end method

.method public static synthetic k()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->z:I

    return v0
.end method

.method public static synthetic k(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->E:I

    return p0
.end method

.method public static synthetic l()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->E:I

    return v0
.end method

.method public static synthetic l(I)I
    .locals 0

    .line 2
    sput p0, Lcom/octopus/ad/c/j/b;->F:I

    return p0
.end method

.method public static synthetic m()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic n()I
    .locals 1

    .line 1
    sget v0, Lcom/octopus/ad/c/j/b;->B:I

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic o()Lcom/octopus/ad/c/j/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/c/j/b;->t:Lcom/octopus/ad/c/j/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/c/j/b;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/c/j/b;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic r()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/c/j/b;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic s()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/c/j/b;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method private t()V
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
    new-instance v2, Lcom/octopus/ad/c/j/b$1;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Lcom/octopus/ad/c/j/b$1;-><init>(Lcom/octopus/ad/c/j/b;)V

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

.method private static u()V
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
    sput-object v0, Lcom/octopus/ad/c/j/b;->j:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/octopus/ad/c/j/b$2;

    .line 14
    .line 15
    sget-object v1, Lcom/octopus/ad/c/j/b;->j:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lcom/octopus/ad/c/j/b$2;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/octopus/ad/c/j/b;->k:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method private static v()V
    .locals 3

    .line 1
    const-string v0, "persist.sys.identifierid.supported"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/octopus/ad/c/j/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {v0, v1}, Lcom/octopus/ad/c/j/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    sput-boolean v0, Lcom/octopus/ad/c/j/b;->d:Z

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public a(IIII)Ljava/lang/String;
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, ";"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 5
    sget-object v0, Lcom/octopus/ad/c/j/b;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v1, v0}, Lcom/octopus/ad/c/j/b;->a(ILjava/lang/String;)V

    .line 7
    sget-object v0, Lcom/octopus/ad/c/j/b;->l:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v1, v0}, Lcom/octopus/ad/c/j/b;->c(ILjava/lang/String;)V

    .line 9
    sget-object v2, Lcom/octopus/ad/c/j/b;->f:Lcom/octopus/ad/c/j/c;

    if-nez v2, :cond_1

    .line 10
    sget-object v2, Lcom/octopus/ad/c/j/b;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/octopus/ad/c/j/b;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 11
    :cond_1
    sget-object v0, Lcom/octopus/ad/c/j/b;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/octopus/ad/c/j/b;->a(ILjava/lang/String;)V

    .line 12
    sget-object v0, Lcom/octopus/ad/c/j/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    .line 13
    sget-object v0, Lcom/octopus/ad/c/j/b;->k:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 17
    :cond_0
    const-string p1, "appid"

    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 19
    sget-object p1, Lcom/octopus/ad/c/j/b;->k:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

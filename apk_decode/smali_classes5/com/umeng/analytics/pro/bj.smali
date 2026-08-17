.class public Lcom/umeng/analytics/pro/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/bf;


# static fields
.field private static final a:Ljava/lang/String; = "FreemeDeviceIdSupplier---"

.field private static final b:J = 0x1388L

.field private static final c:J = 0x64L

.field private static d:Z = false

.field private static volatile e:Lcom/umeng/analytics/pro/a;

.field private static final h:Landroid/content/ServiceConnection;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/bj$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/umeng/analytics/pro/bj$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/analytics/pro/bj;->h:Landroid/content/ServiceConnection;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/umeng/analytics/pro/bj;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a()Lcom/umeng/analytics/pro/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/a;)Lcom/umeng/analytics/pro/a;
    .locals 0

    .line 2
    sput-object p0, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/a;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FreemeDeviceIdSupplier---Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not available: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lcom/umeng/analytics/pro/bj;->d:Z

    return p0
.end method

.method public static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/umeng/analytics/pro/bj;->d:Z

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    .line 2
    const-string v0, "com.android.creator"

    invoke-static {p0, v0}, Lcom/umeng/analytics/pro/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    const-string p0, "FreemeDeviceIdSupplier---Creator service package not available"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.service.action.msa"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.creator.CreatorService"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7
    sget-object v0, Lcom/umeng/analytics/pro/bj;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FreemeDeviceIdSupplier---Binding CreatorService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 9
    const-string v0, "FreemeDeviceIdSupplier---Failed to bind CreatorService"

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private static c()Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 1
    sget-boolean v2, Lcom/umeng/analytics/pro/bj;->d:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/a;

    if-eqz v2, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/a;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FreemeDeviceIdSupplier---Creator OAID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    const-string v1, "FreemeDeviceIdSupplier---Failed to get Creator OAID after connection"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :cond_0
    const-wide/16 v4, 0x64

    .line 5
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-long/2addr v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    const-string v1, "FreemeDeviceIdSupplier---Interrupted while waiting for CreatorService"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 7
    :cond_1
    const-string v0, "FreemeDeviceIdSupplier---Timeout waiting for CreatorService connection"

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v3
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    .line 8
    :try_start_0
    sget-boolean v0, Lcom/umeng/analytics/pro/bj;->d:Z

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/umeng/analytics/pro/bj;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 10
    sput-boolean p0, Lcom/umeng/analytics/pro/bj;->d:Z

    const/4 p0, 0x0

    .line 11
    sput-object p0, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/a;

    .line 12
    const-string p0, "FreemeDeviceIdSupplier---CreatorService unbound"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 13
    const-string v0, "FreemeDeviceIdSupplier---Failed to unbind CreatorService"

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/pro/bj;->g:Landroid/content/Context;

    .line 5
    sget-boolean v1, Lcom/umeng/analytics/pro/bj;->d:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/a;

    if-eqz v1, :cond_1

    .line 6
    :try_start_0
    sget-object p1, Lcom/umeng/analytics/pro/bj;->e:Lcom/umeng/analytics/pro/a;

    invoke-interface {p1}, Lcom/umeng/analytics/pro/a;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->f:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FreemeDeviceIdSupplier---Creator OAID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/pro/bj;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/bj;->c(Landroid/content/Context;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    const-string v1, "FreemeDeviceIdSupplier---Failed to get Creator OAID"

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/bj;->c(Landroid/content/Context;)V

    return-object v0

    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/bj;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/bj;->c(Landroid/content/Context;)V

    .line 12
    throw p1

    .line 13
    :cond_1
    const-string v1, "FreemeDeviceIdSupplier---CreatorService not bound, attempting to bind..."

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lcom/umeng/analytics/pro/bj;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    const-string p1, "FreemeDeviceIdSupplier---Failed to bind CreatorService for OAID"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/bj;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/bj;->f:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/bj;->c(Landroid/content/Context;)V

    .line 18
    iget-object p1, p0, Lcom/umeng/analytics/pro/bj;->f:Ljava/lang/String;

    return-object p1
.end method

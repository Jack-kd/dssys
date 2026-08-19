.class public Lcom/octopus/ad/c/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/octopus/ad/c/e/d; = null

.field private static f:Z = false


# instance fields
.field a:Lcom/octopus/ad/c/e/b;

.field b:Lcom/octopus/ad/c/e/b;

.field c:Lcom/octopus/ad/c/e/b;

.field d:Lcom/octopus/ad/c/e/b;

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Lcom/octopus/ad/c/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/octopus/ad/c/e/b;

    .line 5
    .line 6
    const-string v1, "udid"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/octopus/ad/c/e/b;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/octopus/ad/c/e/d;->a:Lcom/octopus/ad/c/e/b;

    .line 12
    .line 13
    new-instance v0, Lcom/octopus/ad/c/e/b;

    .line 14
    .line 15
    const-string v1, "oaid"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/octopus/ad/c/e/b;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/octopus/ad/c/e/d;->b:Lcom/octopus/ad/c/e/b;

    .line 21
    .line 22
    new-instance v0, Lcom/octopus/ad/c/e/b;

    .line 23
    .line 24
    const-string v1, "vaid"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/octopus/ad/c/e/b;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/octopus/ad/c/e/d;->c:Lcom/octopus/ad/c/e/b;

    .line 30
    .line 31
    new-instance v0, Lcom/octopus/ad/c/e/b;

    .line 32
    .line 33
    const-string v1, "aaid"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/octopus/ad/c/e/b;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/octopus/ad/c/e/d;->d:Lcom/octopus/ad/c/e/b;

    .line 39
    .line 40
    new-instance v0, Lcom/octopus/ad/c/e/e;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/octopus/ad/c/e/e;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    .line 46
    .line 47
    return-void
.end method

.method public static final a()Lcom/octopus/ad/c/e/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/c/e/d;->e:Lcom/octopus/ad/c/e/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/octopus/ad/c/e/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/octopus/ad/c/e/d;->e:Lcom/octopus/ad/c/e/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/octopus/ad/c/e/d;

    invoke-direct {v1}, Lcom/octopus/ad/c/e/d;-><init>()V

    sput-object v1, Lcom/octopus/ad/c/e/d;->e:Lcom/octopus/ad/c/e/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/octopus/ad/c/e/d;->e:Lcom/octopus/ad/c/e/d;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/octopus/ad/c/e/f;
    .locals 3

    .line 7
    new-instance v0, Lcom/octopus/ad/c/e/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/c/e/f;-><init>(Ljava/lang/String;I)V

    if-nez p0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10
    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 11
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/c/e/f;->a:Ljava/lang/String;

    .line 12
    :cond_2
    const-string v1, "code"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 13
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/octopus/ad/c/e/f;->b:I

    .line 14
    :cond_3
    const-string v1, "expired"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 15
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/octopus/ad/c/e/f;->c:J

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.meizu.flyme.openidsdk/"

    .line 34
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string p0, "supported"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 35
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 37
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/octopus/ad/c/e/d;->a(Landroid/database/Cursor;)Lcom/octopus/ad/c/e/f;

    move-result-object p0

    .line 38
    iget v2, p0, Lcom/octopus/ad/c/e/f;->b:I

    const/16 v3, 0x3e8

    if-ne v3, v2, :cond_2

    const-string v2, "0"

    iget-object p0, p0, Lcom/octopus/ad/c/e/f;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 39
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_4
    throw p0

    :catch_0
    if-eqz v1, :cond_5

    .line 41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0
.end method

.method private b(Landroid/content/Context;Lcom/octopus/ad/c/e/b;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p2, Lcom/octopus/ad/c/e/b;->c:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v1}, Lcom/octopus/ad/c/e/d;->a(Landroid/database/Cursor;)Lcom/octopus/ad/c/e/f;

    move-result-object v3

    .line 5
    iget-object v0, v3, Lcom/octopus/ad/c/e/f;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/octopus/ad/c/e/b;->a(Ljava/lang/String;)V

    .line 7
    iget-wide v4, v3, Lcom/octopus/ad/c/e/f;->c:J

    invoke-virtual {p2, v4, v5}, Lcom/octopus/ad/c/e/b;->a(J)V

    .line 8
    iget v4, v3, Lcom/octopus/ad/c/e/f;->b:I

    invoke-virtual {p2, v4}, Lcom/octopus/ad/c/e/b;->a(I)V

    .line 9
    iget p2, v3, Lcom/octopus/ad/c/e/f;->b:I

    const/16 v3, 0x3e8

    if-eq p2, v3, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/octopus/ad/c/e/d;->b(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0, p1, v2}, Lcom/octopus/ad/c/e/d;->a(Landroid/content/Context;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/octopus/ad/c/e/d;->a(Landroid/content/Context;Z)Z

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    .line 14
    :goto_1
    throw p1

    :catch_0
    return-object v0
.end method

.method private static b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/c/e/d;->g:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 16
    monitor-exit p0

    return-void

    .line 17
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    const-string v1, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcom/octopus/ad/c/e/g;

    invoke-direct {v1}, Lcom/octopus/ad/c/e/g;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/c/e/d;->g:Landroid/content/BroadcastReceiver;

    .line 20
    const-string v2, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/octopus/ad/c/e/b;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/octopus/ad/c/e/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    iget-object p1, p2, Lcom/octopus/ad/c/e/b;->b:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/octopus/ad/c/e/d;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/c/e/d;->b(Landroid/content/Context;Lcom/octopus/ad/c/e/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/content/Context;Z)Z
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    invoke-virtual {v0}, Lcom/octopus/ad/c/e/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    invoke-virtual {p1}, Lcom/octopus/ad/c/e/e;->b()Z

    move-result p1

    return p1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    return v0

    .line 21
    :cond_2
    const-string v1, "com.meizu.flyme.openidsdk"

    invoke-static {p2, v1}, Lcom/octopus/ad/c/e/d;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 23
    :cond_3
    invoke-static {p2, v1}, Lcom/octopus/ad/c/e/d;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    iget-object v0, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    invoke-virtual {v0}, Lcom/octopus/ad/c/e/e;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    invoke-virtual {v0, p2}, Lcom/octopus/ad/c/e/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object p1, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    invoke-virtual {p1}, Lcom/octopus/ad/c/e/e;->b()Z

    move-result p1

    return p1

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    invoke-virtual {v0, p2}, Lcom/octopus/ad/c/e/e;->b(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/octopus/ad/c/e/d;->a(Landroid/content/Context;)Z

    move-result p1

    .line 28
    iget-object p2, p0, Lcom/octopus/ad/c/e/d;->h:Lcom/octopus/ad/c/e/e;

    invoke-virtual {p2, p1}, Lcom/octopus/ad/c/e/e;->a(Z)V

    return p1
.end method

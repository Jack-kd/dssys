.class public LZ1/f;
.super Ljava/lang/Object;


# static fields
.field public static volatile g:LZ1/f;


# instance fields
.field public a:LZ1/a;

.field public b:LZ1/a;

.field public c:LZ1/a;

.field public d:LZ1/a;

.field public e:LZ1/c;

.field public f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LZ1/a;

    .line 5
    .line 6
    const-string v1, "udid"

    .line 7
    .line 8
    invoke-direct {v0, v1}, LZ1/a;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LZ1/f;->a:LZ1/a;

    .line 12
    .line 13
    new-instance v0, LZ1/a;

    .line 14
    .line 15
    const-string v1, "oaid"

    .line 16
    .line 17
    invoke-direct {v0, v1}, LZ1/a;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, LZ1/f;->b:LZ1/a;

    .line 21
    .line 22
    new-instance v0, LZ1/a;

    .line 23
    .line 24
    const-string v1, "vaid"

    .line 25
    .line 26
    invoke-direct {v0, v1}, LZ1/a;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, LZ1/f;->d:LZ1/a;

    .line 30
    .line 31
    new-instance v0, LZ1/a;

    .line 32
    .line 33
    const-string v1, "aaid"

    .line 34
    .line 35
    invoke-direct {v0, v1}, LZ1/a;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, LZ1/f;->c:LZ1/a;

    .line 39
    .line 40
    new-instance v0, LZ1/c;

    .line 41
    .line 42
    invoke-direct {v0}, LZ1/c;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, LZ1/f;->e:LZ1/c;

    .line 46
    .line 47
    return-void
.end method

.method public static a(Landroid/database/Cursor;)LZ1/d;
    .locals 3

    .line 1
    new-instance v0, LZ1/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, LZ1/d;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "parseValue fail, cursor is null."

    .line 11
    .line 12
    invoke-static {p0}, LZ1/f;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string p0, "parseValue fail, cursor is closed."

    .line 23
    .line 24
    invoke-static {p0}, LZ1/f;->e(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    const-string v1, "value"

    .line 32
    .line 33
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ltz v1, :cond_2

    .line 38
    .line 39
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, LZ1/d;->a:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "parseValue fail, index < 0."

    .line 47
    .line 48
    invoke-static {v1}, LZ1/f;->e(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    const-string v1, "code"

    .line 52
    .line 53
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ltz v1, :cond_3

    .line 58
    .line 59
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iput v1, v0, LZ1/d;->b:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const-string v1, "parseCode fail, index < 0."

    .line 67
    .line 68
    invoke-static {v1}, LZ1/f;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    const-string v1, "expired"

    .line 72
    .line 73
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ltz v1, :cond_4

    .line 78
    .line 79
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    iput-wide v1, v0, LZ1/d;->c:J

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_4
    const-string p0, "parseExpired fail, index < 0."

    .line 87
    .line 88
    invoke-static {p0}, LZ1/f;->e(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public static final b()LZ1/f;
    .locals 2

    .line 1
    sget-object v0, LZ1/f;->g:LZ1/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, LZ1/f;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, LZ1/f;->g:LZ1/f;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, LZ1/f;

    .line 13
    .line 14
    invoke-direct {v1}, LZ1/f;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, LZ1/f;->g:LZ1/f;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, LZ1/f;->g:LZ1/f;

    .line 27
    .line 28
    return-object v0
.end method

.method public static d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    iget-object p1, p0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 16
    .line 17
    and-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_2
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    return-object p0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 9

    .line 1
    const-string v0, "querySupport version : 1.0.8"

    .line 2
    .line 3
    invoke-static {v0}, LZ1/f;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    .line 7
    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string p0, "supported"

    .line 19
    .line 20
    filled-new-array {p0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    if-eqz v8, :cond_2

    .line 32
    .line 33
    invoke-static {v8}, LZ1/f;->a(Landroid/database/Cursor;)LZ1/d;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget v0, p0, LZ1/d;->b:I

    .line 38
    .line 39
    const/16 v1, 0x3e8

    .line 40
    .line 41
    if-ne v1, v0, :cond_0

    .line 42
    .line 43
    const-string v0, "0"

    .line 44
    .line 45
    iget-object p0, p0, LZ1/d;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object p0, v0

    .line 56
    goto :goto_4

    .line 57
    :catch_0
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    :goto_0
    const/4 v7, 0x1

    .line 61
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 62
    .line 63
    .line 64
    return v7

    .line 65
    :cond_2
    if-eqz v8, :cond_3

    .line 66
    .line 67
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "querySupport, Exception : "

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, LZ1/f;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    if-eqz v8, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    :goto_3
    return v7

    .line 96
    :goto_4
    if-eqz v8, :cond_4

    .line 97
    .line 98
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 99
    .line 100
    .line 101
    :cond_4
    throw p0
.end method

.method public static i(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "getAppVersion, Exception : "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, LZ1/f;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;LZ1/a;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    const-string p1, "getId, openId = null."

    .line 5
    .line 6
    :goto_0
    invoke-static {p1}, LZ1/f;->e(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p2}, LZ1/a;->d()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p2, LZ1/a;->b:Ljava/lang/String;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, p1, v1}, LZ1/f;->g(Landroid/content/Context;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    const-string p1, "getId, isSupported = false."

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, p1, p2}, LZ1/f;->h(Landroid/content/Context;LZ1/a;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final g(Landroid/content/Context;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, LZ1/f;->e:LZ1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LZ1/c;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, LZ1/f;->e:LZ1/c;

    .line 12
    .line 13
    invoke-virtual {p1}, LZ1/c;->e()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const-string v1, "com.meizu.flyme.openidsdk"

    .line 27
    .line 28
    invoke-static {p2, v1}, LZ1/f;->d(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    return v0

    .line 39
    :cond_2
    invoke-static {p2, v1}, LZ1/f;->i(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p0, LZ1/f;->e:LZ1/c;

    .line 44
    .line 45
    invoke-virtual {v0}, LZ1/c;->b()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, LZ1/f;->e:LZ1/c;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, LZ1/c;->c(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    const-string p1, "use same version cache, safeVersion : "

    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, LZ1/f;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, LZ1/f;->e:LZ1/c;

    .line 73
    .line 74
    invoke-virtual {p1}, LZ1/c;->e()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
    :cond_3
    iget-object v0, p0, LZ1/f;->e:LZ1/c;

    .line 80
    .line 81
    invoke-virtual {v0, p2}, LZ1/c;->d(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, LZ1/f;->f(Landroid/content/Context;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const-string p2, "query support, result : "

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2}, LZ1/f;->e(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, LZ1/f;->e:LZ1/c;

    .line 102
    .line 103
    invoke-virtual {p2, p1}, LZ1/c;->a(Z)V

    .line 104
    .line 105
    .line 106
    return p1
.end method

.method public final h(Landroid/content/Context;LZ1/a;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "queryId : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p2, LZ1/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, LZ1/f;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    .line 21
    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v7, 0x0

    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v0, p2, LZ1/a;->c:Ljava/lang/String;

    .line 32
    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    const/4 v0, 0x1

    .line 45
    const/4 v2, 0x0

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    :try_start_1
    invoke-static {v1}, LZ1/f;->a(Landroid/database/Cursor;)LZ1/d;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v7, v3, LZ1/d;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2, v7}, LZ1/a;->c(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-wide v4, v3, LZ1/d;->c:J

    .line 58
    .line 59
    invoke-virtual {p2, v4, v5}, LZ1/a;->b(J)V

    .line 60
    .line 61
    .line 62
    iget v4, v3, LZ1/d;->b:I

    .line 63
    .line 64
    invoke-virtual {p2, v4}, LZ1/a;->a(I)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v5, p2, LZ1/a;->c:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, " errorCode : "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget p2, p2, LZ1/a;->d:I

    .line 83
    .line 84
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2}, LZ1/f;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget p2, v3, LZ1/d;->b:I

    .line 95
    .line 96
    const/16 v3, 0x3e8

    .line 97
    .line 98
    if-eq p2, v3, :cond_1

    .line 99
    .line 100
    invoke-virtual {p0, p1}, LZ1/f;->j(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, v2}, LZ1/f;->g(Landroid/content/Context;Z)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-nez p2, :cond_1

    .line 108
    .line 109
    invoke-virtual {p0, p1, v0}, LZ1/f;->g(Landroid/content/Context;Z)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const-string p2, "not support, forceQuery isSupported: "

    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_0
    invoke-static {p1}, LZ1/f;->e(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    move-object p1, v0

    .line 129
    move-object v7, v1

    .line 130
    goto :goto_3

    .line 131
    :catch_0
    move-exception v0

    .line 132
    move-object p1, v0

    .line 133
    move-object p2, v7

    .line 134
    move-object v7, v1

    .line 135
    goto :goto_2

    .line 136
    :cond_0
    invoke-virtual {p0, p1, v2}, LZ1/f;->g(Landroid/content/Context;Z)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_1

    .line 141
    .line 142
    invoke-virtual {p0, p1, v0}, LZ1/f;->g(Landroid/content/Context;Z)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const-string p2, "forceQuery isSupported : "

    .line 147
    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 158
    .line 159
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 160
    .line 161
    .line 162
    :cond_2
    return-object v7

    .line 163
    :catchall_1
    move-exception v0

    .line 164
    move-object p1, v0

    .line 165
    goto :goto_3

    .line 166
    :catch_1
    move-exception v0

    .line 167
    move-object p1, v0

    .line 168
    move-object p2, v7

    .line 169
    :goto_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v1, "queryId, Exception : "

    .line 172
    .line 173
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p1}, LZ1/f;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    .line 189
    .line 190
    if-eqz v7, :cond_3

    .line 191
    .line 192
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 193
    .line 194
    .line 195
    :cond_3
    return-object p2

    .line 196
    :goto_3
    if-eqz v7, :cond_4

    .line 197
    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 199
    .line 200
    .line 201
    :cond_4
    throw p1
.end method

.method public final declared-synchronized j(Landroid/content/Context;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LZ1/f;->f:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "com.meizu.flyme.openid.ACTION_OPEN_ID_CHANGE"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, LZ1/e;

    .line 19
    .line 20
    invoke-direct {v1}, LZ1/e;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, LZ1/f;->f:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    const-string v2, "com.meizu.flyme.openid.permission.OPEN_ID_CHANGE"

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    throw p1
.end method

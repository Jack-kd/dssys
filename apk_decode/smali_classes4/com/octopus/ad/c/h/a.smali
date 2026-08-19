.class public Lcom/octopus/ad/c/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/c/h/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/octopus/ad/c/h/c;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/c/h/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/c/h/a;->a:Lcom/octopus/ad/c/h/c;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/octopus/ad/c/h/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/octopus/ad/c/h/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/octopus/ad/c/h/a;->d:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance p1, Lcom/octopus/ad/c/h/d;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/octopus/ad/c/h/d;-><init>(Lcom/octopus/ad/c/h/a;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/octopus/ad/c/h/a;->e:Landroid/content/ServiceConnection;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/c/h/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/c/h/a;->b:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/c/h/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/octopus/ad/c/h/g;

    new-instance v2, Lcom/octopus/ad/c/h/a$1;

    invoke-direct {v2, p0}, Lcom/octopus/ad/c/h/a$1;-><init>(Lcom/octopus/ad/c/h/a;)V

    invoke-direct {v0, v2}, Lcom/octopus/ad/c/h/g;-><init>(Lcom/octopus/ad/c/h/g$a;)V

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/octopus/ad/c/h/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/c/h/a;->c:Ljava/lang/String;

    .line 8
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/c/h/a;->a:Lcom/octopus/ad/c/h/c;

    check-cast p1, Lcom/octopus/ad/c/h/c$a$a;

    iget-object v0, p0, Lcom/octopus/ad/c/h/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/c/h/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, p2}, Lcom/octopus/ad/c/h/c$a$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    const-string v1, ""

    :cond_2
    return-object v1
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.heytap.openid"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, LJ/a;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    const-wide/16 v4, 0x1

    cmp-long p1, v1, v4

    if-ltz p1, :cond_0

    return v3

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, v3, :cond_2

    return v3

    :catch_0
    :cond_2
    return v0
.end method

.method public declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/octopus/ad/c/h/a;->a:Lcom/octopus/ad/c/h/c;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/content/ComponentName;

    .line 22
    .line 23
    const-string v2, "com.heytap.openid"

    .line 24
    .line 25
    const-string v3, "com.heytap.openid.IdentifyService"

    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string v1, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/octopus/ad/c/h/a;->e:Landroid/content/ServiceConnection;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/octopus/ad/c/h/a;->d:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/octopus/ad/c/h/a;->d:Ljava/lang/Object;

    .line 51
    .line 52
    const-wide/16 v2, 0xbb8

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    .line 61
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :goto_0
    monitor-exit v0

    .line 65
    goto :goto_2

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    throw p1

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    goto :goto_3

    .line 70
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/octopus/ad/c/h/a;->a:Lcom/octopus/ad/c/h/c;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    const-string p1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-object p1

    .line 78
    :cond_1
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/c/h/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    monitor-exit p0

    .line 83
    return-object p1

    .line 84
    :cond_2
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string p2, "Cannot run on MainThread"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    throw p1
.end method

.class public final Lcom/octopus/ad/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z = false

.field private static volatile b:Ljava/lang/String; = null

.field private static volatile c:Ljava/lang/String; = null

.field private static volatile d:Ljava/lang/String; = null

.field private static volatile e:Ljava/lang/String; = null

.field private static volatile f:Ljava/lang/String; = ""

.field private static volatile g:Ljava/lang/String; = null

.field private static volatile h:Ljava/lang/String; = null

.field private static volatile i:Ljava/lang/String; = null

.field private static volatile j:Ljava/lang/String; = null

.field private static k:Z = true

.field private static l:Z = true

.field private static m:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 8
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/octopus/ad/OctopusAdSdkController;->getImei()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/d/a/b;->c:Ljava/lang/String;

    goto :goto_2

    .line 10
    :cond_0
    sget-object v0, Lcom/octopus/ad/d/a/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 11
    const-class v0, Lcom/octopus/ad/d/a/b;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/octopus/ad/d/a/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13
    invoke-static {p0}, Lcom/octopus/ad/d/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/d/a/b;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 15
    :cond_2
    :goto_2
    sget-object p0, Lcom/octopus/ad/d/a/b;->c:Ljava/lang/String;

    if-nez p0, :cond_3

    .line 16
    const-string p0, ""

    sput-object p0, Lcom/octopus/ad/d/a/b;->c:Ljava/lang/String;

    .line 17
    :cond_3
    sget-object p0, Lcom/octopus/ad/d/a/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/octopus/ad/d/a/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    const-class v0, Lcom/octopus/ad/d/a/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/octopus/ad/d/a/b;->a:Z

    if-nez v1, :cond_1

    .line 5
    invoke-static {p0}, Lcom/octopus/ad/d/a/a;->a(Landroid/app/Application;)V

    const/4 p0, 0x1

    .line 6
    sput-boolean p0, Lcom/octopus/ad/d/a/b;->a:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, "newOaid"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/octopus/ad/d/a/b;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/octopus/ad/d/a/b;->l:Z

    .line 5
    const-class v0, Lcom/octopus/ad/d/a/b;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/octopus/ad/d/a/b$1;

    invoke-direct {v1}, Lcom/octopus/ad/d/a/b$1;-><init>()V

    invoke-static {p0, v1}, Lcom/octopus/ad/c/e;->a(Landroid/content/Context;Lcom/octopus/ad/c/d;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    const-string v0, "newOaid"

    sget-object v1, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_2
    sget-object p0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 13
    const-string p0, ""

    sput-object p0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Oaid is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/d/a/f;->b(Ljava/lang/Object;)V

    .line 15
    sget-object p0, Lcom/octopus/ad/d/a/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "hoaid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-boolean v0, Lcom/octopus/ad/d/a/b;->m:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/octopus/ad/d/a/b;->m:Z

    .line 23
    .line 24
    const-class v0, Lcom/octopus/ad/d/a/b;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-static {}, Lcom/octopus/ad/d/a/a;->a()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sput-object v1, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v1, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    new-instance v1, Lcom/octopus/ad/d/a/b$2;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/octopus/ad/d/a/b$2;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v1}, Lcom/octopus/ad/d/a/a;->a(Landroid/content/Context;Lcom/octopus/ad/d/a/c;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    const-string v0, "hoaid"

    .line 70
    .line 71
    sget-object v1, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0

    .line 79
    :cond_1
    :goto_2
    sget-object p0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 80
    .line 81
    if-nez p0, :cond_2

    .line 82
    .line 83
    const-string p0, ""

    .line 84
    .line 85
    sput-object p0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 86
    .line 87
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v0, "Hoaid is: "

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    sget-object v0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/octopus/ad/d/a/f;->b(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p0, Lcom/octopus/ad/d/a/b;->e:Ljava/lang/String;

    .line 110
    .line 111
    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "gaid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lcom/octopus/ad/d/a/b;->j:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lcom/octopus/ad/d/a/b;->j:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/octopus/ad/d/a/b;->j:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    sput-object p0, Lcom/octopus/ad/d/a/b;->j:Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Lcom/octopus/ad/d/a/b;->j:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/c/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "Gaid is: "

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/octopus/ad/d/a/b;->j:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lcom/octopus/ad/d/a/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lcom/octopus/ad/d/a/b;->j:Ljava/lang/String;

    .line 54
    .line 55
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/octopus/ad/d/a/b;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/octopus/ad/d/a/b;->k:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUsePhoneState()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    const-class v0, Lcom/octopus/ad/d/a/b;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-static {p0}, Lcom/octopus/ad/d/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    sput-object p0, Lcom/octopus/ad/d/a/b;->f:Ljava/lang/String;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_1
    :goto_0
    sget-object p0, Lcom/octopus/ad/d/a/b;->f:Ljava/lang/String;

    .line 39
    .line 40
    return-object p0
.end method

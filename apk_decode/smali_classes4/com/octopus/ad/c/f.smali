.class public Lcom/octopus/ad/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/octopus/ad/c/c; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/octopus/ad/c/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    sget-object v2, Lcom/octopus/ad/c/f;->a:Lcom/octopus/ad/c/c;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/octopus/ad/c/a;->a()Lcom/octopus/ad/c/c;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sput-object v2, Lcom/octopus/ad/c/f;->a:Lcom/octopus/ad/c/c;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    sget-object v2, Lcom/octopus/ad/c/f;->a:Lcom/octopus/ad/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :try_start_1
    invoke-interface {v2, p0}, Lcom/octopus/ad/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    sput-object p0, Lcom/octopus/ad/c/f;->b:Ljava/lang/String;

    .line 46
    .line 47
    :cond_2
    const/4 p0, 0x1

    .line 48
    sput-boolean p0, Lcom/octopus/ad/c/f;->c:Z

    .line 49
    .line 50
    sget-object p0, Lcom/octopus/ad/c/f;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-object p0

    .line 54
    :catchall_1
    monitor-exit v0

    .line 55
    return-object v1

    .line 56
    :cond_3
    monitor-exit v0

    .line 57
    return-object v1

    .line 58
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_4
    :goto_2
    monitor-exit v0

    .line 61
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/octopus/ad/c/f;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/octopus/ad/c/f;->b:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

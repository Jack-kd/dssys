.class public Lcom/kuaishou/weapon/p0/dm;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kuaishou/weapon/p0/dm$d;,
        Lcom/kuaishou/weapon/p0/dm$c;,
        Lcom/kuaishou/weapon/p0/dm$b;,
        Lcom/kuaishou/weapon/p0/dm$a;,
        Lcom/kuaishou/weapon/p0/dm$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 4

    .line 1
    const-class v0, Lcom/kuaishou/weapon/p0/dm;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x19

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    sget v3, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    :goto_0
    if-le v1, v2, :cond_3

    .line 27
    .line 28
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$d;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_1
    :try_start_2
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :cond_3
    const/16 v2, 0x18

    .line 39
    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    :try_start_3
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$c;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_2
    move-exception v1

    .line 48
    :try_start_4
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_3
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 53
    :cond_4
    :try_start_6
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_4
    move-exception v1

    .line 59
    :try_start_7
    invoke-static {p0, p1}, Lcom/kuaishou/weapon/p0/dm$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 60
    .line 61
    .line 62
    :goto_1
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_5
    :try_start_8
    throw v1

    .line 65
    :goto_2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_5
    :goto_3
    monitor-exit v0

    .line 68
    return-void
.end method

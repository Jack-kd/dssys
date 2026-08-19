.class public Lcom/varbto/utils/anr/AnrHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/varbto/utils/anr/AnrRecorder;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk1/r;Lcom/varbto/utils/anr/AnrRecorder;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 p4, 0x0

    .line 7
    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/varbto/utils/anr/AnrHandler;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/varbto/utils/anr/AnrHandler;->b:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/varbto/utils/anr/AnrHandler;->a:Lcom/varbto/utils/anr/AnrRecorder;

    .line 19
    .line 20
    iput-boolean p6, p0, Lcom/varbto/utils/anr/AnrHandler;->d:Z

    .line 21
    .line 22
    return-void
.end method

.method public static a(Landroid/app/ApplicationExitInfo;JLjava/io/File;)V
    .locals 5

    .line 21
    const-string v0, "===== VerbAnr Report =====\ntriggerSource=exit_info\ntimestamp="

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    goto/16 :goto_6

    .line 22
    :cond_0
    :try_start_0
    invoke-static {p0}, Ll1/b;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 23
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 24
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {p3, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\nexitReason=ANR\ndescription="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p0}, Ll1/a;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Ll1/a;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    const-string p1, ""

    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nimportance="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p0}, Ll1/c;->a(Landroid/app/ApplicationExitInfo;)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n===== End Header =====\n"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p0, 0x2000

    .line 30
    new-array p0, p0, [B

    .line 31
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_4

    .line 32
    invoke-virtual {p3, p0, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 33
    :cond_4
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 34
    sget-boolean p0, Lk1/h;->a:Z

    if-eqz p0, :cond_5

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :cond_5
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 38
    :goto_2
    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p0

    .line 39
    sget-boolean p1, Lk1/h;->a:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Save ExitInfo trace failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnrHandler"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/varbto/utils/anr/AnrHandler;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "anr_reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ll1/d;

    invoke-direct {v2, p0, v0}, Ll1/d;-><init>(Lcom/varbto/utils/anr/AnrHandler;Ljava/io/File;)V

    const-string v0, "AnrBackfill"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final synthetic a(Ljava/io/File;)V
    .locals 7

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->b:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/varbto/utils/anr/AnrHandler;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2, v2}, Landroidx/work/impl/utils/a;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/varbto/utils/anr/AnrHandler;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/varbto/internal/c;->b(Landroid/content/Context;)Lcom/varbto/internal/c;

    move-result-object v1

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroidx/work/impl/utils/b;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v2

    .line 13
    invoke-static {v2}, Landroidx/work/impl/utils/c;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {v2}, Landroidx/work/impl/utils/d;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v1, v3, v4}, Lcom/varbto/internal/c;->j(J)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 16
    :cond_5
    invoke-static {v2, v3, v4, p1}, Lcom/varbto/utils/anr/AnrHandler;->a(Landroid/app/ApplicationExitInfo;JLjava/io/File;)V

    .line 17
    const-string v5, "exit_info"

    invoke-virtual {v1, v3, v4, v5}, Lcom/varbto/internal/c;->d(JLjava/lang/String;)V

    .line 18
    sget-boolean v3, Lk1/h;->a:Z

    if-eqz v3, :cond_2

    .line 19
    invoke-static {v2}, Ll1/a;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_6
    return-void

    .line 20
    :goto_1
    sget-boolean v0, Lk1/h;->a:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Backfill ANR failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnrHandler"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public getAnrCountWithinDays(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->a:Lcom/varbto/utils/anr/AnrRecorder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/varbto/utils/anr/AnrRecorder;->getAnrCountWithinDays(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getAnrFileCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->a:Lcom/varbto/utils/anr/AnrRecorder;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/varbto/utils/anr/AnrRecorder;->getAnrFileCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAnrFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->a:Lcom/varbto/utils/anr/AnrRecorder;

    invoke-interface {v0}, Lcom/varbto/utils/anr/AnrRecorder;->getAnrFileList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnrFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->a:Lcom/varbto/utils/anr/AnrRecorder;

    invoke-interface {v0, p1}, Lcom/varbto/utils/anr/AnrRecorder;->getAnrFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAnrTimestampsWithinDays(I)Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->a:Lcom/varbto/utils/anr/AnrRecorder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/varbto/utils/anr/AnrRecorder;->getAnrTimestampsWithinDays(I)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public markFileSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->a:Lcom/varbto/utils/anr/AnrRecorder;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/varbto/utils/anr/AnrRecorder;->markFileSent(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startMonitoring()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/varbto/utils/anr/AnrHandler;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "anr_reports"

    .line 20
    .line 21
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v2, p0, Lcom/varbto/utils/anr/AnrHandler;->b:Landroid/content/Context;

    .line 34
    .line 35
    instance-of v3, v2, Landroid/app/Activity;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_2
    iget-boolean v3, p0, Lcom/varbto/utils/anr/AnrHandler;->d:Z

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v4, Lk1/a;

    .line 50
    .line 51
    invoke-direct {v4, p0}, Lk1/a;-><init>(Lcom/varbto/utils/anr/AnrHandler;)V

    .line 52
    .line 53
    .line 54
    new-instance v5, Lk1/w;

    .line 55
    .line 56
    invoke-direct {v5}, Lk1/w;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v2, v5, Lk1/w;->a:Landroid/content/Context;

    .line 60
    .line 61
    iput-object v0, v5, Lk1/w;->b:Ljava/lang/String;

    .line 62
    .line 63
    iput-boolean v3, v5, Lk1/w;->c:Z

    .line 64
    .line 65
    iput-object v4, v5, Lk1/w;->d:Lk1/a;

    .line 66
    .line 67
    sget-object v0, Lk1/B;->e:Lk1/B;

    .line 68
    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    const-class v0, Lk1/B;

    .line 72
    .line 73
    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v2, Lk1/B;->e:Lk1/B;

    .line 75
    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    new-instance v2, Lk1/B;

    .line 79
    .line 80
    invoke-direct {v2}, Lk1/B;-><init>()V

    .line 81
    .line 82
    .line 83
    sput-object v2, Lk1/B;->e:Lk1/B;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_0
    monitor-exit v0

    .line 89
    goto :goto_2

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw v1

    .line 92
    :cond_4
    :goto_2
    sget-object v0, Lk1/B;->e:Lk1/B;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    :try_start_1
    const-string v3, "x"

    .line 99
    .line 100
    const-string v4, "----------------------- v1.1.3 -----------------------"

    .line 101
    .line 102
    new-array v6, v2, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v3, v4, v6}, Lk1/s;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v5, Lk1/w;->a:Landroid/content/Context;

    .line 108
    .line 109
    if-eqz v3, :cond_7

    .line 110
    .line 111
    new-instance v3, Lk1/A;

    .line 112
    .line 113
    invoke-direct {v3, v5}, Lk1/A;-><init>(Lk1/w;)V

    .line 114
    .line 115
    .line 116
    sget-object v4, Lk1/v;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 117
    .line 118
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    iget-boolean v3, v0, Lk1/B;->b:Z

    .line 122
    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    iput-boolean v1, v0, Lk1/B;->b:Z

    .line 127
    .line 128
    new-instance v1, Lk1/z;

    .line 129
    .line 130
    invoke-direct {v1, v0, v5}, Lk1/z;-><init>(Lk1/B;Lk1/w;)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    if-ne v3, v4, :cond_6

    .line 142
    .line 143
    invoke-virtual {v1}, Lk1/z;->run()V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :catchall_1
    move-exception v1

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    sget-object v3, Lk1/v;->a:Landroid/os/Handler;

    .line 150
    .line 151
    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    const-string v3, "Context cant not be null."

    .line 158
    .line 159
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :goto_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 164
    .line 165
    const-string v4, "x"

    .line 166
    .line 167
    const-string v5, "startVerb() >>> Start verb anr failed. "

    .line 168
    .line 169
    invoke-static {v4, v5, v1, v3}, Lk1/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iput-boolean v2, v0, Lk1/B;->b:Z

    .line 173
    .line 174
    :goto_4
    invoke-virtual {p0}, Lcom/varbto/utils/anr/AnrHandler;->a()V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/varbto/utils/anr/AnrHandler;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

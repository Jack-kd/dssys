.class public Lcom/umeng/analytics/pro/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/bf;


# static fields
.field private static final a:Ljava/lang/String; = "Lenovo"

.field private static final b:Ljava/lang/String; = "com.zui.deviceidservice"

.field private static final c:Ljava/lang/String; = "com.zui.deviceidservice.DeviceidService"


# instance fields
.field private volatile d:Ljava/lang/String;

.field private e:Ljava/util/concurrent/CountDownLatch;

.field private f:Landroid/content/Context;


# direct methods
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
    iput-object v0, p0, Lcom/umeng/analytics/pro/bm;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/bm;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/umeng/analytics/pro/bm;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/umeng/analytics/pro/bm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/umeng/analytics/pro/bm;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/umeng/analytics/pro/bm;->e:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 3
    const-string v0, "Lenovo"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->f:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->e:Ljava/util/concurrent/CountDownLatch;

    .line 6
    new-instance p1, Lcom/umeng/analytics/pro/bm$1;

    invoke-direct {p1, p0}, Lcom/umeng/analytics/pro/bm$1;-><init>(Lcom/umeng/analytics/pro/bm;)V

    .line 7
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 8
    const-string v4, "com.zui.deviceidservice"

    const-string v5, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v4, p0, Lcom/umeng/analytics/pro/bm;->f:Landroid/content/Context;

    invoke-virtual {v4, v3, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 10
    iget-object v2, p0, Lcom/umeng/analytics/pro/bm;->e:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    const-string v2, "getOAID time-out"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v1, p0, Lcom/umeng/analytics/pro/bm;->f:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v0

    .line 14
    :goto_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID interrupted. e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/umeng/analytics/pro/bm;->f:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 16
    throw v0
.end method

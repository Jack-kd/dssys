.class Lcom/umeng/analytics/pro/bh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/bh;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/bh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/bh$1;->a:Lcom/umeng/analytics/pro/bh;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/umeng/analytics/pro/b$b;->a(Landroid/os/IBinder;)Lcom/umeng/analytics/pro/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/umeng/analytics/pro/bh;->a(Lcom/umeng/analytics/pro/b;)Lcom/umeng/analytics/pro/b;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/umeng/analytics/pro/bh$1;->a:Lcom/umeng/analytics/pro/bh;

    .line 9
    .line 10
    invoke-static {}, Lcom/umeng/analytics/pro/bh;->a()Lcom/umeng/analytics/pro/b;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object v0, p0, Lcom/umeng/analytics/pro/bh$1;->a:Lcom/umeng/analytics/pro/bh;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/umeng/analytics/pro/bh;->a(Lcom/umeng/analytics/pro/bh;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p2, v0}, Lcom/umeng/analytics/pro/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/bh;->a(Lcom/umeng/analytics/pro/bh;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/umeng/analytics/pro/bh$1;->a:Lcom/umeng/analytics/pro/bh;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/umeng/analytics/pro/bh;->b(Lcom/umeng/analytics/pro/bh;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p1

    .line 40
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v0, "onServiceConnected failed e="

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string p2, "Coolpad"

    .line 62
    .line 63
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/bh$1;->a:Lcom/umeng/analytics/pro/bh;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/umeng/analytics/pro/bh;->c(Lcom/umeng/analytics/pro/bh;)Ljava/util/concurrent/CountDownLatch;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/umeng/analytics/pro/bh;->a(Lcom/umeng/analytics/pro/b;)Lcom/umeng/analytics/pro/b;

    .line 3
    .line 4
    .line 5
    return-void
.end method

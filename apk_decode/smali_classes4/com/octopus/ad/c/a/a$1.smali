.class Lcom/octopus/ad/c/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/c/a/a;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/c/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/c/a/a$1;->a:Lcom/octopus/ad/c/a/a;

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
    .locals 2

    .line 1
    const-string p1, "Coolpad"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/octopus/ad/c/a/b$a;->a(Landroid/os/IBinder;)Lcom/octopus/ad/c/a/b;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/octopus/ad/c/a/a;->a(Lcom/octopus/ad/c/a/b;)Lcom/octopus/ad/c/a/b;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/octopus/ad/c/a/a$1;->a:Lcom/octopus/ad/c/a/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/octopus/ad/c/a/a;->a(Lcom/octopus/ad/c/a/a;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/octopus/ad/c/a/a$1;->a:Lcom/octopus/ad/c/a/a;

    .line 21
    .line 22
    invoke-interface {p2, v0}, Lcom/octopus/ad/c/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {v1, p2}, Lcom/octopus/ad/c/a/a;->a(Lcom/octopus/ad/c/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "onServiceConnected: oaid = "

    .line 35
    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/octopus/ad/c/a/a;->a()Lcom/octopus/ad/c/a/b;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/octopus/ad/c/a/a$1;->a:Lcom/octopus/ad/c/a/a;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/octopus/ad/c/a/a;->a(Lcom/octopus/ad/c/a/a;)Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lcom/octopus/ad/c/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/c/a/a$1;->a:Lcom/octopus/ad/c/a/a;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/octopus/ad/c/a/a;->b(Lcom/octopus/ad/c/a/a;)Ljava/util/concurrent/CountDownLatch;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p2

    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception p2

    .line 82
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "onServiceConnected failed e="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p1, p2}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :goto_2
    iget-object p2, p0, Lcom/octopus/ad/c/a/a$1;->a:Lcom/octopus/ad/c/a/a;

    .line 108
    .line 109
    invoke-static {p2}, Lcom/octopus/ad/c/a/a;->b(Lcom/octopus/ad/c/a/a;)Ljava/util/concurrent/CountDownLatch;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/octopus/ad/c/a/a;->a(Lcom/octopus/ad/c/a/b;)Lcom/octopus/ad/c/a/b;

    .line 3
    .line 4
    .line 5
    return-void
.end method

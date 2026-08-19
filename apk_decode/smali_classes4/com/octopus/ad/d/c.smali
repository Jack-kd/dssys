.class public Lcom/octopus/ad/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/octopus/ad/d/c;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/octopus/ad/b/a;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/octopus/ad/d/b;

.field private j:Lcom/octopus/ad/a/c$b;

.field private k:Lcom/octopus/ad/model/ComplianceInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/octopus/ad/d/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/octopus/ad/d/c;->a:Lcom/octopus/ad/d/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/octopus/ad/d/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/octopus/ad/d/c;->a:Lcom/octopus/ad/d/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/octopus/ad/d/c;

    invoke-direct {v1, p0}, Lcom/octopus/ad/d/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/octopus/ad/d/c;->a:Lcom/octopus/ad/d/c;

    goto :goto_0

    :catchall_0
    move-exception p0

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

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/octopus/ad/d/c;->a:Lcom/octopus/ad/d/c;

    return-object p0
.end method

.method private g()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/c;->i:Lcom/octopus/ad/d/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v2, "ApkDownloadManager"

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "apkUrl can not be empty!"

    .line 20
    .line 21
    invoke-static {v2, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/d/c;->i:Lcom/octopus/ad/d/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string v0, "apkName can not be empty!"

    .line 38
    .line 39
    invoke-static {v2, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/d/c;->i:Lcom/octopus/ad/d/b;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/octopus/ad/d/b;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, ".apk"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    const-string v0, "apkName must endsWith .apk!"

    .line 58
    .line 59
    invoke-static {v2, v0}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_3
    const/4 v0, 0x1

    .line 64
    return v0
.end method


# virtual methods
.method public a()Lcom/octopus/ad/d/b;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/d/c;->i:Lcom/octopus/ad/d/b;

    return-object v0
.end method

.method public a(I)Lcom/octopus/ad/d/c;
    .locals 0

    .line 10
    iput p1, p0, Lcom/octopus/ad/d/c;->d:I

    return-object p0
.end method

.method public a(Lcom/octopus/ad/a/c$b;)Lcom/octopus/ad/d/c;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/octopus/ad/d/c;->j:Lcom/octopus/ad/a/c$b;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/b/a;)Lcom/octopus/ad/d/c;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/octopus/ad/d/c;->c:Lcom/octopus/ad/b/a;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/d/b;)Lcom/octopus/ad/d/c;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/octopus/ad/d/c;->i:Lcom/octopus/ad/d/b;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/model/ComplianceInfo;)Lcom/octopus/ad/d/c;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/octopus/ad/d/c;->k:Lcom/octopus/ad/model/ComplianceInfo;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/octopus/ad/d/c;
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/octopus/ad/d/c;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/octopus/ad/d/c;->g:Z

    .line 16
    iput-boolean v0, p0, Lcom/octopus/ad/d/c;->h:Z

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/d/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/octopus/ad/d/c;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/octopus/ad/d/c;->f:Z

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/octopus/ad/d/c;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public b()Lcom/octopus/ad/model/ComplianceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/c;->k:Lcom/octopus/ad/model/ComplianceInfo;

    return-object v0
.end method

.method public b(Z)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/d/c;->j:Lcom/octopus/ad/a/c$b;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v2, p0, Lcom/octopus/ad/d/c;->h:Z

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/octopus/ad/d/c;->h:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcom/octopus/ad/d/c;->g:Z

    if-eqz v2, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    iput-boolean v1, p0, Lcom/octopus/ad/d/c;->g:Z

    .line 8
    :goto_0
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$b;->v()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 9
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/a/c$i;

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v2}, Lcom/octopus/ad/a/c$i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 12
    invoke-virtual {v2}, Lcom/octopus/ad/a/c$i;->d()Ljava/lang/String;

    move-result-object v2

    .line 13
    const-string v3, "track=oct"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_3

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&opt=5"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 15
    :cond_3
    iget v3, p0, Lcom/octopus/ad/d/c;->d:I

    if-eqz v3, :cond_4

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&opt="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/octopus/ad/d/c;->d:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_4
    :goto_2
    new-instance v3, Lcom/octopus/ad/internal/i;

    invoke-direct {v3, v2}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/octopus/ad/internal/c/d;->b()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->u()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/octopus/ad/d/c;->f:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/content/Context;

    .line 33
    .line 34
    const-class v2, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const/high16 v1, 0x10000000

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/octopus/ad/d/c;->c:Lcom/octopus/ad/b/a;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void

    .line 66
    :goto_0
    const-string v1, "OctopusAd"

    .line 67
    .line 68
    const-string v2, "An Exception Caught"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/octopus/ad/d/c;->e()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d/c;->c:Lcom/octopus/ad/b/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/d/c;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/content/Context;

    .line 23
    .line 24
    new-instance v1, Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/content/Context;

    .line 33
    .line 34
    const-class v3, Lcom/octopus/ad/DownloadService;

    .line 35
    .line 36
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void

    .line 46
    :goto_0
    const-string v1, "OctopusAd"

    .line 47
    .line 48
    const-string v2, "An Exception Caught"

    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/octopus/ad/d/c;->a:Lcom/octopus/ad/d/c;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/octopus/ad/d/c;->b:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    return-void
.end method

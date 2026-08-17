.class public Lcom/ubix/ssp/open/comm/DownloadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_TIME:J = 0x0L

.field private static final MAX_POOL_SIZE:I

.field public static final TAG:Ljava/lang/String; = "DownloadService"

.field public static canRequest:Z = true


# instance fields
.field private binder:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

.field private mExecutor:Lcom/ubix/ssp/ad/e/s/i/a;

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ubix/ssp/ad/e/s/i/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/ubix/ssp/open/comm/DownloadService;->CPU_COUNT:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/ubix/ssp/open/comm/DownloadService;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/ubix/ssp/open/comm/DownloadService;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/ubix/ssp/ad/e/s/i/a;

    sget v1, Lcom/ubix/ssp/open/comm/DownloadService;->CORE_POOL_SIZE:I

    sget v2, Lcom/ubix/ssp/open/comm/DownloadService;->MAX_POOL_SIZE:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/ubix/ssp/ad/e/s/i/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mExecutor:Lcom/ubix/ssp/ad/e/s/i/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mTasks:Ljava/util/HashMap;

    new-instance v0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    invoke-direct {v0, p0}, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;-><init>(Lcom/ubix/ssp/open/comm/DownloadService;)V

    iput-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->binder:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    return-void
.end method

.method public static synthetic access$000(Lcom/ubix/ssp/open/comm/DownloadService;Lcom/ubix/ssp/ad/e/s/g/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/open/comm/DownloadService;->executeDownload(Lcom/ubix/ssp/ad/e/s/g/c;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/ubix/ssp/open/comm/DownloadService;)Lcom/ubix/ssp/ad/e/s/i/a;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mExecutor:Lcom/ubix/ssp/ad/e/s/i/a;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/ubix/ssp/open/comm/DownloadService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mTasks:Ljava/util/HashMap;

    return-object p0
.end method

.method private declared-synchronized executeDownload(Lcom/ubix/ssp/ad/e/s/g/c;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mTasks:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/s/i/b;

    new-instance v2, Lcom/ubix/ssp/ad/e/s/h/a;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ubix/ssp/ad/e/s/h/a;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/s/h/a;->b(Ljava/lang/String;)Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v3

    const/4 v4, -0x1

    const/16 v5, 0x2e

    const/16 v6, 0x2a

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->g()V

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mExecutor:Lcom/ubix/ssp/ad/e/s/i/a;

    invoke-virtual {p1, v1}, Lcom/ubix/ssp/ad/e/s/i/a;->a(Lcom/ubix/ssp/ad/e/s/i/b;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v0

    const-string v1, "service_intent_unique_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v0

    const-string v1, "service_intent_notify_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "ACTION_RESUME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/m;->b(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    if-eq p1, v4, :cond_2

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mTasks:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v7}, Lcom/ubix/ssp/ad/e/s/g/a;->a(Lcom/ubix/ssp/ad/e/s/g/b;)V

    const-string v0, "ACTION_COMPLETE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v0

    const-string v1, "service_intent_unique_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v0

    const-string v1, "service_intent_notify_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/m;->b(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->c()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mExecutor:Lcom/ubix/ssp/ad/e/s/i/a;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/ubix/ssp/ad/e/s/i/a;->a(Lcom/ubix/ssp/ad/e/s/i/b;)I

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mExecutor:Lcom/ubix/ssp/ad/e/s/i/a;

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/s/i/a;->a(Lcom/ubix/ssp/ad/e/s/i/b;)I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "ACTION_BIND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v2

    const-string v3, "service_intent_unique_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/c;->c()I

    move-result p1

    const-string v2, "service_intent_notify_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result p1

    const-string v2, "service_intent_fellow_notify_ids"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/s/i/b;->a(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/e/s/g/b;->b()I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result p1

    if-eq p1, v4, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v3}, Lcom/ubix/ssp/ad/e/s/g/a;->a(Lcom/ubix/ssp/ad/e/s/g/b;)V

    const-string v1, "ACTION_COMPLETE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v1

    const-string v2, "service_intent_unique_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->d()I

    move-result v0

    const-string v1, "service_intent_notify_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/m;->b(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/ubix/ssp/ad/e/s/g/b;->b(I)V

    new-instance v1, Lcom/ubix/ssp/ad/e/s/i/b;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/c;->d()Z

    move-result p1

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/ubix/ssp/ad/e/s/i/b;-><init>(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/a;Lcom/ubix/ssp/ad/e/s/h/a;Z)V

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mTasks:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mExecutor:Lcom/ubix/ssp/ad/e/s/i/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private isAllStopped()Z
    .locals 3

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mTasks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/e/s/i/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/s/i/b;->d()I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService;->binder:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ACTION_USER_OPERATION"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/a0/m;->b(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

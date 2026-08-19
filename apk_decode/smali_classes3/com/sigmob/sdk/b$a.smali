.class Lcom/sigmob/sdk/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/utils/AdLifecycleManager$LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/b$a;->c:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/b$a;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/b$a;->g:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/b$a;->h:Z

    iput v0, p0, Lcom/sigmob/sdk/b$a;->j:I

    new-instance v0, Lcom/sigmob/sdk/b$a$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/b$a$1;-><init>(Lcom/sigmob/sdk/b$a;)V

    iput-object v0, p0, Lcom/sigmob/sdk/b$a;->k:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/czhj/sdk/common/utils/AdLifecycleManager;->getInstance()Lcom/czhj/sdk/common/utils/AdLifecycleManager;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/b;->h()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/utils/AdLifecycleManager;->initialize(Landroid/app/Application;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sigmob/sdk/b$a;->b:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session_start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sigmob/sdk/b$a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sigmob/sdk/b$a;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_start"

    const-string v4, "0"

    invoke-static {v3, v1, v4, v2}, Lcom/sigmob/sdk/base/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntityActive;

    invoke-static {}, Lcom/czhj/sdk/common/utils/AdLifecycleManager;->getInstance()Lcom/czhj/sdk/common/utils/AdLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/czhj/sdk/common/utils/AdLifecycleManager;->addLifecycleListener(Lcom/czhj/sdk/common/utils/AdLifecycleManager$LifecycleListener;)V

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    new-instance v2, Ljava/lang/String;

    const-string v3, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PTg=="

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const-string v3, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PRkY="

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const-string v3, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlVTRVJfUFJFU0VOVA=="

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/b;->l()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register screen status receiver error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic c(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/sigmob/sdk/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sigmob/sdk/b$a;->c(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/sigmob/sdk/b$a;->e:I

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 3
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/b$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/b$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/b$a;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/b$a;->g:Z

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 8

    instance-of v0, p1, Lcom/sigmob/sdk/base/common/AdActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sigmob/sdk/b$a;->i:Z

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/b$a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/b$a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sigmob/sdk/b$a;->f:Z

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sigmob/sdk/b$a;->b:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityDestroyed session_end: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_end"

    invoke-static {v3, p1, v0, v2}, Lcom/sigmob/sdk/base/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntityActive;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sigmob/sdk/b$a;->b:J

    iput-boolean v1, p0, Lcom/sigmob/sdk/b$a;->f:Z

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/b$a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sigmob/sdk/b$a;->h:Z

    :cond_2
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->isHuawei()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/sigmob/sdk/b$a;->j:I

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/b$a;->j:I

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->m()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_1
    iput v0, p0, Lcom/sigmob/sdk/b$a;->j:I

    return-void

    :cond_2
    const/4 p1, 0x1

    iput p1, p0, Lcom/sigmob/sdk/b$a;->j:I

    return-void

    :cond_3
    iput v0, p0, Lcom/sigmob/sdk/b$a;->j:I

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 5

    instance-of v0, p1, Lcom/sigmob/sdk/base/common/AdActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sigmob/sdk/b$a;->i:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sigmob/sdk/b$a;->i:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sigmob/sdk/b;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/RomUtils;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sigmob/sdk/b$a;->j:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/sigmob/sdk/b$a;->j:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/sigmob/sdk/b;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sigmob/sdk/j;

    invoke-direct {v2, p1}, Lcom/sigmob/sdk/j;-><init>(Landroid/app/Activity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/sigmob/sdk/b;->b(Landroid/app/Activity;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sigmob/sdk/b$a;->g:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/b$a;->d:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sigmob/sdk/b$a;->g:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sigmob/sdk/b;->b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_5
    iget-boolean p1, p0, Lcom/sigmob/sdk/b$a;->f:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/sigmob/sdk/b$a;->h:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/b$a;->h:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sigmob/sdk/b$a;->b:J

    iput-boolean v1, p0, Lcom/sigmob/sdk/b$a;->f:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResumed session_start: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sigmob/sdk/b$a;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    iget-wide v0, p0, Lcom/sigmob/sdk/b$a;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_start"

    const-string v2, "0"

    invoke-static {v1, p1, v2, v0}, Lcom/sigmob/sdk/base/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntityActive;

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/sigmob/sdk/b$a;->j:I

    iget p1, p0, Lcom/sigmob/sdk/b$a;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sigmob/sdk/b$a;->e:I

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 6

    iget v0, p0, Lcom/sigmob/sdk/b$a;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/sdk/b$a;->e:I

    invoke-static {}, Lcom/sigmob/sdk/b;->m()Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sigmob/sdk/b;->i()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sigmob/sdk/b$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->j()V

    iget-boolean p1, p0, Lcom/sigmob/sdk/b$a;->g:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sigmob/sdk/b$a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/sdk/b$a;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityStopped session_end: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/b$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_end"

    invoke-static {v1, p1, v2, v0}, Lcom/sigmob/sdk/base/mta/PointEntityActive;->ActiveTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/mta/PointEntityActive;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/b$a;->b:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/b$a;->f:Z

    return-void
.end method

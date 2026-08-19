.class public Lcom/sigmob/sdk/base/views/at;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/sigmob/sdk/base/views/at; = null

.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sigmob/sdk/base/views/at;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:I = 0x2


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sigmob/sdk/base/views/g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/views/at;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/at;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/views/at;->a:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lcom/sigmob/sdk/base/views/at;
    .locals 3

    .line 1
    :cond_0
    sget-object v0, Lcom/sigmob/sdk/base/views/at;->c:Lcom/sigmob/sdk/base/views/at;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/sigmob/sdk/base/views/at;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/sigmob/sdk/base/views/at;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/views/at;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/g;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/at;

    sput-object v0, Lcom/sigmob/sdk/base/views/at;->c:Lcom/sigmob/sdk/base/views/at;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Lcom/sigmob/sdk/base/views/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/at;->a:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/views/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWebViewInternal webview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/views/at;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/sigmob/sdk/base/views/g;

    new-instance v2, Landroid/content/MutableContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2}, Lcom/sigmob/sdk/base/views/g;-><init>(Landroid/content/Context;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-object v0
.end method

.method private b(Lcom/sigmob/sdk/base/views/g;)V
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enqueue  webview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/at;->a:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/views/at;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/views/g;->destroy()V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    const-string p1, "Abandon this webview  \uff0c It will cause leak if enqueue !"

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/sigmob/sdk/base/views/g;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/at;->b(Landroid/content/Context;)Lcom/sigmob/sdk/base/views/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/sigmob/sdk/base/views/g;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/views/at;->b(Lcom/sigmob/sdk/base/views/g;)V

    return-void
.end method

.class public Lcom/ubix/ssp/ad/e/x/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/x/g$f;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;

.field public static b:Ljava/util/concurrent/ExecutorService;

.field private static c:Lcom/ubix/ssp/ad/e/x/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/g;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "+"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ubix/ssp/ad/d/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "75eba40d7fa850ee"

    invoke-static {p1, p2}, Lcom/ubix/ssp/ad/e/a0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "X-U-Authorization"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ubix/ssp/ad/d/b;->p:Ljava/lang/String;

    const-string p2, "User-Agent"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a()V
    .locals 9

    .line 4
    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ubix/ssp/ad/e/x/g$a;

    invoke-direct {v8, p0}, Lcom/ubix/ssp/ad/e/x/g$a;-><init>(Lcom/ubix/ssp/ad/e/x/g;)V

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    const/4 v2, 0x3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/ubix/ssp/ad/e/x/g;->a:Ljava/util/concurrent/ExecutorService;

    :cond_1
    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/ubix/ssp/ad/e/x/g$b;

    invoke-direct {v8, p0}, Lcom/ubix/ssp/ad/e/x/g$b;-><init>(Lcom/ubix/ssp/ad/e/x/g;)V

    const/4 v3, 0x5

    const-wide/16 v4, 0x0

    const/4 v2, 0x3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/ubix/ssp/ad/e/x/g;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/d;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ubix/ssp/ad/e/y/a/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/ad/e/x/a;",
            ")V"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/x/g$e;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/x/g$e;-><init>(Lcom/ubix/ssp/ad/e/x/g;Lcom/ubix/ssp/ad/e/y/a/d;Ljava/lang/String;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/ad/e/x/a<",
            "Lcom/ubix/ssp/ad/e/x/d;",
            ">;)V"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/x/g$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ubix/ssp/ad/e/x/g$d;-><init>(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Ljava/util/HashMap;Lcom/ubix/ssp/ad/e/x/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()Lcom/ubix/ssp/ad/e/x/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->c:Lcom/ubix/ssp/ad/e/x/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/e/x/g;

    invoke-direct {v0}, Lcom/ubix/ssp/ad/e/x/g;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/e/x/g;->c:Lcom/ubix/ssp/ad/e/x/g;

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/ad/e/x/a;",
            ")V"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/x/g$c;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/e/x/g$c;-><init>(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a$c;)V
    .locals 3

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/ubix/ssp/ad/d/b;->p:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/ubix/ssp/ad/e/x/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/ubix/ssp/ad/e/x/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/d;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 1

    .line 8
    iget-object v0, p3, Lcom/ubix/ssp/ad/e/y/a/d;->b:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/e/y/a/d;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/ad/e/x/a;",
            ")V"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/ubix/ssp/ad/d/b;->p:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ubix/ssp/ad/e/x/g;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/ad/e/x/a;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/e/x/g;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubix/ssp/ad/e/x/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ubix/ssp/ad/e/x/a<",
            "Lcom/ubix/ssp/ad/e/x/d;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ubix/ssp/ad/e/x/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ubix/ssp/ad/e/x/g$f;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubix/ssp/ad/e/x/g$f;-><init>(Lcom/ubix/ssp/ad/e/x/g;Ljava/lang/String;Lcom/ubix/ssp/ad/e/x/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class Lcom/fl/saas/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/fl/saas/d1;


# direct methods
.method public constructor <init>(Lcom/fl/saas/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/d1$a;->b:Lcom/fl/saas/d1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/fl/saas/d1$a;->a:Ljava/lang/Runnable;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/fl/saas/d1$a;->a:Ljava/lang/Runnable;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fl/saas/d1$a;->b:Lcom/fl/saas/d1;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/fl/saas/d1;->a(Lcom/fl/saas/d1;)Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Runnable;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/fl/saas/d1$a;->a:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_1
    iget-object v0, p0, Lcom/fl/saas/d1$a;->a:Ljava/lang/Runnable;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/fl/saas/d1$a;->b:Lcom/fl/saas/d1;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/fl/saas/d1;->b(Lcom/fl/saas/d1;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/fl/saas/d1$a;->a:Ljava/lang/Runnable;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0
.end method

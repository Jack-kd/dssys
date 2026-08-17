.class public Lcom/meishu/sdk/core/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/service/d;->b:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/app/Activity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    sget-object v2, Lcom/meishu/sdk/core/utils/p0$b;->a:Lcom/meishu/sdk/core/utils/p0;

    .line 25
    .line 26
    iput-object v0, v2, Lcom/meishu/sdk/core/utils/p0;->a:Lcom/meishu/sdk/core/utils/p0$a;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_2
    sput-object v0, Lcom/meishu/sdk/core/service/d;->b:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    sput-object v0, Lcom/meishu/sdk/core/service/d;->c:Ljava/lang/Runnable;

    .line 38
    .line 39
    return-void

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    sput-object v0, Lcom/meishu/sdk/core/service/d;->b:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    sput-object v0, Lcom/meishu/sdk/core/service/d;->c:Ljava/lang/Runnable;

    .line 44
    .line 45
    throw v1
.end method

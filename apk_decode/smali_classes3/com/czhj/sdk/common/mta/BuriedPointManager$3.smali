.class Lcom/czhj/sdk/common/mta/BuriedPointManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/network/BuriedPointRequest$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/czhj/sdk/common/mta/BuriedPointManager;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/czhj/sdk/common/mta/BuriedPointManager;


# direct methods
.method public constructor <init>(Lcom/czhj/sdk/common/mta/BuriedPointManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/BuriedPointManager$3;->b:Lcom/czhj/sdk/common/mta/BuriedPointManager;

    iput-boolean p2, p0, Lcom/czhj/sdk/common/mta/BuriedPointManager$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/BuriedPointManager$3;->b:Lcom/czhj/sdk/common/mta/BuriedPointManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/mta/BuriedPointManager;->a(Lcom/czhj/sdk/common/mta/BuriedPointManager;Z)Z

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/BuriedPointManager$3;->b:Lcom/czhj/sdk/common/mta/BuriedPointManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/mta/BuriedPointManager;->a(Lcom/czhj/sdk/common/mta/BuriedPointManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-boolean v0, p0, Lcom/czhj/sdk/common/mta/BuriedPointManager$3;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v0

    new-instance v1, Lcom/czhj/sdk/common/mta/BuriedPointManager$3$1;

    invoke-direct {v1, p0}, Lcom/czhj/sdk/common/mta/BuriedPointManager$3$1;-><init>(Lcom/czhj/sdk/common/mta/BuriedPointManager$3;)V

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->submit(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

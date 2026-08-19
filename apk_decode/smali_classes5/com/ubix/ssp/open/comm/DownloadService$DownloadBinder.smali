.class public Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/open/comm/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadBinder"
.end annotation


# instance fields
.field downloadService:Lcom/ubix/ssp/open/comm/DownloadService;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/comm/DownloadService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->downloadService:Lcom/ubix/ssp/open/comm/DownloadService;

    return-void
.end method


# virtual methods
.method public getDownloadTask(II)Lcom/ubix/ssp/ad/e/s/i/b;
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->downloadService:Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-static {p1}, Lcom/ubix/ssp/open/comm/DownloadService;->access$200(Lcom/ubix/ssp/open/comm/DownloadService;)Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/s/i/b;

    return-object p1
.end method

.method public pauseTask(II)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->downloadService:Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-static {p1}, Lcom/ubix/ssp/open/comm/DownloadService;->access$200(Lcom/ubix/ssp/open/comm/DownloadService;)Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/s/i/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->f()V

    :cond_0
    return-void
.end method

.method public resumeTask(II)V
    .locals 1

    iget-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->downloadService:Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-static {p1}, Lcom/ubix/ssp/open/comm/DownloadService;->access$200(Lcom/ubix/ssp/open/comm/DownloadService;)Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/s/i/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/i/b;->g()V

    :cond_0
    return-void
.end method

.method public runTask(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "service_intent_notify_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/e/s/d;->a(I)Lcom/ubix/ssp/ad/e/s/g/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->downloadService:Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/s/f;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/a;)Lcom/ubix/ssp/ad/e/s/j/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/e/s/g/c;->b()Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ubix/ssp/ad/e/s/g/a;->a(Lcom/ubix/ssp/ad/e/s/j/a;)V

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->downloadService:Lcom/ubix/ssp/open/comm/DownloadService;

    invoke-static {v0}, Lcom/ubix/ssp/open/comm/DownloadService;->access$100(Lcom/ubix/ssp/open/comm/DownloadService;)Lcom/ubix/ssp/ad/e/s/i/a;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder$1;

    invoke-direct {v1, p0, p1}, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder$1;-><init>(Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;Lcom/ubix/ssp/ad/e/s/g/c;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "DownloadService"

    const-string v1, "onStartCommand()-> \u63a5\u53d7\u6570\u636e,\u542f\u52a8\u7ebf\u7a0b\u4e2d\u53d1\u751f\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

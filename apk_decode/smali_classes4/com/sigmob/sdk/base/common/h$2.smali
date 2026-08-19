.class Lcom/sigmob/sdk/base/common/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/videocache/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/h;->a(Lcom/czhj/volley/toolbox/DownloadItem;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/czhj/volley/toolbox/DownloadItem;

.field final synthetic b:J

.field final synthetic c:Lcom/sigmob/sdk/base/common/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/h;Lcom/czhj/volley/toolbox/DownloadItem;J)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/h$2;->c:Lcom/sigmob/sdk/base/common/h;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/h$2;->a:Lcom/czhj/volley/toolbox/DownloadItem;

    iput-wide p3, p0, Lcom/sigmob/sdk/base/common/h$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " onCacheAvailable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/16 p2, 0x64

    if-ne p3, p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "download"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->r()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/sigmob/sdk/videocache/d;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$2;->a:Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/h$2;->b:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Lcom/czhj/volley/toolbox/DownloadItem;->networkMs:J

    new-instance p1, Lcom/sigmob/sdk/base/common/h$c;

    iget-object p2, p0, Lcom/sigmob/sdk/base/common/h$2;->c:Lcom/sigmob/sdk/base/common/h;

    iget-object p3, p0, Lcom/sigmob/sdk/base/common/h$2;->a:Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {p1, p2, p3}, Lcom/sigmob/sdk/base/common/h$c;-><init>(Lcom/sigmob/sdk/base/common/h;Lcom/czhj/volley/toolbox/DownloadItem;)V

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object p2

    invoke-virtual {p2}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->r()Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/sigmob/sdk/videocache/d;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$2;->a:Lcom/czhj/volley/toolbox/DownloadItem;

    new-instance v1, Lcom/czhj/volley/VolleyError;

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_VIDEO_FILE:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/czhj/volley/VolleyError;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->error:Lcom/czhj/volley/VolleyError;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$2;->a:Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sigmob/sdk/base/common/h$2;->b:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/czhj/volley/toolbox/DownloadItem;->networkMs:J

    new-instance v0, Lcom/sigmob/sdk/base/common/h$c;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h$2;->c:Lcom/sigmob/sdk/base/common/h;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/h$2;->a:Lcom/czhj/volley/toolbox/DownloadItem;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/h$c;-><init>(Lcom/sigmob/sdk/base/common/h;Lcom/czhj/volley/toolbox/DownloadItem;)V

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getInstance()Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory$BackgroundThreadPool;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onCacheUnavailable "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

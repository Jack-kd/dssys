.class public Lcom/fl/saas/adx/base/download/DownloadService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field private downLoadSupportPauseUtil:Lcom/fl/saas/E;

.field private haveComplete:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "DownloadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fl/saas/adx/base/download/DownloadService;->haveComplete:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/fl/saas/adx/base/download/DownloadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fl/saas/adx/base/download/DownloadService;->haveComplete:Z

    return p1
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fl/saas/u;->a:Z

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadService;->downLoadSupportPauseUtil:Lcom/fl/saas/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fl/saas/E;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadService;->downLoadSupportPauseUtil:Lcom/fl/saas/E;

    :cond_0
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fl/saas/u;->a:Z

    if-eqz p1, :cond_1

    const-string v0, "pojo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/fl/saas/j;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/fl/saas/E;

    new-instance v1, Lcom/fl/saas/adx/base/download/DownloadService$1;

    invoke-direct {v1, p0}, Lcom/fl/saas/adx/base/download/DownloadService$1;-><init>(Lcom/fl/saas/adx/base/download/DownloadService;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/fl/saas/E;-><init>(Landroid/content/Context;Lcom/fl/saas/j;Lcom/fl/saas/E$d;)V

    iput-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadService;->downLoadSupportPauseUtil:Lcom/fl/saas/E;

    invoke-virtual {v0}, Lcom/fl/saas/E;->f()V

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/fl/saas/adx/base/download/DownloadService;->haveComplete:Z

    if-nez p1, :cond_1

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.class Lcom/fl/saas/adx/base/download/DownloadService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/E$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/adx/base/download/DownloadService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fl/saas/adx/base/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/fl/saas/adx/base/download/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadService$1;->this$0:Lcom/fl/saas/adx/base/download/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadService$1;->this$0:Lcom/fl/saas/adx/base/download/DownloadService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/download/DownloadService;->access$002(Lcom/fl/saas/adx/base/download/DownloadService;Z)Z

    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadService$1;->this$0:Lcom/fl/saas/adx/base/download/DownloadService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/download/DownloadService;->access$002(Lcom/fl/saas/adx/base/download/DownloadService;Z)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/fl/saas/E;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fl/saas/adx/base/download/DownloadService$1;->this$0:Lcom/fl/saas/adx/base/download/DownloadService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/fl/saas/E;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadService$1;->this$0:Lcom/fl/saas/adx/base/download/DownloadService;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/fl/saas/adx/base/download/DownloadService$1;->this$0:Lcom/fl/saas/adx/base/download/DownloadService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fl/saas/adx/base/download/DownloadService;->access$002(Lcom/fl/saas/adx/base/download/DownloadService;Z)Z

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/fl/saas/E;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "downloadFilePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/fl/saas/adx/base/download/DownloadService$1;->this$0:Lcom/fl/saas/adx/base/download/DownloadService;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

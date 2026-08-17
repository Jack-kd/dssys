.class Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->runTask(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

.field final synthetic val$request:Lcom/ubix/ssp/ad/e/s/g/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;Lcom/ubix/ssp/ad/e/s/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder$1;->this$0:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    iput-object p2, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder$1;->val$request:Lcom/ubix/ssp/ad/e/s/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder$1;->this$0:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    iget-object v0, v0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->downloadService:Lcom/ubix/ssp/open/comm/DownloadService;

    iget-object v1, p0, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder$1;->val$request:Lcom/ubix/ssp/ad/e/s/g/c;

    invoke-static {v0, v1}, Lcom/ubix/ssp/open/comm/DownloadService;->access$000(Lcom/ubix/ssp/open/comm/DownloadService;Lcom/ubix/ssp/ad/e/s/g/c;)V

    return-void
.end method

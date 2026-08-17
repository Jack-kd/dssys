.class Lcom/ubix/ssp/ad/e/s/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/s/b;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/e/s/g/c;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/s/g/c;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:I

.field final synthetic d:Lcom/ubix/ssp/ad/e/s/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/s/b;Lcom/ubix/ssp/ad/e/s/g/c;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/b$a;->d:Lcom/ubix/ssp/ad/e/s/b;

    iput-object p2, p0, Lcom/ubix/ssp/ad/e/s/b$a;->a:Lcom/ubix/ssp/ad/e/s/g/c;

    iput-object p3, p0, Lcom/ubix/ssp/ad/e/s/b$a;->b:Landroid/content/Intent;

    iput p4, p0, Lcom/ubix/ssp/ad/e/s/b$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/s/b$a;->a:Lcom/ubix/ssp/ad/e/s/g/c;

    check-cast p2, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/g/c;->a(Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/e/s/b$a;->b:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;->runTask(Landroid/content/Intent;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget v0, p0, Lcom/ubix/ssp/ad/e/s/b$a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

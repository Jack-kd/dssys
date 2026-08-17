.class public Lcom/ubix/ssp/ad/e/s/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Lcom/ubix/ssp/ad/e/s/g/a;

.field private c:I

.field private d:Z

.field private e:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/e/s/g/c;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/g/c;->e:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/e/s/g/c;->c:I

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/e/s/g/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/c;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    return-void
.end method

.method public a(Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/s/g/c;->e:Lcom/ubix/ssp/open/comm/DownloadService$DownloadBinder;

    return-void
.end method

.method public b()Lcom/ubix/ssp/ad/e/s/g/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/s/g/c;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ubix/ssp/ad/e/s/g/c;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/e/s/g/c;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/e/s/g/c;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestInfo{, downloadInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ubix/ssp/ad/e/s/g/c;->b:Lcom/ubix/ssp/ad/e/s/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

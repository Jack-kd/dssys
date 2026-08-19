.class Lcom/sigmob/sdk/base/common/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/volley/toolbox/FileDownloadRequest$FileDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/h;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/h$b;

.field final synthetic b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic c:Lcom/sigmob/sdk/base/common/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/h;Lcom/sigmob/sdk/base/common/h$b;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/h$4;->c:Lcom/sigmob/sdk/base/common/h;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/h$4;->a:Lcom/sigmob/sdk/base/common/h$b;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/h$4;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(Lcom/czhj/volley/toolbox/DownloadItem;JJ)V
    .locals 0

    return-void
.end method

.method public onCancel(Lcom/czhj/volley/toolbox/DownloadItem;)V
    .locals 0

    return-void
.end method

.method public onErrorResponse(Lcom/czhj/volley/toolbox/DownloadItem;)V
    .locals 2

    iget-object v0, p1, Lcom/czhj/volley/toolbox/DownloadItem;->error:Lcom/czhj/volley/VolleyError;

    invoke-virtual {v0}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/czhj/volley/toolbox/DownloadItem;->error:Lcom/czhj/volley/VolleyError;

    iget-object v1, v1, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status code "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/czhj/volley/toolbox/DownloadItem;->error:Lcom/czhj/volley/VolleyError;

    iget-object p1, p1, Lcom/czhj/volley/VolleyError;->networkResponse:Lcom/czhj/volley/NetworkResponse;

    iget p1, p1, Lcom/czhj/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$4;->a:Lcom/sigmob/sdk/base/common/h$b;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/h$4;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, v1, v0}, Lcom/sigmob/sdk/base/common/h$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErrorResponse: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/czhj/volley/toolbox/DownloadItem;)V
    .locals 2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/h$4;->a:Lcom/sigmob/sdk/base/common/h$b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/h$4;->b:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/sigmob/sdk/base/common/h$b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

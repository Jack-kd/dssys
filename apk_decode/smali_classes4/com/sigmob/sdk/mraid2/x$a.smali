.class Lcom/sigmob/sdk/mraid2/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/x;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/x;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownloadTaskByVid(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/x;->a(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelDownloadTaskByVid: vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", adUnit = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebAdContainer"

    invoke-static {v2, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkDownloadType()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/o;->c(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getApKDownloadProcessId(Ljava/lang/String;)I
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/x;->a(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/x;->getAdUnitList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApKDownloadProcessId: vid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", adUnit = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "WebAdContainer"

    invoke-static {v3, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_8

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkDownloadType()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDownloadId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/q;->a(Landroid/content/Context;Ljava/lang/Long;)[J

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/o;->d(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)[J

    move-result-object p1

    :goto_0
    const/4 v0, 0x2

    aget-wide v3, p1, v0

    long-to-int v3, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    if-eq v3, v0, :cond_5

    const/4 p1, 0x4

    if-eq v3, p1, :cond_4

    const/16 p1, 0x8

    if-eq v3, p1, :cond_3

    return v1

    :cond_3
    const/16 p1, 0x64

    return p1

    :cond_4
    const/4 p1, -0x2

    return p1

    :cond_5
    aget-wide v0, p1, v2

    aget-wide v3, p1, v4

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    cmp-long p1, v0, v5

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const-wide/16 v5, 0x64

    mul-long/2addr v0, v5

    div-long/2addr v0, v3

    long-to-int p1, v0

    return p1

    :cond_7
    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public pauseDownloadByVid(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/x;->a(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseDownloadByVid: vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", adUnit = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebAdContainer"

    invoke-static {v2, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkDownloadType()I

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/o;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public registerDownloadEvent(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/x;->a(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/x;->getAdUnitList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDownloadEvent: vid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", adUnit = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "WebAdContainer"

    invoke-static {v2, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid2/x;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public resumeDownloadByVid(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/x;->a(Lcom/sigmob/sdk/mraid2/x;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDownloadByVid: vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WebAdContainer"

    invoke-static {v2, p1, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/x$a;->a:Lcom/sigmob/sdk/mraid2/x;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkDownloadType()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/o;->b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

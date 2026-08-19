.class Lcom/sigmob/sdk/base/common/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/network/JsonRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/i;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Lcom/sigmob/sdk/base/common/i;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/common/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/i$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i$2;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->d(Lcom/sigmob/sdk/base/common/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/i$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i$2;->f(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->d(Lcom/sigmob/sdk/base/common/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/i$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i$2;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->d(Lcom/sigmob/sdk/base/common/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/common/i$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i$2;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->d(Lcom/sigmob/sdk/base/common/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/base/common/i$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i$2;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->d(Lcom/sigmob/sdk/base/common/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/base/common/i$2;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i$2;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic f(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/i;->d(Lcom/sigmob/sdk/base/common/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Lcom/sigmob/sdk/base/common/Z;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/Z;-><init>(Lcom/sigmob/sdk/base/common/i$2;)V

    const-string v2, "download_start"

    const-string v3, "0"

    invoke-static {v2, v3, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v3, Lcom/sigmob/sdk/base/common/a0;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/base/common/a0;-><init>(Lcom/sigmob/sdk/base/common/i$2;)V

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v1, v3}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleFourDownload#onErrorResponse: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "0"

    const-string v1, "data"

    const-string v2, "download_start"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "handleFourDownload#onSuccess: response = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v4, "ret"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "dstlink"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "clickid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    const-string v5, "_CLICKID_"

    invoke-virtual {v1, v5, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$2;->b:Lcom/sigmob/sdk/base/common/i;

    invoke-static {p1, v4}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/common/i;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v4, p1}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v4, Lcom/sigmob/sdk/base/common/b0;

    invoke-direct {v4, p0}, Lcom/sigmob/sdk/base/common/b0;-><init>(Lcom/sigmob/sdk/base/common/i$2;)V

    invoke-static {v2, v0, v1, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v4, Lcom/sigmob/sdk/base/common/c0;

    invoke-direct {v4, p0}, Lcom/sigmob/sdk/base/common/c0;-><init>(Lcom/sigmob/sdk/base/common/i$2;)V

    invoke-static {v2, v3, p1, v1, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "handleFourDownload#onSuccess: error = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v4, Lcom/sigmob/sdk/base/common/d0;

    invoke-direct {v4, p0}, Lcom/sigmob/sdk/base/common/d0;-><init>(Lcom/sigmob/sdk/base/common/i$2;)V

    invoke-static {v2, v0, v1, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$2;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v1, Lcom/sigmob/sdk/base/common/e0;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/e0;-><init>(Lcom/sigmob/sdk/base/common/i$2;)V

    invoke-static {v2, v3, p1, v0, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

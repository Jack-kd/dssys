.class Lcom/sigmob/sdk/base/common/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/czhj/sdk/common/network/JsonRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/i$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic f(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i$3;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i$3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i$3;->f(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i$3;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i$3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i$3;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/czhj/volley/VolleyError;)V
    .locals 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$3;->b:Ljava/lang/String;

    new-instance v2, Lcom/sigmob/sdk/base/common/j0;

    invoke-direct {v2, v1}, Lcom/sigmob/sdk/base/common/j0;-><init>(Ljava/lang/String;)V

    const-string v1, "download_start"

    const-string v3, "0"

    invoke-static {v1, v3, v0, v2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/i$3;->b:Ljava/lang/String;

    new-instance v4, Lcom/sigmob/sdk/base/common/k0;

    invoke-direct {v4, v3}, Lcom/sigmob/sdk/base/common/k0;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleMRAID2Download#onErrorResponse: error = "

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

    const-string v5, "handleMRAID2Download#onSuccess: response = "

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

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    const-string v5, "_CLICKID_"

    invoke-virtual {v1, v5, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v4, p1}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/i$3;->b:Ljava/lang/String;

    new-instance v5, Lcom/sigmob/sdk/base/common/f0;

    invoke-direct {v5, v4}, Lcom/sigmob/sdk/base/common/f0;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1, v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/i$3;->b:Ljava/lang/String;

    new-instance v5, Lcom/sigmob/sdk/base/common/g0;

    invoke-direct {v5, v4}, Lcom/sigmob/sdk/base/common/g0;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, p1, v1, v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "handleMRAID2Download#onSuccess: error = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/i$3;->b:Ljava/lang/String;

    new-instance v5, Lcom/sigmob/sdk/base/common/h0;

    invoke-direct {v5, v4}, Lcom/sigmob/sdk/base/common/h0;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1, v5}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i$3;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i$3;->b:Ljava/lang/String;

    new-instance v4, Lcom/sigmob/sdk/base/common/i0;

    invoke-direct {v4, v1}, Lcom/sigmob/sdk/base/common/i0;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, p1, v0, v4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

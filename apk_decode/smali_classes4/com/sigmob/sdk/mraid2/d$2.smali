.class Lcom/sigmob/sdk/mraid2/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/network/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid2/d;->c(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/sdk/mraid2/d;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/d;Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/d$2;->c:Lcom/sigmob/sdk/mraid2/d;

    iput-object p2, p0, Lcom/sigmob/sdk/mraid2/d$2;->a:Lcom/sigmob/sdk/mraid2/d;

    iput-object p3, p0, Lcom/sigmob/sdk/mraid2/d$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p2}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ad_count"

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "request_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/mraid2/d$2;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 2

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onErrorResponse: error = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Mraid2Bridge"

    invoke-static {v1, p3, v0}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/d$2;->a:Lcom/sigmob/sdk/mraid2/d;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d$2;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/BidResponse;ILjava/lang/String;)V

    const-string p1, "respond"

    const-string p2, "0"

    invoke-static {p1, p2, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuccess: size = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Mraid2Bridge"

    invoke-static {v2, p2, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/d$2;->c:Lcom/sigmob/sdk/mraid2/d;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/d;->f(Lcom/sigmob/sdk/mraid2/d;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/d$2;->a:Lcom/sigmob/sdk/mraid2/d;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/d$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/d$2;->c:Lcom/sigmob/sdk/mraid2/d;

    invoke-static {v2, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/d;Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v0, v3}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/BidResponse;ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Lcom/sigmob/sdk/mraid2/E;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/sdk/mraid2/E;-><init>(Ljava/util/List;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const-string p1, "respond"

    const-string v1, "1"

    invoke-static {p1, v1, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

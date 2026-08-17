.class public Lcom/sigmob/sdk/base/network/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/network/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sigmob/sdk/base/network/f$1;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/network/f$1;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/network/f;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/network/f$a;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/network/f;->a:Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "load"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sigmob/sdk/base/utils/k;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Ljava/util/Map;)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    const-string v1, "request queue is null."

    invoke-static {p1, v0, v1, v3, p0}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdx_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sigmob/sdk/base/network/f;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    move v2, v5

    :goto_0
    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    invoke-virtual {v4, v2}, Lcom/sigmob/sdk/base/o;->c(Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2}, Lcom/sigmob/sdk/base/o;->a(Z)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v2}, Lcom/sigmob/sdk/base/o;->b(Z)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/sigmob/sdk/base/network/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAd: placementId = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_BAD_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0, v3, p0}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/common/network/SigmobRequestUtil;->isConnection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    const-string v1, "network is disconnection."

    invoke-static {p1, v0, v1, v3, p0}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/sigmob/sdk/base/network/a;

    invoke-direct {v0, v6, p0, p1}, Lcom/sigmob/sdk/base/network/a;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/network/f$a;)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0, v3, p0}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :goto_4
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sigmob/sdk/base/network/f;->a:Ljava/lang/String;

    const-string v2, "load(failure)"

    const/4 v3, 0x6

    invoke-static {v3, v1, v2, p4, v0}, Lcom/sigmob/sdk/base/utils/k;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Ljava/util/Map;)V

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/network/f$a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/network/f$a;Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/network/f$a;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v2, Lcom/sigmob/sdk/base/network/f;->a:Ljava/lang/String;

    const-string v3, "onload"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5, v2, v3, v1, v4}, Lcom/sigmob/sdk/base/utils/k;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/sigmob/sdk/base/network/f$a;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sigmob/sdk/manager/d;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

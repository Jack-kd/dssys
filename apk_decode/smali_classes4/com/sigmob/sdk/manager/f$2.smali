.class Lcom/sigmob/sdk/manager/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/network/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/manager/f;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/manager/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-static {p3, p4}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/sdk/manager/f;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    const-string p3, "respond"

    const-string v0, "0"

    invoke-static {p3, v0, p1, p2, p4}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .locals 7
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

    .line 2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sigmob/sdk/manager/f;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    iput-object p1, v2, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-virtual {v2, p1, p2, v1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result v2

    iget-object v3, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {v3, v2}, Lcom/sigmob/sdk/manager/b;->a(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadAdsRequest: sceneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    iget-object v2, v2, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    iget-object v2, v2, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    sget-object p2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/manager/f;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    iget-object v2, v2, Lcom/sigmob/sdk/manager/f;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v3}, Lcom/sigmob/sdk/manager/b;->n(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sigmob/sdk/base/common/h;->f(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getPlayMode()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreate_time()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sigmob/sdk/manager/f;->l:J

    :cond_4
    invoke-static {p1}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/util/List;)V

    new-instance v3, Lcom/sigmob/sdk/manager/f$2$1;

    invoke-direct {v3, p0}, Lcom/sigmob/sdk/manager/f$2$1;-><init>(Lcom/sigmob/sdk/manager/f$2;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preloadAdsRequest: playMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", creativeType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v5, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v5

    if-ne v4, v5, :cond_6

    new-instance v2, Lcom/sigmob/sdk/base/common/e;

    iget-object v4, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    iget-object v4, v4, Lcom/sigmob/sdk/manager/f;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-direct {v2, p1, v3, v4}, Lcom/sigmob/sdk/base/common/e;-><init>(Ljava/util/List;Lcom/sigmob/sdk/base/common/h$b;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/common/e;->a(Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadAdsRequest: cache = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    iget-object p1, p1, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {p1, v1, p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void

    :cond_6
    const/4 p1, 0x2

    if-ne v2, p1, :cond_7

    iget-object p1, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    invoke-virtual {p1, v1, p2}, Lcom/sigmob/sdk/manager/b;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/sigmob/sdk/manager/f$2;->a:Lcom/sigmob/sdk/manager/f;

    iget-object p1, p1, Lcom/sigmob/sdk/manager/f;->p:Lcom/sigmob/sdk/mraid/i;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/sigmob/sdk/base/common/y;->a(Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/sigmob/sdk/base/common/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/h$b;)V

    return-void
.end method

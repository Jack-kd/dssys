.class public Lcom/sigmob/sdk/base/network/a;
.super Lcom/czhj/sdk/common/network/SigmobRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/sdk/common/network/SigmobRequest<",
        "Lcom/sigmob/sdk/base/models/rtb/BidResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private final b:Lcom/sigmob/sdk/base/network/f$a;

.field private final c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/network/f$a;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    invoke-static {p3}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/sigmob/sdk/base/network/a;->b:Lcom/sigmob/sdk/base/network/f$a;

    iput-object p2, p0, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    const/4 p2, 0x0

    const/16 p3, 0x1388

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0, p2}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    invoke-virtual {p0, v0}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)Lcom/czhj/sdk/common/models/BidRequest$Builder;
    .locals 14

    .line 1
    const-string v0, "4.25.12"

    const/16 v1, 0x1772

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1771

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAds;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sigmob/sdk/base/network/i;

    invoke-direct {v4}, Lcom/sigmob/sdk/base/network/i;-><init>()V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-direct {v3}, Lcom/czhj/sdk/common/models/BidRequest$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/b;->b()Lcom/czhj/sdk/common/mta/DeviceContext;

    move-result-object v4

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v5

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/network/a;->b()Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v6

    const-string v7, "1.2"

    invoke-static {v7}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createVersion(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/czhj/sdk/common/models/Version$Builder;->build()Lcom/czhj/sdk/common/models/Version;

    move-result-object v7

    iput-object v7, v6, Lcom/czhj/sdk/common/models/App$Builder;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    const-string v7, "2.2"

    invoke-static {v7}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createVersion(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/czhj/sdk/common/models/Version$Builder;->build()Lcom/czhj/sdk/common/models/Version;

    move-result-object v7

    iput-object v7, v6, Lcom/czhj/sdk/common/models/App$Builder;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    invoke-static {v4}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object v7

    invoke-static {v4}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDeviceId(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    move-result-object v8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/DeviceId$Builder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getOsMarket(Landroid/content/Context;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/czhj/sdk/common/models/Device$Builder;->market_version(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-static {v5}, Lcom/czhj/sdk/common/utils/AppPackageUtil;->getHWID(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v10, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/czhj/sdk/common/models/Device$Builder;->hms_version(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Lcom/czhj/sdk/common/models/DeviceId$Builder;->build()Lcom/czhj/sdk/common/models/DeviceId;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/czhj/sdk/common/models/Device$Builder;->did(Lcom/czhj/sdk/common/models/DeviceId;)Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-static {v4}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createNetwork(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Network$Builder;

    move-result-object v5

    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createAdSlot()Lcom/czhj/sdk/common/models/AdSlot$Builder;

    move-result-object v8

    const/4 v9, 0x1

    if-nez p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/c;->b:Lcom/sigmob/sdk/base/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/c;->c:Lcom/sigmob/sdk/base/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/c;->d:Lcom/sigmob/sdk/base/c;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->b:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->g:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->c:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->f:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->h:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/common/n;->k:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, p0}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->support_template_id(Ljava/util/List;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v10

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x5

    if-ne v10, v11, :cond_5

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object v12

    if-eqz v12, :cond_4

    iget v13, v12, Lcom/sigmob/sdk/base/common/z;->a:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_request_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    iget v13, v12, Lcom/sigmob/sdk/base/common/z;->b:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_ready_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    iget v13, v12, Lcom/sigmob/sdk/base/common/z;->d:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->req_interval_time(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    iget-wide v12, v12, Lcom/sigmob/sdk/base/common/z;->c:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->pre_req_time(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    :cond_4
    invoke-static {v11}, Lcom/sigmob/sdk/base/common/h;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->cached_ad_size(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    :cond_5
    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    iget-object v10, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v11, Lcom/sigmob/sdk/base/c;->b:Lcom/sigmob/sdk/base/c;

    invoke-virtual {v11}, Lcom/sigmob/sdk/base/c;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v11, Lcom/sigmob/sdk/base/c;->c:Lcom/sigmob/sdk/base/c;

    invoke-virtual {v11}, Lcom/sigmob/sdk/base/c;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v11, Lcom/sigmob/sdk/base/c;->d:Lcom/sigmob/sdk/base/c;

    invoke-virtual {v11}, Lcom/sigmob/sdk/base/c;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v11, Lcom/sigmob/sdk/base/common/n;->b:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v11}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v11, Lcom/sigmob/sdk/base/common/n;->g:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v11}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_6
    if-eq v10, v9, :cond_8

    const/4 v11, 0x4

    if-ne v10, v11, :cond_7

    goto :goto_2

    :cond_7
    const/4 v11, 0x6

    if-ne v10, v11, :cond_9

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->k:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_1
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->a:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->c:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->f:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->h:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, v8, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v12, Lcom/sigmob/sdk/base/common/n;->i:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/common/n;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1

    :cond_9
    :goto_3
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/sigmob/sdk/base/common/h;->a(I)Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v8, v10}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_caches(Ljava/util/Map;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    :cond_a
    :goto_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v10}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->support_template_id(Ljava/util/List;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_strategy_index(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v8, v1}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    :cond_b
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLastCrid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_crid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLastCampid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_camp_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidFloor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->bidfloor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v3, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->options(Ljava/util/Map;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    :cond_c
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->request_scene_type:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/sigmob/sdk/manager/b;->a(Ljava/lang/Integer;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ad_is_expired:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOriginVid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-object v1, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->origin_vid:Ljava/lang/String;

    :cond_d
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOriginPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-object v1, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->origin_price:Ljava/lang/String;

    :cond_e
    new-instance v1, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->bid_token(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    :cond_f
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->cur(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;

    :cond_10
    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->build()Lcom/czhj/sdk/common/models/HeaderBidding;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->header_bidding(Lcom/czhj/sdk/common/models/HeaderBidding;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    iget-object v1, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;

    if-nez v1, :cond_11

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;

    :cond_11
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;

    const-string v10, "load_id"

    invoke-interface {v2, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getTBAdxInfo()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_13

    if-nez v1, :cond_14

    goto :goto_5

    :cond_14
    iget-object v10, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->ext_options:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_15
    :goto_6
    invoke-static {v4}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createDevice(Lcom/czhj/sdk/common/mta/DeviceContext;)Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->device(Lcom/czhj/sdk/common/models/Device;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    iget-object p0, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->slots:Ljava/util/List;

    invoke-virtual {v8}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->build()Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sigmob/sdk/base/network/a;->c()Lcom/czhj/sdk/common/models/User$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/User$Builder;->build()Lcom/czhj/sdk/common/models/User;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->user(Lcom/czhj/sdk/common/models/User;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/network/a;->d()Lcom/czhj/sdk/common/models/Privacy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/Privacy$Builder;->build()Lcom/czhj/sdk/common/models/Privacy;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->privacy(Lcom/czhj/sdk/common/models/Privacy;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-virtual {v6}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->app(Lcom/czhj/sdk/common/models/App;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-virtual {v7}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->device(Lcom/czhj/sdk/common/models/Device;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-virtual {v5}, Lcom/czhj/sdk/common/models/Network$Builder;->build()Lcom/czhj/sdk/common/models/Network;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->network(Lcom/czhj/sdk/common/models/Network;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->req_timestamp:Ljava/lang/Long;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {v0}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createVersion(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Version$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/Version$Builder;->build()Lcom/czhj/sdk/common/models/Version;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->sdk_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    :cond_16
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->disable_mediation:Ljava/lang/Boolean;

    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createWXProgramReq()Lcom/czhj/sdk/common/models/WXProgramReq;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->wx_program_req(Lcom/czhj/sdk/common/models/WXProgramReq;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/f;->c()Z

    move-result p0

    xor-int/2addr p0, v9

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v3, Lcom/czhj/sdk/common/models/BidRequest$Builder;->disable_install_package:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_8
    return-object v3
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/sigmob/sdk/base/network/j;

    invoke-direct {v0, p3, p2, p1}, Lcom/sigmob/sdk/base/network/j;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "server_error"

    const/4 p2, 0x0

    invoke-static {p1, p4, p5, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    .line 5
    instance-of v0, p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    invoke-virtual {p3, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setRequest_id(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setPlacement_id(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setAdtype(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/czhj/sdk/common/models/App$Builder;
    .locals 10

    .line 2
    invoke-static {}, Lcom/czhj/sdk/common/models/ModelBuilderCreator;->createApp()Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v0

    iget-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->sdk_ext_cap:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->app_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    new-instance v1, Lcom/czhj/sdk/common/models/Permission$Builder;

    invoke-direct {v1}, Lcom/czhj/sdk/common/models/Permission$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/o;->a()Lcom/sigmob/sdk/base/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/o;->j()Z

    move-result v2

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAds;->getSensorStatus()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/b;->f()Z

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    sget-object v7, Lcom/sigmob/sdk/base/network/a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createApp: accelerometer = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", complianceMark = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sensorStatus = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sensorEnable = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/czhj/sdk/common/models/Permission$Builder;->accelerometer(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Permission$Builder;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Permission$Builder;->build()Lcom/czhj/sdk/common/models/Permission;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/App$Builder;->permission(Lcom/czhj/sdk/common/models/Permission;)Lcom/czhj/sdk/common/models/App$Builder;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/network/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static c()Lcom/czhj/sdk/common/models/User$Builder;
    .locals 2

    new-instance v0, Lcom/czhj/sdk/common/models/User$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/User$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->d()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/User$Builder;->is_minor:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->e()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/User$Builder;->disable_personalized_recommendation:Ljava/lang/Boolean;

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/User$Builder;->change_recommendation_state:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static d()Lcom/czhj/sdk/common/models/Privacy$Builder;
    .locals 3

    new-instance v0, Lcom/czhj/sdk/common/models/Privacy$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Privacy$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;->age(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;->child_protection(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/i;->a()Lcom/sigmob/sdk/base/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/i;->g()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/sdk/common/models/Privacy$Builder;->gdpr_consent(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Privacy$Builder;

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getOptions()Lcom/sigmob/windad/WindAdOptions;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdOptions;->getCustomController()Lcom/sigmob/windad/WindCustomController;

    move-result-object v1

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Lcom/sigmob/windad/WindCustomController;

    invoke-direct {v1}, Lcom/sigmob/windad/WindCustomController;-><init>()V

    :goto_2
    invoke-virtual {v1}, Lcom/sigmob/windad/WindCustomController;->isCanUseLocation()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_geo:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindCustomController;->isCanUsePhoneState()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_imei:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindCustomController;->isCanUseOaid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_oaid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindCustomController;->isCanUseAndroidId()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_android_id:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindCustomController;->isCanUseAppList()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_installed_apps:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindCustomController;->isCanUseSimOperator()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_carrier_code:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/network/f$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/a;->b:Lcom/sigmob/sdk/base/network/f$a;

    return-object v0
.end method

.method public a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;)V
    .locals 22

    .line 4
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "KGpfzbYsn4T9Jyuq"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v5

    iget-object v6, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v6}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-nez v0, :cond_0

    if-ne v5, v8, :cond_12

    invoke-static {v6}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-wide v2, v0, Lcom/sigmob/sdk/base/common/z;->c:J

    iput-wide v2, v0, Lcom/sigmob/sdk/base/common/z;->g:J

    goto/16 :goto_6

    :cond_0
    if-ne v5, v8, :cond_2

    invoke-static {v6}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/sigmob/sdk/base/common/z;->c:J

    iput-wide v10, v9, Lcom/sigmob/sdk/base/common/z;->g:J

    iput v3, v9, Lcom/sigmob/sdk/base/common/z;->b:I

    iput v3, v9, Lcom/sigmob/sdk/base/common/z;->a:I

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    if-eqz v10, :cond_1

    iget-object v10, v10, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->native_setting:Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;

    if-eqz v10, :cond_1

    iget-object v11, v10, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->ad_pool_size:Ljava/lang/Integer;

    invoke-static {v11, v4}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v9, Lcom/sigmob/sdk/base/common/z;->e:I

    iget-object v11, v10, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->req_interval_time:Ljava/lang/Integer;

    invoke-static {v11, v4}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v9, Lcom/sigmob/sdk/base/common/z;->d:I

    iget-object v11, v10, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->media_expected_floor:Ljava/lang/Integer;

    invoke-static {v11, v4}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v9, Lcom/sigmob/sdk/base/common/z;->f:I

    invoke-static {}, Lcom/sigmob/sdk/base/common/ab;->a()Lcom/sigmob/sdk/base/common/ab;

    move-result-object v11

    iget-object v10, v10, Lcom/sigmob/sdk/base/models/rtb/NativeAdSetting;->log_interval_time:Ljava/lang/Integer;

    invoke-static {v10, v4}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/sigmob/sdk/base/common/ab;->a(I)V

    :cond_1
    invoke-static {v6, v9}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/common/z;)V

    :cond_2
    iget-object v4, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->ads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->noncompliance_mark:Ljava/lang/Boolean;

    invoke-static {v10}, Lcom/sigmob/sdk/base/utils/v;->a(Ljava/lang/Boolean;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/sigmob/sdk/base/o;->a:Ljava/lang/Boolean;

    :cond_3
    sget-object v10, Lcom/sigmob/sdk/base/network/a;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "noncomplianceMark(bid) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/sigmob/sdk/base/o;->a:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->uid:Ljava/lang/String;

    invoke-static {v10}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :try_start_0
    invoke-static {v10, v2}, Lcom/czhj/sdk/common/utils/AESUtil;->DecryptStringServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v10, v2}, Lcom/czhj/sdk/common/utils/AESUtil;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/czhj/sdk/common/ClientMetadata;->setUid(Ljava/lang/String;)V

    :cond_4
    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->adx_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->adx_id:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setAdx_id(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setRequestId(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->error_code:Ljava/lang/Long;

    if-nez v2, :cond_6

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_AD_ERROR:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    :goto_1
    iget-object v4, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->request_id:Ljava/lang/String;

    move-object v3, v6

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->error_message:Ljava/lang/String;

    move/from16 v21, v5

    move v5, v2

    move/from16 v2, v21

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/base/network/a;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/sigmob/sdk/base/network/a;->b:Lcom/sigmob/sdk/base/network/f$a;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->error_message:Ljava/lang/String;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->request_id:Ljava/lang/String;

    iget-object v4, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {v2, v5, v3, v0, v4}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void

    :cond_7
    move v2, v5

    move-object v5, v6

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    const/4 v10, 0x6

    const/4 v11, 0x1

    if-ge v3, v9, :cond_e

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/sigmob/sdk/base/models/rtb/Ad;

    iget-object v12, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v12}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v12

    if-ne v12, v10, :cond_c

    iget-object v10, v13, Lcom/sigmob/sdk/base/models/rtb/Ad;->materials:Ljava/util/List;

    invoke-static {v10}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    invoke-static {v10}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    iget-object v10, v10, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    invoke-static {v10}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v13, Lcom/sigmob/sdk/base/models/rtb/Ad;->materials:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    if-eqz v12, :cond_8

    iget-object v14, v12, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->android_market:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    if-eqz v14, :cond_8

    iget-object v14, v14, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->type:Ljava/lang/Integer;

    if-nez v14, :cond_9

    goto :goto_3

    :cond_9
    iget-object v15, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    iget-object v15, v15, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->interstitial_setting:Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iget-object v8, v15, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->click_close_ad:Ljava/lang/Boolean;

    iget-object v15, v15, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->seconds_close_ad:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v11, :cond_b

    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/v;->a(Ljava/lang/Boolean;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v15}, Lcom/sigmob/sdk/base/utils/v;->a(Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_a
    :goto_4
    iput-object v7, v12, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->android_market:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    :cond_b
    const/4 v8, 0x5

    goto :goto_3

    :cond_c
    iget-object v14, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->request_id:Ljava/lang/String;

    iget-object v15, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->uid:Ljava/lang/String;

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->expiration_time:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    move-object/from16 v20, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    invoke-static/range {v13 .. v20}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adUnit(Lcom/sigmob/sdk/base/models/rtb/Ad;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;Lcom/sigmob/sdk/base/models/rtb/Template;Ljava/lang/String;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setAd_type(I)V

    iget-object v8, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdx_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setAdx_id(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setAdslot_id(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->isHalfInterstitial()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setHalfInterstitial(Z)V

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->rv_callback_url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRvCallBackUrl(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getTraceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setTraceId(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOriginVid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setOriginVid(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getBidToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setBid_token(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getRequest_scene_type()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setRequestSceneType(I)V

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->saas_options:Ljava/util/Map;

    const-string v10, "adInfoList"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-class v11, Ljava/util/List;

    const-class v12, Ljava/util/Map;

    invoke-static {v8, v11, v12}, Lcom/sigmob/sdk/base/utils/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v3, v8}, Lcom/sigmob/sdk/base/utils/f;->a(ILjava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Lcom/sigmob/sdk/base/utils/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v11, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setSaasOptions(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_d
    :try_start_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x5

    goto/16 :goto_2

    :cond_e
    move v3, v8

    if-ne v2, v3, :cond_f

    invoke-static {v5}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object v3

    if-eqz v3, :cond_f

    iget v3, v3, Lcom/sigmob/sdk/base/common/z;->e:I

    invoke-static {v5, v6, v3}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/lang/String;Ljava/util/List;I)V

    :cond_f
    iget-object v3, v1, Lcom/sigmob/sdk/base/network/a;->b:Lcom/sigmob/sdk/base/network/f$a;

    iget-object v4, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {v3, v6, v4}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;Ljava/util/List;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    if-eq v2, v10, :cond_10

    if-eq v2, v11, :cond_10

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    :cond_10
    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->request_id:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/h;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/BidResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    return-void

    :goto_5
    const-string v2, "ads Response: error "

    invoke-static {v2, v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_6
    iget-object v0, v1, Lcom/sigmob/sdk/base/network/a;->b:Lcom/sigmob/sdk/base/network/f$a;

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    const-string v3, "bidResponse is null"

    iget-object v4, v1, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v5, v4}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/z;->a(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/z;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, v1, Lcom/sigmob/sdk/base/common/z;->c:J

    iput-wide v2, v1, Lcom/sigmob/sdk/base/common/z;->g:J

    :cond_0
    instance-of v1, p1, Lcom/czhj/volley/ParseError;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/a;->b:Lcom/sigmob/sdk/base/network/f$a;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    :goto_0
    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/network/f$a;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ERROR_SIGMOB_NETWORK "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/czhj/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/a;->b:Lcom/sigmob/sdk/base/network/f$a;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    goto :goto_0
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/network/a;->a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;)V

    return-void
.end method

.method public getBody()[B
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/network/a;->d:[B

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "cp"

    const-string v1, "1"

    const-string v2, "e"

    const-string v3, "agn"

    invoke-super {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/AESUtil;->generateNonce()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v5, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/sigmob/sdk/base/network/a;->c:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/sigmob/sdk/base/network/a;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;)Lcom/czhj/sdk/common/models/BidRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/czhj/sdk/common/models/BidRequest$Builder;->build()Lcom/czhj/sdk/common/models/BidRequest;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_0
    move-object v6, v5

    :goto_1
    if-nez v6, :cond_1

    const-string v0, "builder Ads Post entry fail "

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-object v5

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Lcom/czhj/wire/Message;->encode()[B

    move-result-object v5

    iput-object v5, p0, Lcom/sigmob/sdk/base/network/a;->d:[B

    invoke-static {v5}, Lcom/sigmob/sdk/base/network/c;->b([B)[B

    move-result-object v5

    iput-object v5, p0, Lcom/sigmob/sdk/base/network/a;->d:[B

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/czhj/wire/Message;->encode()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/network/a;->d:[B

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/sigmob/sdk/base/network/a;->d:[B

    const-string v1, "KGpfzbYsn4T9Jyuq"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/network/a;->d:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object v4
.end method

.method public parseNetworkResponse(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/NetworkResponse;",
            ")",
            "Lcom/czhj/volley/Response<",
            "Lcom/sigmob/sdk/base/models/rtb/BidResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "cp"

    :try_start_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    if-nez v1, :cond_0

    new-instance v0, Lcom/czhj/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    :goto_0
    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    iget-object v2, p1, Lcom/czhj/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    invoke-static {v0}, Lcom/sigmob/sdk/base/network/c;->a([B)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/czhj/volley/NetworkResponse;->data:[B

    :goto_1
    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/BidResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    if-nez v0, :cond_2

    new-instance v0, Lcom/czhj/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Lcom/czhj/volley/NetworkResponse;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/czhj/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/czhj/volley/Response;->success(Ljava/lang/Object;Lcom/czhj/volley/Cache$Entry;)Lcom/czhj/volley/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/czhj/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/czhj/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/czhj/volley/Response;->error(Lcom/czhj/volley/VolleyError;)Lcom/czhj/volley/Response;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/czhj/sdk/common/models/AdSlot$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/czhj/sdk/common/models/AdSlot;",
        "Lcom/czhj/sdk/common/models/AdSlot$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/AdCache;",
            ">;"
        }
    .end annotation
.end field

.field public ad_count:Ljava/lang/Integer;

.field public adslot_id:Ljava/lang/String;

.field public adslot_size:Lcom/czhj/sdk/common/models/Size;

.field public adslot_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public adx_ecpm:Ljava/lang/Integer;

.field public alg_bid_type:Ljava/lang/Integer;

.field public algorithm_floor:Ljava/lang/Integer;

.field public api_strategy_index:Ljava/lang/Integer;

.field public bidfloor:Ljava/lang/Integer;

.field public cached_ad_size:Ljava/lang/Integer;

.field public commer_ecpm:Ljava/lang/Integer;

.field public commer_ecpm_state:Ljava/lang/Integer;

.field public creative_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public disable_mraid2:Ljava/lang/Boolean;

.field public ecpm_target:Ljava/lang/Integer;

.field public expected_floor:Ljava/lang/Integer;

.field public ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public latest_camp_id:Ljava/lang/String;

.field public latest_crid:Ljava/lang/String;

.field public material_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public media_ready_count:Ljava/lang/Integer;

.field public media_request_count:Ljava/lang/Integer;

.field public pre_req_time:Ljava/lang/Long;

.field public req_interval_time:Ljava/lang/Integer;

.field public sdk_cached_ads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sdk_strategy_index:Ljava/lang/Integer;

.field public settlement_mode:Ljava/lang/Integer;

.field public settlement_setting:Ljava/lang/Integer;

.field public support_template_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public vid:Ljava/lang/String;

.field public video:Lcom/czhj/sdk/common/models/Video;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ext:Ljava/util/Map;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->support_template_id:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ad_caches(Ljava/util/Map;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/AdCache;",
            ">;)",
            "Lcom/czhj/sdk/common/models/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    return-object p0
.end method

.method public ad_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public adslot_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    return-object p0
.end method

.method public adslot_size(Lcom/czhj/sdk/common/models/Size;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    return-object p0
.end method

.method public adslot_type(Ljava/util/List;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/czhj/sdk/common/models/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    return-object p0
.end method

.method public adx_ecpm(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adx_ecpm:Ljava/lang/Integer;

    return-object p0
.end method

.method public alg_bid_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->alg_bid_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public algorithm_floor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->algorithm_floor:Ljava/lang/Integer;

    return-object p0
.end method

.method public api_strategy_index(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    return-object p0
.end method

.method public bidfloor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/czhj/sdk/common/models/AdSlot;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    new-instance v1, Lcom/czhj/sdk/common/models/AdSlot;

    iget-object v2, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    iget-object v4, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget-object v5, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->vid:Ljava/lang/String;

    iget-object v7, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    iget-object v8, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    iget-object v9, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    iget-object v10, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    iget-object v13, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    iget-object v14, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->algorithm_floor:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ext:Ljava/util/Map;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->video:Lcom/czhj/sdk/common/models/Video;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->expected_floor:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_mode:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->alg_bid_type:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ecpm_target:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_setting:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm:Ljava/lang/Integer;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adx_ecpm:Ljava/lang/Integer;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm_state:Ljava/lang/Integer;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_count:Ljava/lang/Integer;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->support_template_id:Ljava/util/List;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->disable_mraid2:Ljava/lang/Boolean;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_request_count:Ljava/lang/Integer;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_ready_count:Ljava/lang/Integer;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->pre_req_time:Ljava/lang/Long;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->req_interval_time:Ljava/lang/Integer;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->cached_ad_size:Ljava/lang/Integer;

    invoke-super {v0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v34

    move-object/from16 v35, v33

    move-object/from16 v33, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v35

    invoke-direct/range {v1 .. v34}, Lcom/czhj/sdk/common/models/AdSlot;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/czhj/sdk/common/models/Video;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->build()Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method public cached_ad_size(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->cached_ad_size:Ljava/lang/Integer;

    return-object p0
.end method

.method public commer_ecpm(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm:Ljava/lang/Integer;

    return-object p0
.end method

.method public commer_ecpm_state(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm_state:Ljava/lang/Integer;

    return-object p0
.end method

.method public creative_type(Ljava/util/List;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/czhj/sdk/common/models/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    return-object p0
.end method

.method public disable_mraid2(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->disable_mraid2:Ljava/lang/Boolean;

    return-object p0
.end method

.method public ecpm_target(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ecpm_target:Ljava/lang/Integer;

    return-object p0
.end method

.method public expected_floor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->expected_floor:Ljava/lang/Integer;

    return-object p0
.end method

.method public ext(Ljava/util/Map;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/czhj/sdk/common/models/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ext:Ljava/util/Map;

    return-object p0
.end method

.method public latest_camp_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    return-object p0
.end method

.method public latest_crid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    return-object p0
.end method

.method public material_type(Ljava/util/List;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/czhj/sdk/common/models/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    return-object p0
.end method

.method public media_ready_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_ready_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public media_request_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_request_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public pre_req_time(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->pre_req_time:Ljava/lang/Long;

    return-object p0
.end method

.method public req_interval_time(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->req_interval_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public sdk_cached_ads(Ljava/util/Map;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/czhj/sdk/common/models/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    return-object p0
.end method

.method public sdk_strategy_index(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    return-object p0
.end method

.method public settlement_mode(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_mode:Ljava/lang/Integer;

    return-object p0
.end method

.method public settlement_setting(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_setting:Ljava/lang/Integer;

    return-object p0
.end method

.method public support_template_id(Ljava/util/List;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/czhj/sdk/common/models/AdSlot$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->support_template_id:Ljava/util/List;

    return-object p0
.end method

.method public vid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public video(Lcom/czhj/sdk/common/models/Video;)Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->video:Lcom/czhj/sdk/common/models/Video;

    return-object p0
.end method

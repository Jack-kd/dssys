.class final Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_AdSlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/czhj/sdk/common/models/AdSlot;",
        ">;"
    }
.end annotation


# instance fields
.field private final ad_caches:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/AdCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ext:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sdk_cached_ads:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    const-class v1, Lcom/czhj/sdk/common/models/AdSlot;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->sdk_cached_ads:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ext:Lcom/czhj/wire/ProtoAdapter;

    sget-object v1, Lcom/czhj/sdk/common/models/AdCache;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ad_caches:Lcom/czhj/wire/ProtoAdapter;

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/czhj/sdk/common/models/AdSlot;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/AdSlot$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->peekFieldEncoding()Lcom/czhj/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/wire/FieldEncoding;->rawProtoAdapter()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/czhj/wire/Message$Builder;->addUnknownField(ILcom/czhj/wire/FieldEncoding;Ljava/lang/Object;)Lcom/czhj/wire/Message$Builder;

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->cached_ad_size(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->req_interval_time(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->pre_req_time(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_ready_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_request_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm_state(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adx_ecpm(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_setting(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ecpm_target(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->alg_bid_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_mode(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->expected_floor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_d
    sget-object v3, Lcom/czhj/sdk/common/models/Video;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Video;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->video(Lcom/czhj/sdk/common/models/Video;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_e
    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    iget-object v4, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ad_caches:Lcom/czhj/wire/ProtoAdapter;

    :goto_1
    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ext:Ljava/util/Map;

    iget-object v4, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ext:Lcom/czhj/wire/ProtoAdapter;

    goto :goto_1

    :pswitch_10
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->algorithm_floor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_11
    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    :goto_2
    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_12
    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    iget-object v4, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->sdk_cached_ads:Lcom/czhj/wire/ProtoAdapter;

    goto :goto_1

    :pswitch_13
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->api_strategy_index(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_14
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_strategy_index(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_15
    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    goto :goto_2

    :pswitch_16
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_crid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_17
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_camp_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_18
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->vid(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_19
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->bidfloor(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_1a
    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    goto :goto_2

    :pswitch_1b
    sget-object v3, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_size(Lcom/czhj/sdk/common/models/Size;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :pswitch_1c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->disable_mraid2(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :cond_1
    iget-object v3, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->support_template_id:Ljava/util/List;

    goto/16 :goto_2

    :cond_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_count(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/AdSlot$Builder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->build()Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x34
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/czhj/sdk/common/models/AdSlot;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p2, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x9

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0xa

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->sdk_cached_ads:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0xd

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ext:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ad_caches:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/czhj/sdk/common/models/Video;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x11

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x13

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x14

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x15

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x16

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x17

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x18

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x19

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x1c

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x2e

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x30

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x34

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x35

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x36

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x37

    iget-object v3, p2, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x38

    iget-object v2, p2, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/czhj/wire/ProtoWriter;->writeBytes(Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/czhj/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/czhj/sdk/common/models/AdSlot;

    invoke-virtual {p0, p1, p2}, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/czhj/sdk/common/models/AdSlot;)V

    return-void
.end method

.method public encodedSize(Lcom/czhj/sdk/common/models/AdSlot;)I
    .locals 6

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x9

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0xa

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->sdk_cached_ads:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0xd

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ext:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->ad_caches:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/czhj/sdk/common/models/Video;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x11

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x13

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x14

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x15

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x16

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x17

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x18

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x19

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x1c

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v3, 0x2e

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x30

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x34

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x35

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x36

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x37

    iget-object v4, p1, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x38

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/czhj/sdk/common/models/AdSlot;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->encodedSize(Lcom/czhj/sdk/common/models/AdSlot;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/czhj/sdk/common/models/AdSlot;)Lcom/czhj/sdk/common/models/AdSlot;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/AdSlot;->newBuilder()Lcom/czhj/sdk/common/models/AdSlot$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Size;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    :cond_0
    iget-object v0, p1, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    sget-object v1, Lcom/czhj/sdk/common/models/AdCache;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/Map;Lcom/czhj/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/czhj/sdk/common/models/AdSlot$Builder;->video:Lcom/czhj/sdk/common/models/Video;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/czhj/sdk/common/models/Video;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Video;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/AdSlot$Builder;->video:Lcom/czhj/sdk/common/models/Video;

    :cond_1
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/AdSlot$Builder;->build()Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/czhj/sdk/common/models/AdSlot;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;->redact(Lcom/czhj/sdk/common/models/AdSlot;)Lcom/czhj/sdk/common/models/AdSlot;

    move-result-object p1

    return-object p1
.end method

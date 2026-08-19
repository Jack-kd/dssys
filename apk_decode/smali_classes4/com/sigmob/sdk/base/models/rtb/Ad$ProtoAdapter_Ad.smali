.class final Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_Ad"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/base/models/rtb/Ad;",
        ">;"
    }
.end annotation


# instance fields
.field private final ad_track_macro:Lcom/czhj/wire/ProtoAdapter;
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

.field private final options:Lcom/czhj/wire/ProtoAdapter;
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

    const-class v1, Lcom/sigmob/sdk/base/models/rtb/Ad;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->options:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v0}, Lcom/czhj/wire/ProtoAdapter;->newMapAdapter(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/ProtoAdapter;)Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->ad_track_macro:Lcom/czhj/wire/ProtoAdapter;

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/rtb/Ad;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0x18

    if-eq v3, v4, :cond_4

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->peekFieldEncoding()Lcom/czhj/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/wire/FieldEncoding;->rawProtoAdapter()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/czhj/wire/Message$Builder;->addUnknownField(ILcom/czhj/wire/FieldEncoding;Ljava/lang/Object;)Lcom/czhj/wire/Message$Builder;

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->attribution_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->bid_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_setting(Lcom/sigmob/sdk/base/models/rtb/AdSetting;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->display_orientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->forbiden_parse_landingpage(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto :goto_0

    :pswitch_6
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->options:Ljava/util/Map;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->options:Lcom/czhj/wire/ProtoAdapter;

    :goto_1
    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_source_channel(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_source_logo(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->is_override(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->settlement_price_enc(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->product_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->bid_price(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_e
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_tracking:Ljava/util/List;

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/Tracking;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/models/rtb/Tracking;

    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_f
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->materials:Ljava/util/List;

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    goto :goto_2

    :pswitch_10
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->crid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->camp_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_12
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->cust_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_13
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->vid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :pswitch_14
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->adslot_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :cond_0
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->enable_small_window(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :cond_1
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->frequency_control:Ljava/util/List;

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->bidding_response(Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->wx_program_res(Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    goto/16 :goto_0

    :cond_4
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_track_macro:Ljava/util/Map;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->ad_track_macro:Lcom/czhj/wire/ProtoAdapter;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
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
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/rtb/Ad;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->adslot_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->cust_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->camp_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->crid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->materials:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/Tracking;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_tracking:Ljava/util/List;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->bid_price:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->product_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->is_override:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_source_logo:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_source_channel:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_type:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xf

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->options:Ljava/util/Map;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x11

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x12

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x13

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x14

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->bid_type:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x15

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->attribution_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->ad_track_macro:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_track_macro:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->wx_program_res:Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    invoke-virtual {v0, p1, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x1d

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    invoke-virtual {v0, p1, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x1f

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->frequency_control:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x20

    iget-object v1, p2, Lcom/sigmob/sdk/base/models/rtb/Ad;->enable_small_window:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v0, v1}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

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
    check-cast p2, Lcom/sigmob/sdk/base/models/rtb/Ad;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/rtb/Ad;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/rtb/Ad;)I
    .locals 7

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->adslot_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->cust_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->camp_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->crid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->materials:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sigmob/sdk/base/models/rtb/Tracking;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_tracking:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->bid_price:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->product_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->is_override:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_source_logo:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_source_channel:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_type:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->options:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0xf

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->options:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x11

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x12

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x13

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_setting:Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x14

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->bid_type:Ljava/lang/Integer;

    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x15

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->attribution_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->ad_track_macro:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->ad_track_macro:Ljava/util/Map;

    invoke-virtual {v0, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x1b

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->wx_program_res:Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    invoke-virtual {v0, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x1d

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    invoke-virtual {v0, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x1f

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->frequency_control:Ljava/util/List;

    invoke-virtual {v0, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x20

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/rtb/Ad;->enable_small_window:Ljava/lang/Boolean;

    invoke-virtual {v3, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

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
    check-cast p1, Lcom/sigmob/sdk/base/models/rtb/Ad;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->encodedSize(Lcom/sigmob/sdk/base/models/rtb/Ad;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/base/models/rtb/Ad;)Lcom/sigmob/sdk/base/models/rtb/Ad;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/Ad;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->materials:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_tracking:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/Tracking;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_setting:Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/AdSetting;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->ad_setting:Lcom/sigmob/sdk/base/models/rtb/AdSetting;

    :cond_0
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->wx_program_res:Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->wx_program_res:Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    :cond_1
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    :cond_2
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->frequency_control:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/sigmob/sdk/base/models/rtb/Ad;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/rtb/Ad$ProtoAdapter_Ad;->redact(Lcom/sigmob/sdk/base/models/rtb/Ad;)Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object p1

    return-object p1
.end method

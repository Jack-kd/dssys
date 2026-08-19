.class final Lcom/czhj/sdk/common/models/Device$ProtoAdapter_Device;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_Device"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/czhj/sdk/common/models/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    const-class v1, Lcom/czhj/sdk/common/models/Device;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/czhj/sdk/common/models/Device;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/Device$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Device$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->peekFieldEncoding()Lcom/czhj/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/czhj/wire/FieldEncoding;->rawProtoAdapter()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/czhj/wire/Message$Builder;->addUnknownField(ILcom/czhj/wire/FieldEncoding;Ljava/lang/Object;)Lcom/czhj/wire/Message$Builder;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->hms_version(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->market_version(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->rom_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->rom_name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->update_mark(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->boot_mark(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->internal_name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->system_update_time(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->resolution(Lcom/czhj/sdk/common/models/Size;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->sd_free_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->sd_total_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->free_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->total_disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->mem_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->android_api_level(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_10
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->start_timestamp(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->device_name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_12
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->battery_save_enabled(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_13
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->FLOAT:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->battery_level(Ljava/lang/Float;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_14
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->battery_state(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_15
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->disk_size(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_16
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->is_root(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_17
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->dpi(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_18
    sget-object v3, Lcom/czhj/sdk/common/models/Geo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Geo;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->geo(Lcom/czhj/sdk/common/models/Geo;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_19
    sget-object v3, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->screen_size(Lcom/czhj/sdk/common/models/Size;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_1a
    sget-object v3, Lcom/czhj/sdk/common/models/DeviceId;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/DeviceId;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->did(Lcom/czhj/sdk/common/models/DeviceId;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_1b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->model(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_1c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->vendor(Ljava/lang/String;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_1d
    sget-object v3, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->os_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_1e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->os_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :pswitch_1f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/Device$Builder;->device_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/Device$Builder;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
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
    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/Device$ProtoAdapter_Device;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/czhj/sdk/common/models/Device;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/czhj/sdk/common/models/Device;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/czhj/sdk/common/models/Device;->device_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/czhj/sdk/common/models/Device;->os_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/czhj/sdk/common/models/Device;->os_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->vendor:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v3, 0x5

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->model:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/czhj/sdk/common/models/DeviceId;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x6

    iget-object v5, p2, Lcom/czhj/sdk/common/models/Device;->did:Lcom/czhj/sdk/common/models/DeviceId;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x7

    iget-object v5, p2, Lcom/czhj/sdk/common/models/Device;->screen_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v4, Lcom/czhj/sdk/common/models/Geo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x8

    iget-object v6, p2, Lcom/czhj/sdk/common/models/Device;->geo:Lcom/czhj/sdk/common/models/Geo;

    invoke-virtual {v4, p1, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x9

    iget-object v5, p2, Lcom/czhj/sdk/common/models/Device;->dpi:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0xa

    iget-object v6, p2, Lcom/czhj/sdk/common/models/Device;->is_root:Ljava/lang/Boolean;

    invoke-virtual {v4, p1, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v5, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0xb

    iget-object v7, p2, Lcom/czhj/sdk/common/models/Device;->disk_size:Ljava/lang/Long;

    invoke-virtual {v5, p1, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v6, 0xd

    iget-object v7, p2, Lcom/czhj/sdk/common/models/Device;->battery_state:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v6, Lcom/czhj/wire/ProtoAdapter;->FLOAT:Lcom/czhj/wire/ProtoAdapter;

    const/16 v7, 0xe

    iget-object v8, p2, Lcom/czhj/sdk/common/models/Device;->battery_level:Ljava/lang/Float;

    invoke-virtual {v6, p1, v7, v8}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v6, 0xf

    iget-object v7, p2, Lcom/czhj/sdk/common/models/Device;->battery_save_enabled:Ljava/lang/Boolean;

    invoke-virtual {v4, p1, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x10

    iget-object v6, p2, Lcom/czhj/sdk/common/models/Device;->device_name:Ljava/lang/String;

    invoke-virtual {v2, p1, v4, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0x11

    iget-object v7, p2, Lcom/czhj/sdk/common/models/Device;->start_timestamp:Ljava/lang/Long;

    invoke-virtual {v4, p1, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x12

    iget-object v6, p2, Lcom/czhj/sdk/common/models/Device;->android_api_level:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v4, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x13

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->mem_size:Ljava/lang/Long;

    invoke-virtual {v5, p1, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x14

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->total_disk_size:Ljava/lang/Long;

    invoke-virtual {v5, p1, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x15

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->free_disk_size:Ljava/lang/Long;

    invoke-virtual {v5, p1, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x16

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->sd_total_disk_size:Ljava/lang/Long;

    invoke-virtual {v5, p1, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x17

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->sd_free_disk_size:Ljava/lang/Long;

    invoke-virtual {v5, p1, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x18

    iget-object v4, p2, Lcom/czhj/sdk/common/models/Device;->resolution:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v3, p1, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x19

    iget-object v3, p2, Lcom/czhj/sdk/common/models/Device;->system_update_time:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x1a

    iget-object v3, p2, Lcom/czhj/sdk/common/models/Device;->internal_name:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x1b

    iget-object v3, p2, Lcom/czhj/sdk/common/models/Device;->boot_mark:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x1c

    iget-object v3, p2, Lcom/czhj/sdk/common/models/Device;->update_mark:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x20

    iget-object v3, p2, Lcom/czhj/sdk/common/models/Device;->rom_name:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x21

    iget-object v2, p2, Lcom/czhj/sdk/common/models/Device;->rom_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x22

    iget-object v2, p2, Lcom/czhj/sdk/common/models/Device;->market_version:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x23

    iget-object v2, p2, Lcom/czhj/sdk/common/models/Device;->hms_version:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

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
    check-cast p2, Lcom/czhj/sdk/common/models/Device;

    invoke-virtual {p0, p1, p2}, Lcom/czhj/sdk/common/models/Device$ProtoAdapter_Device;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/czhj/sdk/common/models/Device;)V

    return-void
.end method

.method public encodedSize(Lcom/czhj/sdk/common/models/Device;)I
    .locals 10

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/czhj/sdk/common/models/Device;->device_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Device;->os_type:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/czhj/sdk/common/models/Device;->os_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->vendor:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x5

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->model:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/czhj/sdk/common/models/DeviceId;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v5, 0x6

    iget-object v6, p1, Lcom/czhj/sdk/common/models/Device;->did:Lcom/czhj/sdk/common/models/DeviceId;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v5, 0x7

    iget-object v6, p1, Lcom/czhj/sdk/common/models/Device;->screen_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    sget-object v5, Lcom/czhj/sdk/common/models/Geo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0x8

    iget-object v7, p1, Lcom/czhj/sdk/common/models/Device;->geo:Lcom/czhj/sdk/common/models/Geo;

    invoke-virtual {v5, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x9

    iget-object v6, p1, Lcom/czhj/sdk/common/models/Device;->dpi:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    sget-object v5, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0xa

    iget-object v7, p1, Lcom/czhj/sdk/common/models/Device;->is_root:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v1, v6

    sget-object v6, Lcom/czhj/wire/ProtoAdapter;->UINT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v7, 0xb

    iget-object v8, p1, Lcom/czhj/sdk/common/models/Device;->disk_size:Ljava/lang/Long;

    invoke-virtual {v6, v7, v8}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v7

    add-int/2addr v1, v7

    const/16 v7, 0xd

    iget-object v8, p1, Lcom/czhj/sdk/common/models/Device;->battery_state:Ljava/lang/Integer;

    invoke-virtual {v0, v7, v8}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v7

    add-int/2addr v1, v7

    sget-object v7, Lcom/czhj/wire/ProtoAdapter;->FLOAT:Lcom/czhj/wire/ProtoAdapter;

    const/16 v8, 0xe

    iget-object v9, p1, Lcom/czhj/sdk/common/models/Device;->battery_level:Ljava/lang/Float;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v7

    add-int/2addr v1, v7

    const/16 v7, 0xf

    iget-object v8, p1, Lcom/czhj/sdk/common/models/Device;->battery_save_enabled:Ljava/lang/Boolean;

    invoke-virtual {v5, v7, v8}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x10

    iget-object v7, p1, Lcom/czhj/sdk/common/models/Device;->device_name:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    sget-object v5, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v7, 0x11

    iget-object v8, p1, Lcom/czhj/sdk/common/models/Device;->start_timestamp:Ljava/lang/Long;

    invoke-virtual {v5, v7, v8}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x12

    iget-object v7, p1, Lcom/czhj/sdk/common/models/Device;->android_api_level:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x13

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->mem_size:Ljava/lang/Long;

    invoke-virtual {v6, v0, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x14

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->total_disk_size:Ljava/lang/Long;

    invoke-virtual {v6, v0, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x15

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->free_disk_size:Ljava/lang/Long;

    invoke-virtual {v6, v0, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x16

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->sd_total_disk_size:Ljava/lang/Long;

    invoke-virtual {v6, v0, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x17

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->sd_free_disk_size:Ljava/lang/Long;

    invoke-virtual {v6, v0, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x18

    iget-object v5, p1, Lcom/czhj/sdk/common/models/Device;->resolution:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v4, v0, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x19

    iget-object v4, p1, Lcom/czhj/sdk/common/models/Device;->system_update_time:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x1a

    iget-object v4, p1, Lcom/czhj/sdk/common/models/Device;->internal_name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x1b

    iget-object v4, p1, Lcom/czhj/sdk/common/models/Device;->boot_mark:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x1c

    iget-object v4, p1, Lcom/czhj/sdk/common/models/Device;->update_mark:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x20

    iget-object v4, p1, Lcom/czhj/sdk/common/models/Device;->rom_name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x21

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Device;->rom_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x22

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Device;->market_version:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x23

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Device;->hms_version:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

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
    check-cast p1, Lcom/czhj/sdk/common/models/Device;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/Device$ProtoAdapter_Device;->encodedSize(Lcom/czhj/sdk/common/models/Device;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/czhj/sdk/common/models/Device;)Lcom/czhj/sdk/common/models/Device;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/Device;->newBuilder()Lcom/czhj/sdk/common/models/Device$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->os_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Version;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->os_version:Lcom/czhj/sdk/common/models/Version;

    :cond_0
    iget-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->did:Lcom/czhj/sdk/common/models/DeviceId;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/czhj/sdk/common/models/DeviceId;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/DeviceId;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->did:Lcom/czhj/sdk/common/models/DeviceId;

    :cond_1
    iget-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->screen_size:Lcom/czhj/sdk/common/models/Size;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Size;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->screen_size:Lcom/czhj/sdk/common/models/Size;

    :cond_2
    iget-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->geo:Lcom/czhj/sdk/common/models/Geo;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/czhj/sdk/common/models/Geo;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Geo;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->geo:Lcom/czhj/sdk/common/models/Geo;

    :cond_3
    iget-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->resolution:Lcom/czhj/sdk/common/models/Size;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Size;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->resolution:Lcom/czhj/sdk/common/models/Size;

    :cond_4
    iget-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->rom_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Version;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/Device$Builder;->rom_version:Lcom/czhj/sdk/common/models/Version;

    :cond_5
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/Device$Builder;->build()Lcom/czhj/sdk/common/models/Device;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/czhj/sdk/common/models/Device;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/Device$ProtoAdapter_Device;->redact(Lcom/czhj/sdk/common/models/Device;)Lcom/czhj/sdk/common/models/Device;

    move-result-object p1

    return-object p1
.end method

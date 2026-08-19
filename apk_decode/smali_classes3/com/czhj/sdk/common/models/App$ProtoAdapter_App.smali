.class final Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_App"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/czhj/sdk/common/models/App;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    const-class v1, Lcom/czhj/sdk/common/models/App;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/czhj/sdk/common/models/App;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/App$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/App$Builder;-><init>()V

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
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->app_sha256(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/czhj/sdk/common/models/Permission;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Permission;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->permission(Lcom/czhj/sdk/common/models/Permission;)Lcom/czhj/sdk/common/models/App$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->mraid2_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/App$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->mraid1_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/App$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->install_time(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/App$Builder;

    goto :goto_0

    :pswitch_6
    iget-object v3, v0, Lcom/czhj/sdk/common/models/App$Builder;->sdk_ext_cap:Ljava/util/List;

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->support_sk_version(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto :goto_0

    :pswitch_8
    iget-object v3, v0, Lcom/czhj/sdk/common/models/App$Builder;->ad_network_ids:Ljava/util/List;

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->support_http(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->product_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->channel_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->idfv(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->orientation(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->app_package(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_10
    sget-object v3, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->app_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/czhj/sdk/common/models/App$Builder;->app_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/czhj/sdk/common/models/App;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/czhj/sdk/common/models/App;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v3, 0x5

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v3, 0x6

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v3, 0x7

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x8

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x9

    iget-object v5, p2, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/16 v4, 0xa

    iget-object v5, p2, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0xb

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/16 v3, 0xc

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0xf

    iget-object v4, p2, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/sdk/common/models/Permission;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p2, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

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
    check-cast p2, Lcom/czhj/sdk/common/models/App;

    invoke-virtual {p0, p1, p2}, Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/czhj/sdk/common/models/App;)V

    return-void
.end method

.method public encodedSize(Lcom/czhj/sdk/common/models/App;)I
    .locals 7

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x5

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x6

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x7

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x8

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x9

    iget-object v6, p1, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v4

    const/16 v5, 0xa

    iget-object v6, p1, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0xb

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v3}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/16 v4, 0xc

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT64:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0xf

    iget-object v5, p1, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x11

    iget-object v4, p1, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x12

    iget-object v4, p1, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/czhj/sdk/common/models/Permission;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

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
    check-cast p1, Lcom/czhj/sdk/common/models/App;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;->encodedSize(Lcom/czhj/sdk/common/models/App;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/czhj/sdk/common/models/App;)Lcom/czhj/sdk/common/models/App;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/App;->newBuilder()Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->app_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Version;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->app_version:Lcom/czhj/sdk/common/models/Version;

    :cond_0
    iget-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Version;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    :cond_1
    iget-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/czhj/sdk/common/models/Version;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Version;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    :cond_2
    iget-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->permission:Lcom/czhj/sdk/common/models/Permission;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/czhj/sdk/common/models/Permission;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Permission;

    iput-object v0, p1, Lcom/czhj/sdk/common/models/App$Builder;->permission:Lcom/czhj/sdk/common/models/Permission;

    :cond_3
    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/czhj/sdk/common/models/App;

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;->redact(Lcom/czhj/sdk/common/models/App;)Lcom/czhj/sdk/common/models/App;

    move-result-object p1

    return-object p1
.end method

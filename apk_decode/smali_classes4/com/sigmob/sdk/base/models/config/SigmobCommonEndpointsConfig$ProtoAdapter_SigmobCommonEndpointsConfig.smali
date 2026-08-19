.class final Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$ProtoAdapter_SigmobCommonEndpointsConfig;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_SigmobCommonEndpointsConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;-><init>()V

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

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_native_ad(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_hb_ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->native_ad(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->config(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->feedback(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->hb_ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->log(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$ProtoAdapter_SigmobCommonEndpointsConfig;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->log:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->ads:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->hb_ads:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->feedback:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->config:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->native_ad:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_ads:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_hb_ads:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_native_ad:Ljava/lang/String;

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
    check-cast p2, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$ProtoAdapter_SigmobCommonEndpointsConfig;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->log:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->ads:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->hb_ads:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->feedback:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->config:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->native_ad:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_ads:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_hb_ads:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->saas_native_ad:Ljava/lang/String;

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
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$ProtoAdapter_SigmobCommonEndpointsConfig;->encodedSize(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->newBuilder()Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$ProtoAdapter_SigmobCommonEndpointsConfig;->redact(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    move-result-object p1

    return-object p1
.end method

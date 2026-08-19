.class final Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_SigmobCommon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/config/SigmobCommon;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;-><init>()V

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
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload:Ljava/util/List;

    sget-object v4, Lcom/sigmob/sdk/base/models/config/SigmobPreload;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/models/config/SigmobPreload;

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->sniffing_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_active_expire(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->expire_monitor_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->noncompliance_mark(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->network_timeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_extra_dclog(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->feedback_debug(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->log_enc(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_up_location(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->load_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_debug_level(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_e
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->dclog_blacklist:Ljava/util/List;

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto/16 :goto_1

    :pswitch_f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->send_log_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_10
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->max_send_log_records(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_retry_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_12
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_13
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->is_gdpr_region(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_14
    sget-object v3, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->anti_fraud_log(Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_15
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->configRefresh(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_16
    sget-object v3, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->native_config(Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_17
    sget-object v3, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->splash_config(Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_18
    sget-object v3, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->rv_config(Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :pswitch_19
    sget-object v3, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->endpoints(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;)Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/config/SigmobCommon;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/16 v3, 0xd

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x13

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x14

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x15

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x16

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x17

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobPreload;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

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
    check-cast p2, Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/config/SigmobCommon;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/config/SigmobCommon;)I
    .locals 6

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/16 v4, 0xd

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x11

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x12

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x14

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x15

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x16

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x17

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobPreload;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0x1a

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;->encodedSize(Lcom/sigmob/sdk/base/models/config/SigmobCommon;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/base/models/config/SigmobCommon;)Lcom/sigmob/sdk/base/models/config/SigmobCommon;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->newBuilder()Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    :cond_0
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    :cond_1
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    :cond_2
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    :cond_3
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    :cond_4
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/models/config/SigmobPreload;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;->redact(Lcom/sigmob/sdk/base/models/config/SigmobCommon;)Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    move-result-object p1

    return-object p1
.end method

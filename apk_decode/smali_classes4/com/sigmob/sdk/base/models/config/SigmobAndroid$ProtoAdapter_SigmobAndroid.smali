.class final Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_SigmobAndroid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/base/models/config/SigmobAndroid;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p1}, Lcom/czhj/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

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
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->s2s_token_timeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_dir_list(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_list(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_install_monitor(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->web_source_cache_expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->use_web_source_cache(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto :goto_0

    :pswitch_6
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->open_pkg_list:Ljava/util/List;

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->screen_keep(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->lock_play(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_app_list(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_okhttp3(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_boot_mark(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->oaid_api_is_disable(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_report_crash(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->apk_expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_permission(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_10
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_up_oaid(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->up_wifi_list_interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_12
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->report_log(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :pswitch_13
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disableUpAppInfo(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/16 v3, 0xe

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x13

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x14

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

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
    check-cast p2, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)I
    .locals 6

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/16 v4, 0xe

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x11

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x12

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x14

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

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
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;->encodedSize(Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->newBuilder()Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;->redact(Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    move-result-object p1

    return-object p1
.end method

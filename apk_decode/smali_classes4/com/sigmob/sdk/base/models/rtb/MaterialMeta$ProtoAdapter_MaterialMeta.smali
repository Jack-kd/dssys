.class final Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$ProtoAdapter_MaterialMeta;
.super Lcom/czhj/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_MaterialMeta"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/czhj/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/czhj/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/ProtoAdapter;-><init>(Lcom/czhj/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;-><init>()V

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

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->creative_desc(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->app_desc(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->component_library(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->render_mode(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->apk_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto :goto_0

    :pswitch_6
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->Widget_list:Ljava/util/List;

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/Widget;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/models/rtb/Widget;

    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/Color;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/Color;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->button_color(Lcom/sigmob/sdk/base/models/rtb/Color;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->has_endcard(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto :goto_0

    :pswitch_9
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->creative_title(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->endcard_image_src(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->in_app(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->theme_data(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_d
    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->asset:Ljava/util/List;

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/ResponseAsset;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/base/models/rtb/ResponseAsset;

    goto :goto_1

    :pswitch_e
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/Template;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_template(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_f
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/Template;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->main_template(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_10
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->android_market(Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_11
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->download_dialog(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_12
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->native_ad(Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_13
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->html_src(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_14
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_byte_size(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_15
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->ad_privacy(Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_16
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->button_text(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_17
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->app_name(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_18
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BYTES:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->closecard_html_snippet(Lcom/czhj/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_19
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->disable_auto_deeplink(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_1a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->template_id(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_1b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->FLOAT:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->score(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_1c
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->icon_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_1d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->desc(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_1e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->title(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_1f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_interaction_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_20
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->play_mode(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_21
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->open_market_mode(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_22
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->enable_collapse_tool_bar(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_23
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->html_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_24
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_reciprocal_millisecond(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_25
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->template_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_26
    sget-object v3, Lcom/sigmob/sdk/base/models/WebEventHandle;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/WebEventHandle;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->web_event_handle(Lcom/sigmob/sdk/base/models/WebEventHandle;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_27
    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->companion(Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_28
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->has_companion_endcard(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_29
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->click_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_2a
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->image_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_2b
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->image_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_2c
    sget-object v3, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->image_size(Lcom/czhj/sdk/common/models/Size;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_2d
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->image_src(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_2e
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->deeplink_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_2f
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->endcard_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_30
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_31
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->endcard_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_32
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BYTES:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->html_snippet(Lcom/czhj/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_33
    sget-object v3, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_size(Lcom/czhj/sdk/common/models/Size;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_34
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_duration(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_35
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_36
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->landing_page(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_37
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->interaction_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :pswitch_38
    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/czhj/wire/ProtoAdapter;->decode(Lcom/czhj/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->creative_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/czhj/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$ProtoAdapter_MaterialMeta;->decode(Lcom/czhj/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BYTES:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x7

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_snippet:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x8

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x9

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_md5:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0xa

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0xb

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0xc

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0xd

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v2, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xe

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_md5:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0xf

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x10

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x11

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x12

    iget-object v6, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    invoke-virtual {v4, p1, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v4, Lcom/sigmob/sdk/base/models/WebEventHandle;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x13

    iget-object v6, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/WebEventHandle;

    invoke-virtual {v4, p1, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x14

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x15

    iget-object v6, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v4, p1, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x16

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x17

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x18

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x19

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x1a

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x1b

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->title:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x1c

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->desc:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x1d

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->icon_url:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->FLOAT:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x1e

    iget-object v6, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->score:Ljava/lang/Float;

    invoke-virtual {v4, p1, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x1f

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->template_id:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x20

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->disable_auto_deeplink:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x21

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->closecard_html_snippet:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x22

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->app_name:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x23

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->button_text:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x24

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ad_privacy:Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x25

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_byte_size:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x26

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_src:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x27

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->native_ad:Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x28

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->download_dialog:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x29

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->android_market:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/Template;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x2a

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v4, 0x2b

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/ResponseAsset;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/16 v4, 0x2c

    iget-object v5, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->asset:Ljava/util/List;

    invoke-virtual {v3, p1, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x2d

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->theme_data:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x2e

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->in_app:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x2f

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_image_src:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x30

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_title:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v3, 0x31

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->has_endcard:Ljava/lang/Boolean;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/sigmob/sdk/base/models/rtb/Color;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v3, 0x32

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v2, Lcom/sigmob/sdk/base/models/rtb/Widget;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v2}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v2

    const/16 v3, 0x33

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->Widget_list:Ljava/util/List;

    invoke-virtual {v2, p1, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x34

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->apk_md5:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v2, 0x39

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->render_mode:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x3a

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->component_library:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x3b

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->app_desc:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2}, Lcom/czhj/wire/ProtoAdapter;->encodeWithTag(Lcom/czhj/wire/ProtoWriter;ILjava/lang/Object;)V

    const/16 v0, 0x3c

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_desc:Ljava/lang/String;

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
    check-cast p2, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$ProtoAdapter_MaterialMeta;->encode(Lcom/czhj/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)I
    .locals 8

    .line 1
    sget-object v0, Lcom/czhj/wire/ProtoAdapter;->UINT32:Lcom/czhj/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/czhj/wire/ProtoAdapter;->STRING:Lcom/czhj/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->landing_page:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_duration:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/4 v4, 0x6

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/czhj/wire/ProtoAdapter;->BYTES:Lcom/czhj/wire/ProtoAdapter;

    const/4 v5, 0x7

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_snippet:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x8

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x9

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_md5:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0xa

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_md5:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0xb

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->deeplink_url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0xc

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0xd

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v3, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xe

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_md5:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0xf

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->image_type:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x10

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->click_type:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/czhj/wire/ProtoAdapter;->BOOL:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x11

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->has_companion_endcard:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    sget-object v5, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0x12

    iget-object v7, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->companion:Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    invoke-virtual {v5, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    sget-object v5, Lcom/sigmob/sdk/base/models/WebEventHandle;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0x13

    iget-object v7, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->web_event_handle:Lcom/sigmob/sdk/base/models/WebEventHandle;

    invoke-virtual {v5, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x14

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->template_type:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    sget-object v5, Lcom/czhj/wire/ProtoAdapter;->INT32:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0x15

    iget-object v7, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_reciprocal_millisecond:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x16

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x17

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->enable_collapse_tool_bar:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x18

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->open_market_mode:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x19

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->play_mode:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x1a

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_interaction_type:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x1b

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x1c

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->desc:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x1d

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->icon_url:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    sget-object v5, Lcom/czhj/wire/ProtoAdapter;->FLOAT:Lcom/czhj/wire/ProtoAdapter;

    const/16 v6, 0x1e

    iget-object v7, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->score:Ljava/lang/Float;

    invoke-virtual {v5, v6, v7}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x1f

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->template_id:Ljava/lang/Integer;

    invoke-virtual {v0, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x20

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->disable_auto_deeplink:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x21

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->closecard_html_snippet:Lcom/czhj/wire/okio/ByteString;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x22

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->app_name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x23

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->button_text:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x24

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->ad_privacy:Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x25

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->video_byte_size:Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x26

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->html_src:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x27

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->native_ad:Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x28

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->download_dialog:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x29

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->android_market:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/Template;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v5, 0x2a

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v1, v5

    const/16 v5, 0x2b

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/sigmob/sdk/base/models/rtb/ResponseAsset;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v4}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v4

    const/16 v5, 0x2c

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->asset:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x2d

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->theme_data:Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x2e

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->in_app:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x2f

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->endcard_image_src:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x30

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_title:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v4, 0x31

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->has_endcard:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/Color;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    const/16 v4, 0x32

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/sigmob/sdk/base/models/rtb/Widget;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v3}, Lcom/czhj/wire/ProtoAdapter;->asRepeated()Lcom/czhj/wire/ProtoAdapter;

    move-result-object v3

    const/16 v4, 0x33

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->Widget_list:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x34

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->apk_md5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    const/16 v3, 0x39

    iget-object v4, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->render_mode:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v4}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x3a

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->component_library:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x3b

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->app_desc:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/czhj/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    const/16 v0, 0x3c

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->creative_desc:Ljava/lang/String;

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
    check-cast p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$ProtoAdapter_MaterialMeta;->encodedSize(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object p1

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_size:Lcom/czhj/sdk/common/models/Size;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Size;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->video_size:Lcom/czhj/sdk/common/models/Size;

    :cond_0
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->image_size:Lcom/czhj/sdk/common/models/Size;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/czhj/sdk/common/models/Size;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/czhj/sdk/common/models/Size;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->image_size:Lcom/czhj/sdk/common/models/Size;

    :cond_1
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->companion:Lcom/sigmob/sdk/base/models/rtb/CompanionEndcard;

    :cond_2
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/base/models/WebEventHandle;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/sigmob/sdk/base/models/WebEventHandle;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/WebEventHandle;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->web_event_handle:Lcom/sigmob/sdk/base/models/WebEventHandle;

    :cond_3
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->ad_privacy:Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->ad_privacy:Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    :cond_4
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->native_ad:Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->native_ad:Lcom/sigmob/sdk/base/models/rtb/ResponseNativeAd;

    :cond_5
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->android_market:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->android_market:Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    :cond_6
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/Template;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/Template;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    :cond_7
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v0, :cond_8

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/Template;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/Template;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    :cond_8
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->asset:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/ResponseAsset;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/Color;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/czhj/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/rtb/Color;

    iput-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->button_color:Lcom/sigmob/sdk/base/models/rtb/Color;

    :cond_9
    iget-object v0, p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->Widget_list:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/models/rtb/Widget;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/czhj/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/czhj/wire/ProtoAdapter;)V

    invoke-virtual {p1}, Lcom/czhj/wire/Message$Builder;->clearUnknownFields()Lcom/czhj/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$ProtoAdapter_MaterialMeta;->redact(Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object p1

    return-object p1
.end method

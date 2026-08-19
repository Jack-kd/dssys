.class public final Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/BidResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/BidResponse;",
        "Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_ua:Ljava/lang/String;

.field public ads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public adx_id:Ljava/lang/String;

.field public bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

.field public error_code:Ljava/lang/Long;

.field public error_message:Ljava/lang/String;

.field public expiration_time:Ljava/lang/Integer;

.field public noncompliance_mark:Ljava/lang/Boolean;

.field public pctr_valid_check:Ljava/lang/Integer;

.field public pctr_version:Ljava/lang/String;

.field public process_time_ms_dsp:Ljava/lang/Long;

.field public process_time_ms_ssp:Ljava/lang/Long;

.field public request_id:Ljava/lang/String;

.field public rv_callback_url:Ljava/lang/String;

.field public saas_options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scene:Lcom/sigmob/sdk/base/models/rtb/Template;

.field public slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->ads:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->saas_options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ad_ua(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->ad_ua:Ljava/lang/String;

    return-object p0
.end method

.method public ads(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/rtb/Ad;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->ads:Ljava/util/List;

    return-object p0
.end method

.method public adx_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->adx_id:Ljava/lang/String;

    return-object p0
.end method

.method public bidding_response(Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/BidResponse;
    .locals 22

    .line 2
    move-object/from16 v0, p0

    new-instance v1, Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->request_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->ads:Ljava/util/List;

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->error_code:Ljava/lang/Long;

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->process_time_ms_dsp:Ljava/lang/Long;

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->process_time_ms_ssp:Ljava/lang/Long;

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->pctr_valid_check:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->pctr_version:Ljava/lang/String;

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->uid:Ljava/lang/String;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->expiration_time:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->ad_ua:Ljava/lang/String;

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->error_message:Ljava/lang/String;

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    iget-object v15, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->rv_callback_url:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->adx_id:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->noncompliance_mark:Ljava/lang/Boolean;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->saas_options:Ljava/util/Map;

    invoke-super {v0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v20

    move-object/from16 v21, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    invoke-direct/range {v1 .. v20}, Lcom/sigmob/sdk/base/models/rtb/BidResponse;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/Template;Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Lcom/czhj/wire/okio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public error_code(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->error_code:Ljava/lang/Long;

    return-object p0
.end method

.method public error_message(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->error_message:Ljava/lang/String;

    return-object p0
.end method

.method public expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->expiration_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public noncompliance_mark(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->noncompliance_mark:Ljava/lang/Boolean;

    return-object p0
.end method

.method public pctr_valid_check(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->pctr_valid_check:Ljava/lang/Integer;

    return-object p0
.end method

.method public pctr_version(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->pctr_version:Ljava/lang/String;

    return-object p0
.end method

.method public process_time_ms_dsp(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->process_time_ms_dsp:Ljava/lang/Long;

    return-object p0
.end method

.method public process_time_ms_ssp(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->process_time_ms_ssp:Ljava/lang/Long;

    return-object p0
.end method

.method public request_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public rv_callback_url(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->rv_callback_url:Ljava/lang/String;

    return-object p0
.end method

.method public saas_options(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->saas_options:Ljava/util/Map;

    return-object p0
.end method

.method public scene(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    return-object p0
.end method

.method public slot_ad_setting(Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->slot_ad_setting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method

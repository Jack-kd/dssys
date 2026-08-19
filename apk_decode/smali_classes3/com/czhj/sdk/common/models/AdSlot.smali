.class public final Lcom/czhj/sdk/common/models/AdSlot;
.super Lcom/czhj/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;,
        Lcom/czhj/sdk/common/models/AdSlot$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/czhj/sdk/common/models/AdSlot;",
        "Lcom/czhj/sdk/common/models/AdSlot$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/czhj/sdk/common/models/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/czhj/sdk/common/models/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ADSLOT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_ADX_ECPM:Ljava/lang/Integer;

.field public static final DEFAULT_AD_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_ALGORITHM_FLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_ALG_BID_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_API_STRATEGY_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_BIDFLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_CACHED_AD_SIZE:Ljava/lang/Integer;

.field public static final DEFAULT_COMMER_ECPM:Ljava/lang/Integer;

.field public static final DEFAULT_COMMER_ECPM_STATE:Ljava/lang/Integer;

.field public static final DEFAULT_DISABLE_MRAID2:Ljava/lang/Boolean;

.field public static final DEFAULT_ECPM_TARGET:Ljava/lang/Integer;

.field public static final DEFAULT_EXPECTED_FLOOR:Ljava/lang/Integer;

.field public static final DEFAULT_LATEST_CAMP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_LATEST_CRID:Ljava/lang/String; = ""

.field public static final DEFAULT_MEDIA_READY_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_MEDIA_REQUEST_COUNT:Ljava/lang/Integer;

.field public static final DEFAULT_PRE_REQ_TIME:Ljava/lang/Long;

.field public static final DEFAULT_REQ_INTERVAL_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_SDK_STRATEGY_INDEX:Ljava/lang/Integer;

.field public static final DEFAULT_SETTLEMENT_MODE:Ljava/lang/Integer;

.field public static final DEFAULT_SETTLEMENT_SETTING:Ljava/lang/Integer;

.field public static final DEFAULT_VID:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final ad_caches:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.AdCache#ADAPTER"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/AdCache;",
            ">;"
        }
    .end annotation
.end field

.field public final ad_count:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1c
    .end annotation
.end field

.field public final adslot_id:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final adslot_size:Lcom/czhj/sdk/common/models/Size;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.Size#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final adslot_type:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final adx_ecpm:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x18
    .end annotation
.end field

.field public final alg_bid_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x14
    .end annotation
.end field

.field public final algorithm_floor:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xd
    .end annotation
.end field

.field public final api_strategy_index:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field

.field public final bidfloor:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final cached_ad_size:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x38
    .end annotation
.end field

.field public final commer_ecpm:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x17
    .end annotation
.end field

.field public final commer_ecpm_state:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x19
    .end annotation
.end field

.field public final creative_type:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final disable_mraid2:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x30
    .end annotation
.end field

.field public final ecpm_target:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x15
    .end annotation
.end field

.field public final expected_floor:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x11
    .end annotation
.end field

.field public final ext:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final latest_camp_id:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final latest_crid:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final material_type:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final media_ready_count:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x35
    .end annotation
.end field

.field public final media_request_count:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x34
    .end annotation
.end field

.field public final pre_req_time:Ljava/lang/Long;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        tag = 0x36
    .end annotation
.end field

.field public final req_interval_time:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT32"
        tag = 0x37
    .end annotation
.end field

.field public final sdk_cached_ads:Ljava/util/Map;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sdk_strategy_index:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final settlement_mode:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x13
    .end annotation
.end field

.field public final settlement_setting:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x16
    .end annotation
.end field

.field public final support_template_id:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x2e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final vid:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final video:Lcom/czhj/sdk/common/models/Video;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.Video#ADAPTER"
        tag = 0x10
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/AdSlot$ProtoAdapter_AdSlot;-><init>()V

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_BIDFLOOR:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_SDK_STRATEGY_INDEX:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_API_STRATEGY_INDEX:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_ALGORITHM_FLOOR:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_EXPECTED_FLOOR:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_SETTLEMENT_MODE:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_ALG_BID_TYPE:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_ECPM_TARGET:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_SETTLEMENT_SETTING:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_COMMER_ECPM:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_ADX_ECPM:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_COMMER_ECPM_STATE:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_AD_COUNT:Ljava/lang/Integer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_DISABLE_MRAID2:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_MEDIA_REQUEST_COUNT:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_MEDIA_READY_COUNT:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_PRE_REQ_TIME:Ljava/lang/Long;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_REQ_INTERVAL_TIME:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/AdSlot;->DEFAULT_CACHED_AD_SIZE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/czhj/sdk/common/models/Video;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/AdCache;",
            ">;",
            "Lcom/czhj/sdk/common/models/Video;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v33, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    invoke-direct/range {v0 .. v33}, Lcom/czhj/sdk/common/models/AdSlot;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/czhj/sdk/common/models/Video;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Size;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/List;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;Lcom/czhj/sdk/common/models/Video;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/Size;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/AdCache;",
            ">;",
            "Lcom/czhj/sdk/common/models/Video;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/AdSlot;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v1, p33

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    const-string p1, "adslot_type"

    invoke-static {p1, p3}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    iput-object p4, p0, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    iput-object p6, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    const-string p1, "material_type"

    invoke-static {p1, p8}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    iput-object p9, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    const-string p1, "sdk_cached_ads"

    invoke-static {p1, p11}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    const-string p1, "creative_type"

    invoke-static {p1, p12}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    iput-object p13, p0, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    const-string p1, "ext"

    move-object/from16 p2, p14

    invoke-static {p1, p2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    const-string p1, "ad_caches"

    move-object/from16 p2, p15

    invoke-static {p1, p2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    const-string p1, "support_template_id"

    move-object/from16 p2, p26

    invoke-static {p1, p2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    move-object/from16 p1, p30

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    move-object/from16 p1, p32

    iput-object p1, p0, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/czhj/sdk/common/models/AdSlot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/czhj/sdk/common/models/AdSlot;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/czhj/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Size;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Video;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_16

    :cond_16
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_17
    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_18
    add-int/2addr v0, v2

    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    :cond_19
    return v0
.end method

.method public newBuilder()Lcom/czhj/sdk/common/models/AdSlot$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    const-string v1, "adslot_type"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->bidfloor:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->vid:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_camp_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->latest_crid:Ljava/lang/String;

    const-string v1, "material_type"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->material_type:Ljava/util/List;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_strategy_index:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->api_strategy_index:Ljava/lang/Integer;

    const-string v1, "sdk_cached_ads"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->sdk_cached_ads:Ljava/util/Map;

    const-string v1, "creative_type"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->creative_type:Ljava/util/List;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->algorithm_floor:Ljava/lang/Integer;

    const-string v1, "ext"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ext:Ljava/util/Map;

    const-string v1, "ad_caches"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_caches:Ljava/util/Map;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->video:Lcom/czhj/sdk/common/models/Video;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->expected_floor:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_mode:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->alg_bid_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ecpm_target:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->settlement_setting:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->adx_ecpm:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->commer_ecpm_state:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->ad_count:Ljava/lang/Integer;

    const-string v1, "support_template_id"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->support_template_id:Ljava/util/List;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->disable_mraid2:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_request_count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->media_ready_count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->pre_req_time:Ljava/lang/Long;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->req_interval_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/AdSlot$Builder;->cached_ad_size:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/wire/Message$Builder;->addUnknownFields(Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/AdSlot;->newBuilder()Lcom/czhj/sdk/common/models/AdSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", adslot_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    if-eqz v1, :cond_1

    const-string v1, ", adslot_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_size:Lcom/czhj/sdk/common/models/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ", adslot_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adslot_type:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, ", bidfloor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->bidfloor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", latest_camp_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_camp_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", latest_crid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->latest_crid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ", material_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->material_type:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v1, ", sdk_strategy_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const-string v1, ", api_strategy_index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->api_strategy_index:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ", sdk_cached_ads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->sdk_cached_ads:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ", creative_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->creative_type:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const-string v1, ", algorithm_floor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->algorithm_floor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ext:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ", ad_caches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_caches:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    if-eqz v1, :cond_f

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->video:Lcom/czhj/sdk/common/models/Video;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    const-string v1, ", expected_floor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->expected_floor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    const-string v1, ", settlement_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_mode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const-string v1, ", alg_bid_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->alg_bid_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    const-string v1, ", ecpm_target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ecpm_target:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", settlement_setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->settlement_setting:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    const-string v1, ", commer_ecpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    const-string v1, ", adx_ecpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->adx_ecpm:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    const-string v1, ", commer_ecpm_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->commer_ecpm_state:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    if-eqz v1, :cond_18

    const-string v1, ", ad_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->ad_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, ", support_template_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->support_template_id:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    const-string v1, ", disable_mraid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->disable_mraid2:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    const-string v1, ", media_request_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_request_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1b
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    const-string v1, ", media_ready_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->media_ready_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    if-eqz v1, :cond_1d

    const-string v1, ", pre_req_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->pre_req_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1d
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    const-string v1, ", req_interval_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->req_interval_time:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1e
    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    const-string v1, ", cached_ad_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/AdSlot;->cached_ad_size:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1f
    const/4 v1, 0x2

    const-string v2, "AdSlot{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

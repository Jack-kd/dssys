.class public final Lcom/sigmob/sdk/base/models/config/SigmobCommon;
.super Lcom/czhj/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;,
        Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommon;",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/base/models/config/SigmobCommon;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/base/models/config/SigmobCommon;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

.field public static final DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_ACTIVE_EXPIRE:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_DEBUG_LEVEL:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_EXTRA_DCLOG:Ljava/lang/Boolean;

.field public static final DEFAULT_EXPIRE_MONITOR_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_FEEDBACK_DEBUG:Ljava/lang/Boolean;

.field public static final DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

.field public static final DEFAULT_LOAD_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_LOG_ENC:Ljava/lang/Boolean;

.field public static final DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

.field public static final DEFAULT_NETWORK_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_NONCOMPLIANCE_MARK:Ljava/lang/Boolean;

.field public static final DEFAULT_PRELOAD_URL:Ljava/lang/String; = ""

.field public static final DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_SNIFFING_TYPE:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.config.SigmobAntiFraudLogConfig#ADAPTER"
        tag = 0x7
    .end annotation
.end field

.field public final configRefresh:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x6
    .end annotation
.end field

.field public final dclog_blacklist:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final disable_up_location:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x10
    .end annotation
.end field

.field public final enable_active_expire:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x17
    .end annotation
.end field

.field public final enable_debug_level:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xe
    .end annotation
.end field

.field public final enable_extra_dclog:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x13
    .end annotation
.end field

.field public final endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.config.SigmobCommonEndpointsConfig#ADAPTER"
        tag = 0x1
    .end annotation
.end field

.field public final expire_monitor_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x16
    .end annotation
.end field

.field public final feedback_debug:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x12
    .end annotation
.end field

.field public final is_gdpr_region:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x8
    .end annotation
.end field

.field public final load_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xf
    .end annotation
.end field

.field public final log_enc:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x11
    .end annotation
.end field

.field public final max_send_log_records:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
    .end annotation
.end field

.field public final native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.config.SigmobNativeConfig#ADAPTER"
        tag = 0x4
    .end annotation
.end field

.field public final network_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x14
    .end annotation
.end field

.field public final noncompliance_mark:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x15
    .end annotation
.end field

.field public final preload:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.config.SigmobPreload#ADAPTER"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/config/SigmobPreload;",
            ">;"
        }
    .end annotation
.end field

.field public final preload_url:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x19
    .end annotation
.end field

.field public final rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.config.SigmobRvConfig#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final send_log_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xc
    .end annotation
.end field

.field public final sniffing_type:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x18
    .end annotation
.end field

.field public final splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.base.models.config.SigmobSplashConfig#ADAPTER"
        tag = 0x3
    .end annotation
.end field

.field public final tracking_expiration_time:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x9
    .end annotation
.end field

.field public final tracking_retry_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$ProtoAdapter_SigmobCommon;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_CONFIGREFRESH:Ljava/lang/Integer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_IS_GDPR_REGION:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_TRACKING_EXPIRATION_TIME:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_TRACKING_RETRY_INTERVAL:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_MAX_SEND_LOG_RECORDS:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_SEND_LOG_INTERVAL:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_ENABLE_DEBUG_LEVEL:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_LOAD_INTERVAL:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_DISABLE_UP_LOCATION:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_LOG_ENC:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_FEEDBACK_DEBUG:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_ENABLE_EXTRA_DCLOG:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_NETWORK_TIMEOUT:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_NONCOMPLIANCE_MARK:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_EXPIRE_MONITOR_INTERVAL:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_ENABLE_ACTIVE_EXPIRE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->DEFAULT_SNIFFING_TYPE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;",
            "Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;",
            "Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;",
            "Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/config/SigmobPreload;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v26, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

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

    invoke-direct/range {v0 .. v26}, Lcom/sigmob/sdk/base/models/config/SigmobCommon;-><init>(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/czhj/wire/okio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;",
            "Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;",
            "Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;",
            "Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;",
            "Ljava/lang/Integer;",
            "Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/config/SigmobPreload;",
            ">;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v1, p26

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    const-string p1, "dclog_blacklist"

    invoke-static {p1, p12}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    const-string p1, "preload"

    move-object/from16 p2, p25

    invoke-static {p1, p2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/czhj/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    :cond_17
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->newBuilder()Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->configRefresh:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->is_gdpr_region:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_expiration_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->tracking_retry_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->max_send_log_records:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->send_log_interval:Ljava/lang/Integer;

    const-string v1, "dclog_blacklist"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->dclog_blacklist:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_debug_level:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->load_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->disable_up_location:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->log_enc:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->feedback_debug:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_extra_dclog:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->network_timeout:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->noncompliance_mark:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->expire_monitor_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->enable_active_expire:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->sniffing_type:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload_url:Ljava/lang/String;

    const-string v1, "preload"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobCommon$Builder;->preload:Ljava/util/List;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/wire/Message$Builder;->addUnknownFields(Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    if-eqz v1, :cond_0

    const-string v1, ", endpoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->endpoints:Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    if-eqz v1, :cond_1

    const-string v1, ", rv_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->rv_config:Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    if-eqz v1, :cond_2

    const-string v1, ", splash_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->splash_config:Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    if-eqz v1, :cond_3

    const-string v1, ", native_config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->native_config:Lcom/sigmob/sdk/base/models/config/SigmobNativeConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const-string v1, ", configRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->configRefresh:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    if-eqz v1, :cond_5

    const-string v1, ", anti_fraud_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->anti_fraud_log:Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const-string v1, ", is_gdpr_region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->is_gdpr_region:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const-string v1, ", tracking_expiration_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const-string v1, ", tracking_retry_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->tracking_retry_interval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const-string v1, ", max_send_log_records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->max_send_log_records:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const-string v1, ", send_log_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->send_log_interval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ", dclog_blacklist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->dclog_blacklist:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const-string v1, ", enable_debug_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_debug_level:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const-string v1, ", load_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->load_interval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    const-string v1, ", disable_up_location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->disable_up_location:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    const-string v1, ", log_enc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->log_enc:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    const-string v1, ", feedback_debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->feedback_debug:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    const-string v1, ", enable_extra_dclog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_extra_dclog:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const-string v1, ", network_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->network_timeout:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    if-eqz v1, :cond_13

    const-string v1, ", noncompliance_mark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->noncompliance_mark:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const-string v1, ", expire_monitor_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->expire_monitor_interval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    if-eqz v1, :cond_15

    const-string v1, ", enable_active_expire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->enable_active_expire:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_15
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    const-string v1, ", sniffing_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->sniffing_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    if-eqz v1, :cond_17

    const-string v1, ", preload_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, ", preload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommon;->preload:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_18
    const/4 v1, 0x2

    const-string v2, "SigmobCommon{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

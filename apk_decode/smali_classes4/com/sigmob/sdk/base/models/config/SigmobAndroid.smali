.class public final Lcom/sigmob/sdk/base/models/config/SigmobAndroid;
.super Lcom/czhj/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;,
        Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/sigmob/sdk/base/models/config/SigmobAndroid;",
        "Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/sigmob/sdk/base/models/config/SigmobAndroid;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sigmob/sdk/base/models/config/SigmobAndroid;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APK_EXPIRED_TIME:Ljava/lang/Integer;

.field public static final DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

.field public static final DEFAULT_DISABLE_BOOT_MARK:Ljava/lang/Boolean;

.field public static final DEFAULT_DISABLE_INSTALL_MONITOR:Ljava/lang/Boolean;

.field public static final DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

.field public static final DEFAULT_ENABLE_APP_LIST:Ljava/lang/Integer;

.field public static final DEFAULT_ENABLE_OKHTTP3:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_OPEN_PKG_DIR_LIST:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_OPEN_PKG_LIST:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

.field public static final DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

.field public static final DEFAULT_LOCK_PLAY:Ljava/lang/Boolean;

.field public static final DEFAULT_OAID_API_IS_DISABLE:Ljava/lang/Boolean;

.field public static final DEFAULT_REPORT_LOG:Ljava/lang/Integer;

.field public static final DEFAULT_S2S_TOKEN_TIMEOUT:Ljava/lang/Integer;

.field public static final DEFAULT_SCREEN_KEEP:Ljava/lang/Boolean;

.field public static final DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

.field public static final DEFAULT_USE_WEB_SOURCE_CACHE:Ljava/lang/Boolean;

.field public static final DEFAULT_WEB_SOURCE_CACHE_EXPIRATION_TIME:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final apk_expired_time:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x6
    .end annotation
.end field

.field public final disableUpAppInfo:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x1
    .end annotation
.end field

.field public final disable_boot_mark:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field

.field public final disable_install_monitor:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x11
    .end annotation
.end field

.field public final disable_up_oaid:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final enable_app_list:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0xb
    .end annotation
.end field

.field public final enable_okhttp3:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xa
    .end annotation
.end field

.field public final enable_open_pkg_dir_list:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x13
    .end annotation
.end field

.field public final enable_open_pkg_list:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x12
    .end annotation
.end field

.field public final enable_permission:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x5
    .end annotation
.end field

.field public final enable_report_crash:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x7
    .end annotation
.end field

.field public final lock_play:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xc
    .end annotation
.end field

.field public final oaid_api_is_disable:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x8
    .end annotation
.end field

.field public final open_pkg_list:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final report_log:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final s2s_token_timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x14
    .end annotation
.end field

.field public final screen_keep:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xd
    .end annotation
.end field

.field public final up_wifi_list_interval:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final use_web_source_cache:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0xf
    .end annotation
.end field

.field public final web_source_cache_expiration_time:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x10
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$ProtoAdapter_SigmobAndroid;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->CREATOR:Landroid/os/Parcelable$Creator;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_DISABLEUPAPPINFO:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_REPORT_LOG:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_UP_WIFI_LIST_INTERVAL:Ljava/lang/Integer;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_DISABLE_UP_OAID:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_ENABLE_PERMISSION:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_APK_EXPIRED_TIME:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_ENABLE_REPORT_CRASH:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_OAID_API_IS_DISABLE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_DISABLE_BOOT_MARK:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_ENABLE_OKHTTP3:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_ENABLE_APP_LIST:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_LOCK_PLAY:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_SCREEN_KEEP:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_USE_WEB_SOURCE_CACHE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_WEB_SOURCE_CACHE_EXPIRATION_TIME:Ljava/lang/Integer;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_DISABLE_INSTALL_MONITOR:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_ENABLE_OPEN_PKG_LIST:Ljava/lang/Boolean;

    sput-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_ENABLE_OPEN_PKG_DIR_LIST:Ljava/lang/Boolean;

    sput-object v1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->DEFAULT_S2S_TOKEN_TIMEOUT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v21, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

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

    invoke-direct/range {v0 .. v21}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v1, p21

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    iput-object p13, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    const-string p1, "open_pkg_list"

    move-object/from16 p2, p14

    invoke-static {p1, p2}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/czhj/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

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

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :cond_12
    add-int/2addr v0, v2

    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    :cond_13
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->newBuilder()Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;
    .locals 3

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disableUpAppInfo:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->report_log:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->up_wifi_list_interval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_up_oaid:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_permission:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->apk_expired_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_report_crash:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->oaid_api_is_disable:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_boot_mark:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_okhttp3:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_app_list:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->lock_play:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->screen_keep:Ljava/lang/Boolean;

    const-string v1, "open_pkg_list"

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->open_pkg_list:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->use_web_source_cache:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->web_source_cache_expiration_time:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->disable_install_monitor:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_list:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid$Builder;->s2s_token_timeout:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/wire/Message$Builder;->addUnknownFields(Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, ", disableUpAppInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disableUpAppInfo:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, ", report_log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->report_log:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v1, ", up_wifi_list_interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->up_wifi_list_interval:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, ", disable_up_oaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_up_oaid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const-string v1, ", enable_permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_permission:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const-string v1, ", apk_expired_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->apk_expired_time:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const-string v1, ", enable_report_crash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_report_crash:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const-string v1, ", oaid_api_is_disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->oaid_api_is_disable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const-string v1, ", disable_boot_mark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_boot_mark:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    const-string v1, ", enable_okhttp3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_okhttp3:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const-string v1, ", enable_app_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_app_list:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const-string v1, ", lock_play="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->lock_play:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const-string v1, ", screen_keep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->screen_keep:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, ", open_pkg_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->open_pkg_list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    const-string v1, ", use_web_source_cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->use_web_source_cache:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    const-string v1, ", web_source_cache_expiration_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->web_source_cache_expiration_time:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    const-string v1, ", disable_install_monitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->disable_install_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    const-string v1, ", enable_open_pkg_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_list:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    const-string v1, ", enable_open_pkg_dir_list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->enable_open_pkg_dir_list:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    const-string v1, ", s2s_token_timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAndroid;->s2s_token_timeout:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v1, 0x2

    const-string v2, "SigmobAndroid{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

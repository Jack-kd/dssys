.class public final Lcom/czhj/sdk/common/models/App;
.super Lcom/czhj/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;,
        Lcom/czhj/sdk/common/models/App$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/czhj/sdk/common/models/App;",
        "Lcom/czhj/sdk/common/models/App$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/czhj/sdk/common/models/App;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/czhj/sdk/common/models/App;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APP_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_APP_PACKAGE:Ljava/lang/String; = ""

.field public static final DEFAULT_APP_SHA256:Ljava/lang/String; = ""

.field public static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_IDFV:Ljava/lang/String; = ""

.field public static final DEFAULT_INSTALL_TIME:Ljava/lang/Long;

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_ORIENTATION:Ljava/lang/Integer;

.field public static final DEFAULT_PRODUCT_ID:Ljava/lang/String; = ""

.field public static final DEFAULT_SUPPORT_HTTP:Ljava/lang/Boolean;

.field public static final DEFAULT_SUPPORT_SK_VERSION:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final ad_network_ids:Ljava/util/List;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;
        tag = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final app_id:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x1
    .end annotation
.end field

.field public final app_package:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x3
    .end annotation
.end field

.field public final app_sha256:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x15
    .end annotation
.end field

.field public final app_version:Lcom/czhj/sdk/common/models/Version;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.Version#ADAPTER"
        tag = 0x2
    .end annotation
.end field

.field public final channel_id:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x7
    .end annotation
.end field

.field public final idfv:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x6
    .end annotation
.end field

.field public final install_time:Ljava/lang/Long;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        tag = 0xf
    .end annotation
.end field

.field public final mraid1_version:Lcom/czhj/sdk/common/models/Version;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.Version#ADAPTER"
        tag = 0x11
    .end annotation
.end field

.field public final mraid2_version:Lcom/czhj/sdk/common/models/Version;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.Version#ADAPTER"
        tag = 0x12
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x5
    .end annotation
.end field

.field public final orientation:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x4
    .end annotation
.end field

.field public final permission:Lcom/czhj/sdk/common/models/Permission;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.sigmob.sdk.common.models.Permission#ADAPTER"
        tag = 0x13
    .end annotation
.end field

.field public final product_id:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0x8
    .end annotation
.end field

.field public final sdk_ext_cap:Ljava/util/List;
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

.field public final support_http:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field

.field public final support_sk_version:Ljava/lang/String;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        tag = 0xb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/App$ProtoAdapter_App;-><init>()V

    sput-object v0, Lcom/czhj/sdk/common/models/App;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/App;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/App;->DEFAULT_ORIENTATION:Ljava/lang/Integer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/App;->DEFAULT_SUPPORT_HTTP:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/App;->DEFAULT_INSTALL_TIME:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Permission;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/Version;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/czhj/sdk/common/models/Version;",
            "Lcom/czhj/sdk/common/models/Version;",
            "Lcom/czhj/sdk/common/models/Permission;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v18, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

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

    invoke-direct/range {v0 .. v18}, Lcom/czhj/sdk/common/models/App;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Permission;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Permission;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/czhj/sdk/common/models/Version;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/czhj/sdk/common/models/Version;",
            "Lcom/czhj/sdk/common/models/Version;",
            "Lcom/czhj/sdk/common/models/Permission;",
            "Ljava/lang/String;",
            "Lcom/czhj/wire/okio/ByteString;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/App;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    move-object/from16 v1, p18

    invoke-direct {p0, v0, v1}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    iput-object p3, p0, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    iput-object p4, p0, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    iput-object p7, p0, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    iput-object p8, p0, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    iput-object p9, p0, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    const-string p1, "ad_network_ids"

    invoke-static {p1, p10}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    iput-object p11, p0, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    const-string p1, "sdk_ext_cap"

    invoke-static {p1, p12}, Lcom/czhj/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    iput-object p13, p0, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/czhj/sdk/common/models/App;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/czhj/sdk/common/models/App;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/czhj/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

    iget-object p1, p1, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

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

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Version;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Version;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Version;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/czhj/sdk/common/models/Permission;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    :cond_f
    return v0
.end method

.method public newBuilder()Lcom/czhj/sdk/common/models/App$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/App$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/App$Builder;-><init>()V

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_version:Lcom/czhj/sdk/common/models/Version;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_package:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->orientation:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->idfv:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->channel_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->product_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->support_http:Ljava/lang/Boolean;

    const-string v1, "ad_network_ids"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->ad_network_ids:Ljava/util/List;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->support_sk_version:Ljava/lang/String;

    const-string v1, "sdk_ext_cap"

    iget-object v2, p0, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/czhj/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->sdk_ext_cap:Ljava/util/List;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->install_time:Ljava/lang/Long;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->permission:Lcom/czhj/sdk/common/models/Permission;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_sha256:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/wire/Message$Builder;->addUnknownFields(Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/App;->newBuilder()Lcom/czhj/sdk/common/models/App$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v1, :cond_1

    const-string v1, ", app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", app_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_package:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->orientation:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v1, ", idfv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->idfv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", channel_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->channel_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, ", product_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->product_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const-string v1, ", support_http="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_http:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ", ad_network_ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->ad_network_ids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", support_sk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->support_sk_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ", sdk_ext_cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->sdk_ext_cap:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    if-eqz v1, :cond_c

    const-string v1, ", install_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->install_time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v1, :cond_d

    const-string v1, ", mraid1_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    if-eqz v1, :cond_e

    const-string v1, ", mraid2_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    if-eqz v1, :cond_f

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->permission:Lcom/czhj/sdk/common/models/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, ", app_sha256="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/App;->app_sha256:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const/4 v1, 0x2

    const-string v2, "App{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

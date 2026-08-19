.class public final Lcom/czhj/sdk/common/models/App$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/czhj/sdk/common/models/App;",
        "Lcom/czhj/sdk/common/models/App$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_network_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public app_id:Ljava/lang/String;

.field public app_package:Ljava/lang/String;

.field public app_sha256:Ljava/lang/String;

.field public app_version:Lcom/czhj/sdk/common/models/Version;

.field public channel_id:Ljava/lang/String;

.field public idfv:Ljava/lang/String;

.field public install_time:Ljava/lang/Long;

.field public mraid1_version:Lcom/czhj/sdk/common/models/Version;

.field public mraid2_version:Lcom/czhj/sdk/common/models/Version;

.field public name:Ljava/lang/String;

.field public orientation:Ljava/lang/Integer;

.field public permission:Lcom/czhj/sdk/common/models/Permission;

.field public product_id:Ljava/lang/String;

.field public sdk_ext_cap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public support_http:Ljava/lang/Boolean;

.field public support_sk_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/App$Builder;->ad_network_ids:Ljava/util/List;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/App$Builder;->sdk_ext_cap:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ad_network_ids(Ljava/util/List;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/czhj/sdk/common/models/App$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->ad_network_ids:Ljava/util/List;

    return-object p0
.end method

.method public app_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public app_package(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->app_package:Ljava/lang/String;

    return-object p0
.end method

.method public app_sha256(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->app_sha256:Ljava/lang/String;

    return-object p0
.end method

.method public app_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->app_version:Lcom/czhj/sdk/common/models/Version;

    return-object p0
.end method

.method public build()Lcom/czhj/sdk/common/models/App;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    new-instance v1, Lcom/czhj/sdk/common/models/App;

    iget-object v2, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_version:Lcom/czhj/sdk/common/models/Version;

    iget-object v4, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_package:Ljava/lang/String;

    iget-object v5, v0, Lcom/czhj/sdk/common/models/App$Builder;->orientation:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/czhj/sdk/common/models/App$Builder;->name:Ljava/lang/String;

    iget-object v7, v0, Lcom/czhj/sdk/common/models/App$Builder;->idfv:Ljava/lang/String;

    iget-object v8, v0, Lcom/czhj/sdk/common/models/App$Builder;->channel_id:Ljava/lang/String;

    iget-object v9, v0, Lcom/czhj/sdk/common/models/App$Builder;->product_id:Ljava/lang/String;

    iget-object v10, v0, Lcom/czhj/sdk/common/models/App$Builder;->support_http:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/czhj/sdk/common/models/App$Builder;->ad_network_ids:Ljava/util/List;

    iget-object v12, v0, Lcom/czhj/sdk/common/models/App$Builder;->support_sk_version:Ljava/lang/String;

    iget-object v13, v0, Lcom/czhj/sdk/common/models/App$Builder;->sdk_ext_cap:Ljava/util/List;

    iget-object v14, v0, Lcom/czhj/sdk/common/models/App$Builder;->install_time:Ljava/lang/Long;

    iget-object v15, v0, Lcom/czhj/sdk/common/models/App$Builder;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->permission:Lcom/czhj/sdk/common/models/Permission;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/czhj/sdk/common/models/App$Builder;->app_sha256:Ljava/lang/String;

    invoke-super {v0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v19

    move-object/from16 v20, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    invoke-direct/range {v1 .. v19}, Lcom/czhj/sdk/common/models/App;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/models/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Version;Lcom/czhj/sdk/common/models/Permission;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/App$Builder;->build()Lcom/czhj/sdk/common/models/App;

    move-result-object v0

    return-object v0
.end method

.method public channel_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->channel_id:Ljava/lang/String;

    return-object p0
.end method

.method public idfv(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->idfv:Ljava/lang/String;

    return-object p0
.end method

.method public install_time(Ljava/lang/Long;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->install_time:Ljava/lang/Long;

    return-object p0
.end method

.method public mraid1_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->mraid1_version:Lcom/czhj/sdk/common/models/Version;

    return-object p0
.end method

.method public mraid2_version(Lcom/czhj/sdk/common/models/Version;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->mraid2_version:Lcom/czhj/sdk/common/models/Version;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public orientation(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->orientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public permission(Lcom/czhj/sdk/common/models/Permission;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->permission:Lcom/czhj/sdk/common/models/Permission;

    return-object p0
.end method

.method public product_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->product_id:Ljava/lang/String;

    return-object p0
.end method

.method public sdk_ext_cap(Ljava/util/List;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/czhj/sdk/common/models/App$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->sdk_ext_cap:Ljava/util/List;

    return-object p0
.end method

.method public support_http(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->support_http:Ljava/lang/Boolean;

    return-object p0
.end method

.method public support_sk_version(Ljava/lang/String;)Lcom/czhj/sdk/common/models/App$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/App$Builder;->support_sk_version:Ljava/lang/String;

    return-object p0
.end method

.class public final Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/HeaderBidding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/czhj/sdk/common/models/HeaderBidding;",
        "Lcom/czhj/sdk/common/models/HeaderBidding$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_type:Ljava/lang/Integer;

.field public bid_token:Ljava/lang/String;

.field public channel_id:Ljava/lang/Integer;

.field public cur:Ljava/lang/String;

.field public is_pdb:Ljava/lang/Boolean;

.field public no_token_reason:Ljava/lang/Integer;

.field public options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p_id:Ljava/lang/String;

.field public pdb_priority:Ljava/lang/Integer;

.field public tag:Ljava/lang/Integer;

.field public thrmei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/czhj/sdk/common/models/HeaderBidding;->DEFAULT_CHANNEL_ID:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->cur:Ljava/lang/String;

    sget-object v1, Lcom/czhj/sdk/common/models/HeaderBidding;->DEFAULT_AD_TYPE:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->ad_type:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->thrmei:Ljava/lang/String;

    sget-object v0, Lcom/czhj/sdk/common/models/HeaderBidding;->DEFAULT_TAG:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->tag:Ljava/lang/Integer;

    sget-object v0, Lcom/czhj/sdk/common/models/HeaderBidding;->DEFAULT_IS_PDB:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->is_pdb:Ljava/lang/Boolean;

    sget-object v0, Lcom/czhj/sdk/common/models/HeaderBidding;->DEFAULT_PDB_PRIORITY:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->pdb_priority:Ljava/lang/Integer;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->options:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public ad_type(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->ad_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public bid_token(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->bid_token:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/czhj/sdk/common/models/HeaderBidding;
    .locals 13

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/HeaderBidding;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->bid_token:Ljava/lang/String;

    iget-object v2, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->options:Ljava/util/Map;

    iget-object v4, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->cur:Ljava/lang/String;

    iget-object v6, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->ad_type:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->thrmei:Ljava/lang/String;

    iget-object v8, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->tag:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->is_pdb:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->pdb_priority:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->no_token_reason:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/czhj/sdk/common/models/HeaderBidding;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->build()Lcom/czhj/sdk/common/models/HeaderBidding;

    move-result-object v0

    return-object v0
.end method

.method public channel_id(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->channel_id:Ljava/lang/Integer;

    return-object p0
.end method

.method public cur(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->cur:Ljava/lang/String;

    return-object p0
.end method

.method public is_pdb(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->is_pdb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public no_token_reason(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->no_token_reason:Ljava/lang/Integer;

    return-object p0
.end method

.method public options(Ljava/util/Map;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/czhj/sdk/common/models/HeaderBidding$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->options:Ljava/util/Map;

    return-object p0
.end method

.method public p_id(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->p_id:Ljava/lang/String;

    return-object p0
.end method

.method public pdb_priority(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->pdb_priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public tag(Ljava/lang/Integer;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->tag:Ljava/lang/Integer;

    return-object p0
.end method

.method public thrmei(Ljava/lang/String;)Lcom/czhj/sdk/common/models/HeaderBidding$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/HeaderBidding$Builder;->thrmei:Ljava/lang/String;

    return-object p0
.end method

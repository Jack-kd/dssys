.class public final Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;",
        "Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_expire_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public frequency_control_count:Ljava/lang/Integer;

.field public frequency_control_event:Ljava/lang/String;

.field public strategy_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->strategy_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->frequency_control_event:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;->DEFAULT_FREQUENCY_CONTROL_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->frequency_control_count:Ljava/lang/Integer;

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->ad_expire_type:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ad_expire_type(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->ad_expire_type:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;
    .locals 6

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->strategy_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->frequency_control_event:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->frequency_control_count:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->ad_expire_type:Ljava/util/List;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public frequency_control_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->frequency_control_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public frequency_control_event(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->frequency_control_event:Ljava/lang/String;

    return-object p0
.end method

.method public strategy_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/FrequencyControl$Builder;->strategy_id:Ljava/lang/String;

    return-object p0
.end method

.class public final Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;",
        "Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/czhj/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;
    .locals 4

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;->events:Ljava/util/List;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig;-><init>(Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;Ljava/util/List;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public events(Ljava/util/List;)Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/czhj/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;->events:Ljava/util/List;

    return-object p0
.end method

.method public motion_config(Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;)Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobAntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/base/models/config/SigmobMotionConfig;

    return-object p0
.end method

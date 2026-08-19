.class public final Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/Widget;",
        "Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public enable_developer_render:Ljava/lang/Boolean;

.field public widget_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/Widget;->DEFAULT_WIDGET_ID:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;->widget_id:Ljava/lang/Long;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/Widget;->DEFAULT_ENABLE_DEVELOPER_RENDER:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;->enable_developer_render:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Widget;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/Widget;
    .locals 4

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/Widget;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;->widget_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;->enable_developer_render:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/rtb/Widget;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public enable_developer_render(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;->enable_developer_render:Ljava/lang/Boolean;

    return-object p0
.end method

.method public widget_id(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/Widget$Builder;->widget_id:Ljava/lang/Long;

    return-object p0
.end method

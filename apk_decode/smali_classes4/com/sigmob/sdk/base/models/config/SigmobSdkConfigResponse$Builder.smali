.class public final Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;",
        "Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;

.field public config:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

.field public error_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;
    .locals 5

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;->config:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public code(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;->code:Ljava/lang/Integer;

    return-object p0
.end method

.method public config(Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;->config:Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    return-object p0
.end method

.method public error_message(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfigResponse$Builder;->error_message:Ljava/lang/String;

    return-object p0
.end method

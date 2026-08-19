.class public final Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;",
        "Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public sigmobAndroid_config:Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

.field public sigmobCommon_config:Lcom/sigmob/sdk/base/models/config/SigmobCommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public android_config(Lcom/sigmob/sdk/base/models/config/SigmobAndroid;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->sigmobAndroid_config:Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;
    .locals 4

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->sigmobCommon_config:Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->sigmobAndroid_config:Lcom/sigmob/sdk/base/models/config/SigmobAndroid;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig;-><init>(Lcom/sigmob/sdk/base/models/config/SigmobCommon;Lcom/sigmob/sdk/base/models/config/SigmobAndroid;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public common_config(Lcom/sigmob/sdk/base/models/config/SigmobCommon;)Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSdkConfig$Builder;->sigmobCommon_config:Lcom/sigmob/sdk/base/models/config/SigmobCommon;

    return-object p0
.end method

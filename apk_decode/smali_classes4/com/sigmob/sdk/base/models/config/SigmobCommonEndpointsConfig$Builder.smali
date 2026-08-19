.class public final Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;",
        "Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ads:Ljava/lang/String;

.field public config:Ljava/lang/String;

.field public feedback:Ljava/lang/String;

.field public hb_ads:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public native_ad:Ljava/lang/String;

.field public saas_ads:Ljava/lang/String;

.field public saas_hb_ads:Ljava/lang/String;

.field public saas_native_ad:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->ads:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;
    .locals 11

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->ads:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->hb_ads:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->feedback:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->config:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->native_ad:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_ads:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_hb_ads:Ljava/lang/String;

    iget-object v9, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_native_ad:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public config(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->config:Ljava/lang/String;

    return-object p0
.end method

.method public feedback(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->feedback:Ljava/lang/String;

    return-object p0
.end method

.method public hb_ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->hb_ads:Ljava/lang/String;

    return-object p0
.end method

.method public log(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    return-object p0
.end method

.method public native_ad(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->native_ad:Ljava/lang/String;

    return-object p0
.end method

.method public saas_ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_ads:Ljava/lang/String;

    return-object p0
.end method

.method public saas_hb_ads(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_hb_ads:Ljava/lang/String;

    return-object p0
.end method

.method public saas_native_ad(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobCommonEndpointsConfig$Builder;->saas_native_ad:Ljava/lang/String;

    return-object p0
.end method

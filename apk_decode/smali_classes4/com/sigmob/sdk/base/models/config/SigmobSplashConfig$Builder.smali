.class public final Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;",
        "Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public cacheTop:Ljava/lang/Integer;

.field public material_expired_time:Ljava/lang/Integer;


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
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;
    .locals 4

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;->cacheTop:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;->material_expired_time:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;->cacheTop:Ljava/lang/Integer;

    return-object p0
.end method

.method public material_expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobSplashConfig$Builder;->material_expired_time:Ljava/lang/Integer;

    return-object p0
.end method

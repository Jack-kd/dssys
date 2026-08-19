.class public final Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobPreload;",
        "Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public p_id:Ljava/lang/String;

.field public p_md5:Ljava/lang/String;


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
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobPreload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobPreload;
    .locals 4

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobPreload;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;->p_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;->p_md5:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/config/SigmobPreload;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public p_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;->p_id:Ljava/lang/String;

    return-object p0
.end method

.method public p_md5(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobPreload$Builder;->p_md5:Ljava/lang/String;

    return-object p0
.end method

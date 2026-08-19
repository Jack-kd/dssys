.class public final Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;",
        "Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ad_load_timeout:Ljava/lang/Integer;

.field public cacheTop:Ljava/lang/Integer;

.field public close_dialog_setting:Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public ad_load_timeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->ad_load_timeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;
    .locals 5

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->cacheTop:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->ad_load_timeout:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->cacheTop:Ljava/lang/Integer;

    return-object p0
.end method

.method public close_dialog_setting(Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;)Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobRvConfig$Builder;->close_dialog_setting:Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;

    return-object p0
.end method

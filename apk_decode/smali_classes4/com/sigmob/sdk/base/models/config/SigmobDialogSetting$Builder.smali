.class public final Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;",
        "Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public body_text:Ljava/lang/String;

.field public cancel_button_text:Ljava/lang/String;

.field public close_button_text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public body_text(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->body_text:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->build()Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;
    .locals 6

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->body_text:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->cancel_button_text:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->close_button_text:Ljava/lang/String;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public cancel_button_text(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->cancel_button_text:Ljava/lang/String;

    return-object p0
.end method

.method public close_button_text(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->close_button_text:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/config/SigmobDialogSetting$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

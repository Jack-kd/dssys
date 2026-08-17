.class public final Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/LinkAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/LinkAction;",
        "Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public redirect_count:Ljava/lang/Integer;

.field public scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/LinkAction;->DEFAULT_REDIRECT_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->redirect_count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/LinkAction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/LinkAction;
    .locals 5

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/LinkAction;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->scheme:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->host:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->redirect_count:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/models/rtb/LinkAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public host(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->host:Ljava/lang/String;

    return-object p0
.end method

.method public redirect_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->redirect_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/LinkAction$Builder;->scheme:Ljava/lang/String;

    return-object p0
.end method

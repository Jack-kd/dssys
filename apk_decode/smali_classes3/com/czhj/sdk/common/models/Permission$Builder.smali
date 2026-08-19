.class public final Lcom/czhj/sdk/common/models/Permission$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/models/Permission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/czhj/sdk/common/models/Permission;",
        "Lcom/czhj/sdk/common/models/Permission$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public accelerometer:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public accelerometer(Ljava/lang/Boolean;)Lcom/czhj/sdk/common/models/Permission$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/models/Permission$Builder;->accelerometer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public build()Lcom/czhj/sdk/common/models/Permission;
    .locals 3

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/Permission;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Permission$Builder;->accelerometer:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/czhj/sdk/common/models/Permission;-><init>(Ljava/lang/Boolean;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/Permission$Builder;->build()Lcom/czhj/sdk/common/models/Permission;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart;",
        "Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public is_extension:Ljava/lang/Boolean;

.field public name_part:Ljava/lang/String;


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
    invoke-virtual {p0}, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->build()Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->name_part:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart;

    iget-object v1, p0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->name_part:Ljava/lang/String;

    iget-object v2, p0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    const-string v2, "is_extension"

    const-string v3, "name_part"

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public is_extension(Ljava/lang/Boolean;)Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->is_extension:Ljava/lang/Boolean;

    return-object p0
.end method

.method public name_part(Ljava/lang/String;)Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;
    .locals 0

    iput-object p1, p0, Lcom/czhj/wire/protobuf/UninterpretedOption$NamePart$Builder;->name_part:Ljava/lang/String;

    return-object p0
.end method

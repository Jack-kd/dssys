.class final Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode$ProtoAdapter_OptimizeMode;
.super Lcom/czhj/wire/EnumAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtoAdapter_OptimizeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/EnumAdapter<",
        "Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode;

    invoke-direct {p0, v0}, Lcom/czhj/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic fromValue(I)Lcom/czhj/wire/WireEnum;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode$ProtoAdapter_OptimizeMode;->fromValue(I)Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode;

    move-result-object p1

    return-object p1
.end method

.method public fromValue(I)Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode;->fromValue(I)Lcom/czhj/wire/protobuf/FileOptions$OptimizeMode;

    move-result-object p1

    return-object p1
.end method
